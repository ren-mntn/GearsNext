<?php

namespace App\Repositories;

use App\Contracts\UserRepositoryInterface;
use App\Exceptions\EmailAlreadyUsedException;
use App\Exceptions\UserAlreadyRegisteredException;
use App\Models\User;
use Illuminate\Support\Facades\Log;

/**
 * ユーザーに関するリポジトリクラス
 * @mixin UserRepositoryInterface
 */
class UserRepository implements UserRepositoryInterface
{
    protected $model;

    public function __construct(User $user)
    {
        $this->model = $user;
    }

    /**
     * ユーザーが既に登録されているか確認する
     * @param string $userFirebaseId
     * @throws UserAlreadyRegisteredException ユーザーが既に登録されている場合
     */
    public function ensureUserNotExists(string $userFirebaseId): void
    {
        $user = $this->model->where('user_firebase_id', $userFirebaseId)->first();
        if ($user) {
            Log::error(
                'ユーザーが既に登録されています',
                [
                    'action' => 'ensureUserNotExists',
                    ['userFirebaseId' => $userFirebaseId]
                ]
            );
            throw new UserAlreadyRegisteredException();
        }
    }

    /**
     * メールアドレスが既に登録されているか確認する
     * @param string $email
     * @throws EmailAlreadyUsedException メールアドレスが既に登録されている場合
     */
    public function ensureEmailNotExists(string $email): void
    {
        $user = $this->model->where('email', $email)->first();
        if ($user) {
            Log::error(
                'メールアドレスが既に登録されています',
                [
                    'action' => 'ensureEmailNotExists',
                    ['email' => $email]
                ]
            );
            throw new EmailAlreadyUsedException();
        }
    }

    /**
     * ユーザーを登録する
     * @param string $userFirebaseId
     * @throws UserAlreadyRegisteredException ユーザーが既に登録されている場合
     */
    public function createUserData(string $userFirebaseId, string $name, string $email): void
    {
        $this->model->create([
            'user_firebase_id' => $userFirebaseId,
            'name' => $name,
            'email' => $email,
        ]);
    }
}