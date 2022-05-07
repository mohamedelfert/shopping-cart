@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="alert alert-warning text-center">
                Total Price Is <strong>$ {{ $amount }}</strong>
            </div>
        </div>
    </div>
@endsection
