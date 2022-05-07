<?php

namespace App\Http\Controllers;

use App\Cart;
use App\Product;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $products = Product::all();

        return view('products.index', compact('products'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Product $product
     * @return Response
     */
    public function update(Request $request, Product $product)
    {
        $cart = new Cart(session()->get('cart'));
        $cart->updateQty($product->id, $request->qty);
        session()->put('cart', $cart);
        toast('Product updated successfully', 'success');
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Product $product
     * @return Response
     */
    public function destroy(Product $product)
    {
        $cart = new Cart(session()->get('cart'));
        $cart->remove($product->id);
        if ($cart->totalQty <= 0) {
            session()->forget('cart');
        } else {
            session()->put('cart', $cart);
        }
        toast('Product removed successfully', 'success');
        return redirect()->back();
    }

    public function addToCart(Product $product)
    {
        if (session()->has('cart')) {
            $cart = new Cart(session()->get('cart'));
        } else {
            $cart = new Cart();
        }
        $cart->add($product);
        session()->put('cart', $cart);
        toast('Product added successfully', 'success');
        return redirect()->back();
    }

    public function shoppingCart()
    {
        if (session()->has('cart')) {
            $cart = new Cart(session()->get('cart'));
        } else {
            $cart = null;
        }

        return view('carts.show', compact('cart'));
    }

    public function checkout($amount)
    {
        return view('carts.checkout', compact('amount'));
    }

    public function charge(Request $request)
    {
        $charge = Stripe::charges()->create([
            'currency' => 'USD',
            'source' => $request->stripeToken,
            'amount' => $request->amount,
            'description' => 'test payment from laravel project',
        ]);

        $chargeId = $charge['id'];

        if ($chargeId) {
            // save data in orders table
            auth()->user()->orders()->create(['data' => serialize(session()->get('cart'))]);
            session()->forget('cart');
            toast('Payment was done successfully', 'success');
            return redirect()->route('store');
        } else {
            return redirect()->back();
        }
    }
}
