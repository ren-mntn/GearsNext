<?php

namespace App\Repositories;

use App\Models\Layout;
use App\Models\TagPosition;
use App\Models\ViewLayoutHistory;
use App\Contracts\LayoutRepositoryInterface;
use App\Exceptions\LayoutNotFoundException;
use Illuminate\Database\Eloquent\Collection;

/**
 * レイアウトに関するリポジトリクラス
 * @mixin LayoutRepositoryInterface
 */
class LayoutRepository implements LayoutRepositoryInterface
{
    protected $model;

    public function __construct(Layout $layout)
    {
        $this->model = $layout;
    }

    /**
     * ユーザーが登録したレイアウトを取得する
     * @param  int $userId
     * @return Collection
     */
    public function getLayouts(int $userId): Collection
    {
        return $this->model->where('user_id', $userId)->with(['items', 'users'])->get();
    }

    /**
     * 全てのレイアウトを取得する
     * @return Collection
     */
    public function getLayoutsAll(): Collection
    {
        return $this->model->with(['items', 'users'])->get();
    }

    /**
     * 指定されたIDの配列を元に関連するレイアウトデータを取得
     * @param  array $layoutIds
     * @return Collection
     */
    public function getLayoutsByIds(array $layoutIds): Collection
    {
        return $this->model->whereIn('layout_id', $layoutIds)->with(['users', 'tagPositions', 'comments'])->get();
    }

    /**
     * レイアウトを登録する
     * @param  string $text
     * @param  int $userId
     * @return Layout
     */
    public function createLayout(string $text, int $userId): Layout
    {
        return Layout::create([
            'text' => $text,
            'user_id' => $userId,
        ]);
    }

    /**
     * レイアウトに使われている商品を登録する
     * @param  Layout $layout
     * @param  array $items レイアウトに使われている商品のデータ
     * @return void
     */
    public function createLayoutItems(Layout $layout, array $items): void
    {
        foreach ($items as $itemData) {
            TagPosition::create([
                'layout_id' => $layout->layout_id,
                'item_id' => $itemData['item_id'],
                'x_position' => $itemData['x_position'],
                'y_position' => $itemData['y_position']
            ]);
            $layout->items()->attach($itemData['item_id']);
        }
    }

    /**
     * レイアウトの詳細を取得する
     * @param  Layout $layout
     * @return Layout リレーション先のデータも含めて返す
     * @throws LayoutNotFoundException
     */
    public function getLayout(Layout $layout): Layout
    {
        return Layout::where('layout_id', $layout->layout_id)
            ->with(['items', 'users', 'comments', 'tagPositions'])
            ->first();
    }

    /**
     * レイアウトの閲覧数をインクリメント
     * @param  Layout  $layout
     * @return void
     */
    public function incrementLayoutViewCount(Layout $layout): void
    {
        $layout->increment('view_count');
    }

    /**
     * レイアウトの閲覧履歴を保存する
     * すでに保存されていれば更新時間だけを更新
     * @param  Layout  $layout
     * @param  int $userId
     * @return void
     */
    public function saveViewLayoutHistory(Layout $layout, int $userId): void
    {
        ViewLayoutHistory::updateOrInsert(
            ['user_id' => $userId, 'layout_id' => $layout->layout_id],
            ['updated_at' => now()]
        );
    }
    /**
     * レイアウトを更新
     * @param  Layout  $layout
     * @param  array $data レイアウトデータ
     * @return void
     */
    public function updateLayout(Layout $layout, array $data): void
    {
        $layout->fill($data);
        $layout->save();
        $layout->items()->detach();
        TagPosition::where('layout_id', $layout->layout_id)->delete();
        $this->createLayoutItems($layout, $data['items']);
    }

    /**
     * レイアウトを削除する
     * @param  Layout  $layout
     * @return void
     */
    public function removeLayout(Layout  $layout): void
    {
        $layout->delete();
    }

    /**
     * 閲覧数が多い順にレイアウトを取得
     * @param  int $number 取得するレイアウト数
     * @return Collection
     */
    public function getTopViewedLayouts(int $number): Collection
    {
        return $this->model->with(['users'])->orderBy('view_count', 'desc')->take($number)->get();
    }

    /**
     * お気に入り数が多い順にレイアウトを取得
     * @param  int $number 取得するレイアウト数
     * @return Collection
     */
    public function getTopFavoriteLayouts(int $number): Collection
    {
        return $this->model->with(['users'])->orderBy('favorite_layout', 'desc')->take($number)->get();
    }

    /**
     * 登録日が近い順にレイアウトを取得
     * @param  int $number 取得するレイアウト数
     * @return Collection
     */
    public function getNewlyArrivedLayouts(int $number): Collection
    {
        return $this->model->with(['users'])->orderBy('created_at', 'desc')->take($number)->get();
    }
}
