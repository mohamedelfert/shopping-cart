<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Contracts\Support\Renderable;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function store()
    {
        $latest_products = Product::latest()->take(3)->get();

        return view('store',compact('latest_products'));
    }
}
