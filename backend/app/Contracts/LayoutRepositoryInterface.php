<?php

namespace App\Contracts;

use App\Models\Layout;
use Illuminate\Database\Eloquent\Collection;

interface LayoutRepositoryInterface
{
    /**
     * ユーザーが登録したレイアウトを取得する
     * @param  int $userId
     * @return Collection
     */
    public function getLayouts(int $userId): Collection;

    /**
     * 全てのレイアウトを取得する
     * @return Collection
     */
    public function getLayoutsAll(): Collection;

    /**
     * 指定されたIDの配列を元に関連するレイアウトデータを取得
     * @param  array $layoutIds
     * @return Collection
     */
    public function getLayoutsByIds(array $layoutIds): Collection;

    /**
     * レイアウトを登録する
     * @param  string $text
     * @param  int $userId
     * @return Layout
     */
    public function createLayout(string $text, array $items, int $userId): Layout;

    /**
     * レイアウトのイメージマップ座標を登録する
     * @param  Layout $layout
     * @param  array $items レイアウトに使われている商品のデータ
     * @return void
     */
    public function createLayoutPositions(Layout $layout, array $items): void;

    /**
     * レイアウトの詳細を取得する
     * @param  Layout $layout
     * @return Layout リレーション先のデータも含めて返す
     * @throws LayoutNotFoundException
     */
    public function getLayout(Layout $layout): Layout;

    /**
     * レイアウトの閲覧数をインクリメント
     * @param  Layout  $layout
     * @return void
     */
    public function incrementLayoutViewCount(Layout $layout): void;

    /**
     * レイアウトの閲覧履歴を保存する
     * @param  Layout  $layout
     * @param  int $userId
     * @return void
     */
    public function saveViewLayoutHistory(Layout $layout, int $userId): void;

    /**
     * レイアウトのお気に入り数をインクリメント
     * @param  int  $layoutId
     * @return void
     */
    public function incrementLayoutFavoriteCount(int $layoutId): void;

    /**
     * レイアウトのお気に入り数をデクリメント
     * @param  int  $layoutId
     * @return void
     */
    public function decrementLayoutFavoriteCount(int $layoutId): void;

    /**
     * レイアウトを更新する
     * @param  Layout  $layout
     * @param  array $data レイアウトデータ
     * @return void
     */
    public function updateLayout(Layout $layout, array $data): void;

    /**
     * レイアウトを削除する
     * @param  Layout  $layout
     * @return void
     */
    public function removeLayout(Layout  $layout): void;

    /**
     * 閲覧数が多い順にレイアウトを取得
     * @param  int $number 取得するレイアウト数
     * @return Collection
     */
    public function getTopViewedLayouts(int $number): Collection;

    /**
     * お気に入り数が多い順にレイアウトを取得
     * @param  int $number 取得するレイアウト数
     * @return Collection
     */
    public function getTopFavoriteLayouts(int $number): Collection;

    /**
     * 登録日が近い順にレイアウトを取得
     * @param  int $number 取得するレイアウト数
     * @return Collection
     */
    public function getNewlyArrivedLayouts(int $number): Collection;
}
