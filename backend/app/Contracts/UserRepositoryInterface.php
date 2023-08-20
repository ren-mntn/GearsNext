<?php

namespace App\Contracts;

use App\Models\User;

interface UserRepositoryInterface
{
    /**
     * ユーザーが既に登録されているか確認する
     * @param string $userFirebaseId
     * @throws UserAlreadyRegisteredException ユーザーが既に登録されている場合
     */
    public function ensureUserNotExists(string $userFirebaseId): void;

    /**
     * メールアドレスが既に登録されているか確認する
     * @param string $email
     * @throws EmailAlreadyUsedException メールアドレスが既に登録されている場合
     */
    public function ensureEmailNotExists(string $email): void;

    /**
     * ユーザーを登録する
     * @param string $userName
     * @param string $email
     * @param string $password
     * @return User
     */
    public function createUserData(string $userName, string $email, string $password): User;

    /**
     * ユーザー情報を更新する
     * @param int $userId
     * @param array $data
     * @return void
     */
    public function updateUserData($userId, $data);

    /**
     * ユーザーを削除する
     * @param int $userId
     * @return void
     */
    public function deleteUserData($userId);
}
