@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="mb-5">
                <h3>Your Orders</h3>
            </div>

            <div class="col-md-12">
                @if(count($carts) > 0)
                    @foreach($carts as $cart)
                        <div class="card mb-2">
                            <div class="card-body">
                                <table class="table table-striped">
                                    <thead>
                                    <tr>
                                        <th scope="col">Title</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($cart->items as $item)
                                        <tr>
                                            <th scope="row">{{ $item['title'] }}</th>
                                            <td>{{ $item['price'] }}</td>
                                            <td>{{ $item['qty'] }}</td>
                                            <td>Paid</td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <p class="badge badge-pill badge-info mb-3 p-3 text-white">
                            Total Price : $ {{ $cart->totalPrice }}</p>
                    @endforeach
                @else
                    <div class="alert alert-warning text-center">
                        <strong>There are no orders at this time</strong>
                    </div>
                @endif
            </div>

        </div>
    </div>
@endsection
