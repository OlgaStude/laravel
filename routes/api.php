<?php

use App\Http\Controllers\Api\deskController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResources([
<<<<<<< HEAD
    'desks' => deskController::class
]);
=======
    'desks' => deskController::class,
]);

// new text;
>>>>>>> 37be5a8c9033e0a05905b9ccc979550cc9ef9c0e
