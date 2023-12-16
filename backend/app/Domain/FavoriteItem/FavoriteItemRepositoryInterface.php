<?php

namespace App\Domain\FavoriteItem;

use App\Models\FavoriteItem;

interface FavoriteItemRepositoryInterface
{
    /**
     * お気に入りの商品一覧を取得
     * @param  int $userId
     * @return array
     */
    public function getFavoriteItems(int $userId): array;

    /**
     * お気に入りに商品を追加
     * @param  int  $userId
     * @param  int  $itemId
     * @return FavoriteItem
     */
    public function addFavoriteItemData(int $userId, int $itemId): FavoriteItem;

    /**
     * お気に入りから商品を削除
     * @param  int  $userId
     * @param  int  $itemId
     * @return void
     * @throws ItemNotFavoritedException お気に入りに商品が存在しない場合
     */
    public function removeFavoriteItemData(int $userId, int $itemId): void;

    /**
     * ユーザーがお気に入り登録しているか確認
     * @param  int  $userId
     * @param  int  $itemId
     * @return bool
     */
    public function getUserFavoriteExists(int $userId,int $itemId): bool;
}