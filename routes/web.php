<?php

use Illuminate\Support\Facades\Route;

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', '\App\Http\Controllers\ImageController@index');
Route::post('/', '\App\Http\Controllers\ImageController@index')->name('image.index');
Route::get('/start', '\App\Http\Controllers\ImageController@start')->name('image.start');
Route::get('/game', '\App\Http\Controllers\ImageController@game')->name('image.game');
Route::post('/refresh', '\App\Http\Controllers\ImageController@refresh')->name('image.refresh');
Route::get('/end', '\App\Http\Controllers\ImageController@end')->name('image.end');
Route::get('/create', '\App\Http\Controllers\ImageController@create')->name('image.create');
Route::get('/continue', '\App\Http\Controllers\ImageController@continue')->name('image.continue');
Route::delete('/delete/{playerName}', '\App\Http\Controllers\ImageController@delete')->name('image.delete');
