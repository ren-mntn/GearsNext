<?php

namespace App\Services;

use App\Models\User;
use App\Contracts\UserRepositoryInterface;
use App\Exceptions\LoginFailedException;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;

/**
 * ユーザーに関するサービスクラス
 * @package App\Services
 */
class UserService
{
    /**
     * @var UserRepositoryInterface
     */
    protected $userRepository;

    public function __construct(
        UserRepositoryInterface $userRepository,
    ) {
        $this->userRepository = $userRepository;
    }

    /**
     * ユーザーを登録する
     * @param  array  $registerRequest [user_name, email, password]
     * @return string JWTトークン 
     */
    public function register(array $registerData): string
    {
        $registerData['password'] = $this->hashPassword($registerData['password']);
        $user = $this->userRepository->createUserData($registerData);
        return $this->createToken($user);
    }

    /**
     * パスワードをハッシュ化する
     * @param  string $password
     * @return string
     */
    private function hashPassword(string $password): string
    {
        return bcrypt($password);
    }

    /**
     * JWTトークンを発行する
     * @param  User $user
     * @return string
     */
    private function createToken(User $user): string
    {
        return JWTAuth::fromUser($user);
    }

    /**
     * ユーザーをログインさせる
     * @param  array  $loginRequest
     * @return string JWTトークン
     * @throws LoginFailedException 認証情報が無効
     */
    public function login(array $loginRequest): string
    {
        // 認証に失敗
        if (!Auth::attempt($loginRequest)) {
            throw new LoginFailedException();
        }
        return $this->createToken(Auth::user());
    }

    /**
     * ユーザー情報を変更する
     * @param  int   $userId
     * @param  array $data  [user_name, email, password]
     * @return void
     */
    public function updateUserData(int $userId, array $data): void
    {
        if (isset($data['password'])) {
            $data['password'] = $this->hashPassword($data['password']);
        }
        $this->userRepository->updateUserData($userId, $data);
    }

    /**
     * ユーザーを削除する
     * @param  int $userId
     * @return void
     */
    public function deleteUserData(int $userId): void
    {
        $this->userRepository->deleteUserData($userId);
    }
}
