<?php

//use App\Http\Controllers\Api\deskController;

//use App\Http\Controllers\Api\v1\listController;

//use App\Http\Controllers\Api\v1\cardController;

//use App\Http\Controllers\Api\v1\taskController;
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
    'desks' => deskController::class,
]);

Route::apiResources([
    'lists' => listController::class,
]);

Route::apiResources([
    'cards' => cardController::class,
]);

Route::apiResources([
    'tasks' => taskController::class,
]);

// new text;
