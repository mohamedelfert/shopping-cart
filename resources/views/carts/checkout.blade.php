@extends('layouts.app')
@push('css')
    <style>
        .StripeElement {
            box-sizing: border-box;
            height: 40px;
            padding: 10px 12px;
            border: 1px solid transparent;
            border-radius: 4px;
            background-color: white;
            box-shadow: 0 1px 3px 0 #e6ebf1;
            -webkit-transition: box-shadow 150ms ease;
            transition: box-shadow 150ms ease;
        }

        .StripeElement--focus {
            box-shadow: 0 1px 3px 0 #cfd7df;
        }

        .StripeElement--invalid {
            border-color: #fa755a;
        }

        .StripeElement--webkit-autofill {
            background-color: #fefde5 !important;
        }
    </style>

    <script src="https://www.paypal.com/sdk/js?client-id={{env('PAYPAL_SANDBOX_CLIENT_ID')}}"></script>
@endpush
@section('content')
    <div class="container">
        <div class="row">
            <div class="alert alert-warning text-center col-lg-12 col-md-12">
                Total Price Is <strong>$ {{ $amount }}</strong>
            </div>

            <div class="col-lg-6 col-md-6 mt-5">
                <form action="{{ route('cart.charge') }}" method="post" id="payment-form">
                    @csrf
                    <div>
                        <input type="hidden" name="amount" value="{{ $amount }}"/>
                        <label for="card-element">
                            Credit or Debit card
                        </label>
                        <div id="card-element">
                            <!-- A Stripe Element will be inserted here. -->
                        </div>
                        <!-- Used to display form errors. -->
                        <div id="card-errors" role="alert"></div>
                    </div>
                    <button class="btn btn-primary mt-3">Submit Payment</button>
                    <p class="alert alert-primary block d-none loading mt-3">Payment In Process! Please Wait...</p>
                </form>
            </div>

            <div class="col-lg-6 col-md-6 mt-5">
                <form action="{{ route('processPaypal') }}" method="post">
                    @csrf
                    <div>
                        <input type="hidden" name="amount" value="{{ $amount }}"/>
                        <button class="btn btn-primary mt-3">Paypal Payment</button>
                    </div>
                    <p class="alert alert-primary block d-none loading mt-3">Payment In Process! Please Wait...</p>
                </form>
            </div>
        </div>
    </div>
@endsection

@push('js')
    <script src="https://js.stripe.com/v3/"></script>
    <script>
        window.onload = function () {
            var stripe = Stripe('pk_test_51Kw8xJIJoo2rP2Y39U3CRvtlcOFxG7qM6BKaYjfAPmybUbY5v6GrvJRk519BCs7PiHmuR9fH2Xr6r722S11anJOX00M2CYVpyl');
            var elements = stripe.elements();
            var style = {
                base: {
                    color: '#32325d',
                    fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
                    fontSmoothing: 'antialiased',
                    fontSize: '16px',
                    '::placeholder': {
                        color: '#aab7c4'
                    }
                },
                invalid: {
                    color: '#fa755a',
                    iconColor: '#fa755a'
                }
            };
            var card = elements.create('card', {
                style: style
            });
            card.mount('#card-element');
            // Handle real-time validation errors from the card Element.
            card.addEventListener('change', function (event) {
                var displayError = document.getElementById('card-errors');
                if (event.error) {
                    displayError.textContent = event.error.message;
                } else {
                    displayError.textContent = '';
                }
            });
            // Handle form submission.
            var form = document.getElementById('payment-form');
            form.addEventListener('submit', function (event) {
                event.preventDefault();
                stripe.createToken(card).then(function (result) {
                    if (result.error) {
                        // Inform the user if there was an error.
                        var errorElement = document.getElementById('card-errors');
                        errorElement.textContent = result.error.message;
                    } else {
                        // Send the token to your server.
                        stripeTokenHandler(result.token);
                    }
                });
            });

            function stripeTokenHandler(token) {
                // Insert the token ID into the form so it gets submitted to the server
                var form = document.getElementById('payment-form');
                var hiddenInput = document.createElement('input');
                hiddenInput.setAttribute('type', 'hidden');
                hiddenInput.setAttribute('name', 'stripeToken');
                hiddenInput.setAttribute('value', token.id);
                form.appendChild(hiddenInput);
                // Submit the form
                $('.loading').removeClass('d-none');
                form.submit();
            }
        }
    </script>
@endpush
