<?php

use App\Http\Controllers\Api\v1\listController;
use App\Http\Controllers\spaController;
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

Route::get('/{any}', [spaController::class, 'index'])->where('any', '.*');

