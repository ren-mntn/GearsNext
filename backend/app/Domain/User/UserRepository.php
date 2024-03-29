<?php

namespace App\Domain\User;

use App\Models\User;

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
     * ユーザーを登録する
     * @param  array  $registerRequest [user_name, email, password]
     * @return User
     */
    public function createUserData(array $registerData): User
    {
        return $this->model->create($registerData);
    }

    /**
     * ユーザー情報を更新する
     * @param int   $userId
     * @param array $data
     * @return void
     */
    public function updateUserData(int $userId, array $data): void
    {
        $user = $this->model->find($userId);
        $user->fill($data);
        $user->save();
    }

    /**
     * ユーザーを削除する
     * @param int $userId
     * @return void
     */
    public function deleteUserData(int $userId): void
    {
        $user = $this->model->find($userId);
        $user->delete();
    }
}
