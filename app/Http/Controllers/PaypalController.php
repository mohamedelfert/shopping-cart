<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Srmklive\PayPal\Services\PayPal as PayPalClient;

class PaypalController extends Controller
{
    public function processPaypal(Request $request)
    {
        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $paypalToken = $provider->getAccessToken();
        $response = $provider->createOrder([
            "intent" => "CAPTURE",
            "application_context" => [
                "return_url" => route('processSuccess'),
                "cancel_url" => route('processCancel'),
            ],
            "purchase_units" => [
                0 => [
                    "amount" => [
                        "currency_code" => "USD",
                        "value" => $request->amount,
                    ],
                ]
            ]
        ]);

        if (isset($response['id']) && $response['id'] != null) {
            // redirect to approve href
            foreach ($response['links'] as $links) {
                if ($links['rel'] == 'approve') {
                    return redirect()->away($links['href']);
                }
            }

            toast('Something went wrong.', 'error');
            return redirect()->route('store');
        } else {
            toast('Something went wrong.', 'error');
            return redirect()->route('store');
        }
    }

    public function processSuccess(Request $request)
    {
        $provider = new PayPalClient;
        $provider->setApiCredentials(config('paypal'));
        $provider->getAccessToken();
        $response = $provider->capturePaymentOrder($request['token']);

        if (isset($response['status']) && $response['status'] == 'COMPLETED') {
            // save data in orders table
            auth()->user()->orders()->create(['data' => serialize(session()->get('cart'))]);
            session()->forget('cart');
            toast('Transaction completed successfully with paypal.', 'success');
            return redirect()->route('store');
        } else {
            toast('Something went wrong.', 'error');
            return redirect()->route('store');
        }

    }

    public function processCancel(Request $request)
    {
        toast('You have canceled the transaction ( Payment With Paypal ). ', 'error');
        return redirect()->route('store');
    }
}
