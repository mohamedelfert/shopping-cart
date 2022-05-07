<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@store');

Auth::routes();

Route::get('/store', 'ProductController@index')->name('store');

Route::get('/cartload/{product}', 'ProductController@addToCart')->name('cartload');
Route::get('/shopping-cart', 'ProductController@shoppingCart')->name('cart.show');
Route::delete('/remove/{product}', 'ProductController@destroy')->name('product.remove');
Route::put('/product/{product}', 'ProductController@update')->name('product.update');

Route::get('/checkout/{amount}', 'ProductController@checkout')->name('cart.checkout')->middleware('auth');
Route::get('/orders', 'OrderController@index')->name('orders')->middleware('auth');
Route::post('/charge', 'ProductController@charge')->name('cart.charge');
