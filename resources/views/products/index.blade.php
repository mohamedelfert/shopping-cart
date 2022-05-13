@extends('layouts.app')

@section('content')
    <div class="container">

        @if(session()->has('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{ session()->get('success') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif

        @if(session()->has('error'))
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                {{ session()->get('error') }}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        @endif


        <div class="row">
            @foreach($products as $product)
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <div class="card mb-2">
                        <img src="{{ $product->image }}" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">{{ $product->title }}</h5>
                            <p class="card-text">{{ $product->price }}</p>
                            <a href="{{ route('cartload',$product->id) }}" class="btn btn-danger">Buy</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection
