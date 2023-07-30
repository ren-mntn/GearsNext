<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of exception types with their corresponding custom log levels.
     *
     * @var array<class-string<\Throwable>, \Psr\Log\LogLevel::*>
     */
    protected $levels = [
        //
    ];

    /**
     * A list of the exception types that are not reported.
     *
     * @var array<int, class-string<\Throwable>>
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed to the session on validation exceptions.
     *
     * @var array<int, string>
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }
    public function render($request, Throwable $exception)
    {
        // ユーザーが見つからない場合の例外をキャッチ
        if ($exception instanceof UserNotFoundException) {
            return response()->json(['message' => $exception->getMessage()], 404);
        }

        // 商品が見つからない場合の例外をキャッチ
        if ($exception instanceof ItemNotFoundException) {
            return response()->json(['message' => $exception->getMessage()], 404);
        }

        // お気に入りに商品が存在する場合の例外をキャッチ
        if ($exception instanceof ItemAlreadyFavoritedException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // お気に入りに商品が存在しない場合の例外をキャッチ
        if ($exception instanceof ItemNotFavoritedException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // 商品が既に持っている商品に存在する場合の例外をキャッチ
        if ($exception instanceof ItemAlreadyInInventoryException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // 商品が持っている商品に存在しない場合の例外をキャッチ
        if ($exception instanceof ItemNotInInventoryException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // 上記の例外以外は、デフォルトの処理を行う
        return parent::render($request, $exception);
    }
}
