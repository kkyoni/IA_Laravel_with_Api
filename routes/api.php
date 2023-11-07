<?php

use Illuminate\Http\Request;
use App\Http\Controllers\Api\CommonController;
use App\Http\Controllers\Api\User\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::namespace('Api\User')->group(function () {
    Route::group(['middleware' => ['cors']], function () {
        Route::post('login', [UserController::class, 'login']);
        Route::post('register', [UserController::class, 'register']);
    });

    /*------------- JWT TOKEN AUTHORIZED ROUTE-------------------*/
    Route::group(['middleware' => ['cors', 'jwt.verify']], function () {
        Route::get('getProfile', [UserController::class, 'getProfile']);
        Route::post('updateProfile', [UserController::class, 'updateProfile']);
        Route::post('changePassword', [UserController::class, 'changePassword']);
        Route::post('logout', [UserController::class, 'logout']);
    });
    /*-------------Without JWT TOKEN AUTHORIZED ROUTE-------------------*/
});

/*
    |--------------------------------------------------------------------------
    | COMMON API Routes
    |--------------------------------------------------------------------------
    |
    */
Route::namespace('Api')->group(function () {
    Route::group(['middleware' => ['cors', 'jwt.verify']], function () {
    });
    Route::post('forgotPassword', [CommonController::class, 'forgotPassword']);
});
