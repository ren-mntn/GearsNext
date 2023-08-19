<?php

namespace App\Contracts;

use App\Models\Layout;

interface LayoutRepositoryInterface
{
    /**
     * ユーザーが登録したレイアウトを取得する
     * @param int $userId
     * @return \Illuminate\Database\Eloquent\Collection
     */
    public function getLayouts(int $userId): \Illuminate\Database\Eloquent\Collection;

    /**
     * 全てのレイアウトを取得する
     * @return \Illuminate\Database\Eloquent\Collection
     */
    public function getLayoutsAll(): \Illuminate\Database\Eloquent\Collection;

    /**
     * レイアウトを登録する
     * @param string $text
     * @param int $userId
     * @return Layout
     */
    public function createLayout(string $text, int $userId): Layout;

    /**
     * レイアウトに使われている商品を登録する
     * @param Layout $layout
     * @param array $items レイアウトに使われている商品のデータ
     * @return void
     */
    public function createLayoutItems(Layout $layout, array $items): void;

    /**
     * レイアウトの詳細を取得する
     * @param int $layoutId
     * @return Layout
     * @throws LayoutNotFoundException
     */
    public function getLayout(int $layoutId): Layout;

    /**
     * レイアウトの閲覧数をインクリメント
     * @param  \App\Models\Layout  $layout
     * @return void
     */
    public function incrementLayoutViewCount(Layout $layout): void;

    /**
     * レイアウトの閲覧履歴を保存する
     * @param  \App\Models\Layout  $layout
     * @param int $userId
     * @return void
     */
    public function saveViewLayoutHistory(Layout $layout, int $userId): void;

    /**
     * レイアウトを更新する
     * @param  \App\Models\Layout  $layout
     * @param array $data レイアウトデータ
     * @return void
     */
    public function updateLayout(Layout $layout, array $data): void;

    /**
     * レイアウトを削除する
     * @param  \App\Models\Layout  $layout
     * @return void
     */
    public function removeLayout(Layout  $layout): void;
}
