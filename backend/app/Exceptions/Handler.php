<?php

namespace App\Exceptions;

use Dotenv\Exception\ValidationException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;

use Illuminate\Http\Response;
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
        if ($exception instanceof ValidationException) {
            return response()->json(['message' => 'バリデーションエラーが発生しました。', 'errors' => $exception->getMessage()], 422);
        }

        // ログインに失敗した場合の例外をキャッチ
        if ($exception instanceof LoginFailedException) {
            return response()->json(['message' => $exception->getMessage()], 401);
        }

        // ユーザーが見つからない場合の例外をキャッチ
        if ($exception instanceof UserNotFoundException) {
            return response()->json(['message' => $exception->getMessage()], 404);
        }

        // ユーザー名が既に登録済みの場合の例外をキャッチ
        if ($exception instanceof UserNameAlreadyRegisteredException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // メールアドレスが既に登録済みの場合の例外をキャッチ
        if ($exception instanceof EmailAlreadyUsedException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // 認証トークンの有効期限が切れている場合の例外をキャッチ
        if ($exception instanceof TokenExpiredException) {
            return response()->json(['message' => $exception->getMessage()], 401);
        }

        // 認証トークンの更新に失敗した場合の例外をキャッチ
        if ($exception instanceof TokenRefreshFailedException) {
            return response()->json(['message' => $exception->getMessage()], 401);
        }

        // 商品が既に登録済みの場合の例外をキャッチ
        if ($exception instanceof ItemAlreadyRegisteredException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // 商品が見つからない場合の例外をキャッチ
        if ($exception instanceof ItemNotFoundException) {
            return response()->json(['message' => $exception->getMessage()], 404);
        }

        // 商品が既に持っている商品に存在する場合の例外をキャッチ
        if ($exception instanceof ItemAlreadyInInventoryException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // 商品が持っている商品に存在しない場合の例外をキャッチ
        if ($exception instanceof ItemNotInInventoryException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // お気に入りに商品が存在する場合の例外をキャッチ
        if ($exception instanceof ItemAlreadyFavoritedException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // お気に入りに商品が存在しない場合の例外をキャッチ
        if ($exception instanceof ItemNotFavoritedException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // カテゴリーが見つからない場合の例外をキャッチ
        if ($exception instanceof CategoryNotFoundException) {
            return response()->json(['message' => $exception->getMessage()], 404);
        }

        // サブカテゴリーが見つからない場合の例外をキャッチ
        if ($exception instanceof SubCategoryNotFoundException) {
            return response()->json(['message' => $exception->getMessage()], 404);
        }

        // アイテムタグが見つからない場合の例外をキャッチ
        if ($exception instanceof ItemTagNotFoundException) {
            return response()->json(['message' => $exception->getMessage()], 404);
        }

        // カラータグが見つからない場合の例外をキャッチ
        if ($exception instanceof ColorTagNotFoundException) {
            return response()->json(['message' => $exception->getMessage()], 404);
        }

        // レイアウトが見つからない場合の例外をキャッチ
        if ($exception instanceof LayoutNotFoundException) {
            return response()->json(['message' => $exception->getMessage()], 404);
        }

        // レイアウトが既にお気に入りに登録されている場合の例外をキャッチ
        if ($exception instanceof LayoutAlreadyFavoritedException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        // レイアウトがお気に入りに登録されていない場合の例外をキャッチ
        if ($exception instanceof LayoutNotFavoritedException) {
            return response()->json(['message' => $exception->getMessage()], 409);
        }

        //ルートモデルバインディングで不正なIDが指定された場合の例外をキャッチ
        if ($exception instanceof ModelNotFoundException) {
            return response()->json([
                'message' => 'Resource not found'
            ], 422);  // ここでステータスコードを422に設定
        }



        // 上記の例外以外は、デフォルトの処理を行う
        return parent::render($request, $exception);
    }

    // ユーザー認証に失敗した場合の例外をキャッチ
    protected function unauthenticated($request, AuthenticationException $exception)
    {
        return response(null, 401);
    }
}
