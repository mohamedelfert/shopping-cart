@extends('layouts.app')
@push('css')
    <style>
        @media (min-width: 1025px) {
            .h-custom {
                height: 100vh !important;
            }
        }
        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }
        .card-registration .select-arrow {
            top: 13px;
        }
        .bg-grey {
            background-color: #eae8e8;
        }
        @media (min-width: 992px) {
            .card-registration-2 .bg-grey {
                border-top-right-radius: 16px;
                border-bottom-right-radius: 16px;
            }
        }
        @media (max-width: 991px) {
            .card-registration-2 .bg-grey {
                border-bottom-left-radius: 16px;
                border-bottom-right-radius: 16px;
            }
        }
    </style>
@endpush
@section('content')
    <div class="container">
        <section class="h-100 h-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12">
                        @if(session()->has('cart'))
                            <div class="card card-registration card-registration-2"
                                 style="border-radius: 15px;margin-bottom: 50px;">
                                <div class="card-body p-0">
                                    <div class="row g-0">
                                        <div class="col-lg-8">
                                            <div class="p-5">
                                                <div class="d-flex justify-content-between align-items-center mb-5">
                                                    <h1 class="fw-bold mb-0 text-black">Shopping Cart</h1>
                                                    <h6 class="mb-0 text-muted">{{ $cart->totalQty }} Items</h6>
                                                </div>
                                                <hr class="my-4">
                                                @foreach($cart->items as $item)
                                                    <div
                                                        class="row mb-4 d-flex justify-content-between align-items-center">
                                                        <div class="col-md-2 col-lg-2 col-xl-2">
                                                            <img src="{{ $item['image'] }}" class="img-fluid rounded-3">
                                                        </div>
                                                        <div class="col-md-3 col-lg-3 col-xl-3">
                                                            <h6 class="text-muted">{{ $item['title'] }}</h6>
                                                        </div>
                                                        <div class="col-md-4 col-lg-4 col-xl-4 d-flex">
                                                            <form action="{{ route('product.update',$item['id']) }}"
                                                                  method="post">
                                                                @csrf
                                                                @method('put')
                                                                <div class="col-md-12 col-lg-12 col-xl-12 d-flex">
                                                                    <input id="form1" min="1" max="100" name="qty"
                                                                           value="{{ $item['qty'] }}" type="number"
                                                                           class="form-control form-control-sm"/>
                                                                    <button class="btn btn-primary btn-sm ml-1"
                                                                            type="submit">
                                                                        <i class="fas fa-plus"></i>
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="col-md-2 col-lg-2 col-xl-2">
                                                            <h6 class="mb-0">{{ $item['price'] }} $</h6>
                                                        </div>
                                                        <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                                                            <form action="{{ route('product.remove',$item['id']) }}"
                                                                  method="post">
                                                                @csrf
                                                                @method('delete')
                                                                <button class="btn btn-danger" type="submit">
                                                                    <i class="fas fa-times"></i></button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                    <hr class="my-4">
                                                @endforeach
                                                <div class="pt-5">
                                                    <h6 class="mb-0"><a href="{{ route('store') }}" class="text-body">
                                                            <i class="fas fa-long-arrow-alt-left me-2"></i> Back to shop
                                                        </a>
                                                    </h6>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 bg-grey">
                                            <div class="p-5">
                                                <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
                                                <hr class="my-4">
                                                <div class="d-flex justify-content-between mb-4">
                                                    <h5 class="text-uppercase">Items</h5>
                                                    <h5>{{ $cart->totalQty }}</h5>
                                                </div>
                                                <div class="d-flex justify-content-between mb-4">
                                                    <h5 class="text-uppercase">Total price</h5>
                                                    <h5>$ {{ $cart->totalPrice }}</h5>
                                                </div>
                                                <hr class="my-4">
                                                <a href="{{ route('cart.checkout',$cart->totalPrice) }}"
                                                   class="btn btn-dark btn-block btn-lg">Checkout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @else
                            <div class="alert alert-warning text-center">
                                <strong>There are no items in the cart</strong>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </section>
    </div>
@endsection
