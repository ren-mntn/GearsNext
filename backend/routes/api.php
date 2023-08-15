<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\ItemViewCountController;
use App\Http\Controllers\UserInventoryController;
use App\Http\Controllers\FavoriteItemController;

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

// ユーザー関連のルート
Route::post('users', [UserController::class, 'store']);

// アイテム関連のルート
Route::apiResource('items', ItemController::class)->only(['index', 'show', 'store']);
Route::put('/items/increment-view-count/{id}', [ItemViewCountController::class, 'update']);

// ユーザーのインベントリ関連のルート
Route::apiResource('user/inventory', UserInventoryController::class)
    ->only(['store', 'destroy', 'show']);

// ユーザーのお気に入りアイテム関連のルート
Route::apiResource('user/favorite/items', FavoriteItemController::class)
    ->only(['store', 'destroy', 'show']);
