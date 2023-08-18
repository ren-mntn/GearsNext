<?php

namespace App\Services;

use App\Models\Layout;
use App\Contracts\ItemRepositoryInterface;
use App\Contracts\LayoutRepositoryInterface;


/**
 * 商品に関するサービスクラス
 * @package App\Services
 */
class LayoutService
{
    /**
     * @var LayoutRepositoryInterface
     */
    protected $layoutRepository;

    /**
     * @var ItemRepositoryInterface
     */
    protected $itemRepository;

    public function __construct(
        LayoutRepositoryInterface $layoutRepository,
        ItemRepositoryInterface $itemRepository

    ) {
        $this->layoutRepository = $layoutRepository;
        $this->itemRepository = $itemRepository;
    }

    /**
     * ユーザーの登録したレイアウトを取得
     * @param int $userId
     * @return \Illuminate\Database\Eloquent\Collection
     */
    public function getLayouts(int $userId): \Illuminate\Database\Eloquent\Collection
    {
        $layouts = $this->layoutRepository->getLayouts($userId);
        return $layouts;
    }

    /**
     * レイアウトを登録
     * @param array $data
     * @param int $userId
     * @return void
     */
    public function createLayout(array $data, int $userId,): void
    {
        $this->itemRepository->checkItemsExists($data['itemIds']);
        $layout = $this->layoutRepository->createLayout($data['text'], $userId);
        $this->layoutRepository->createLayoutItems($layout, $data['itemIds']);
        return;
    }

    /**
     * レイアウトの詳細を取得する
     * @param int $layoutId
     * @return Layout
     * @throws LayoutNotFoundException
     */
    public function getLayout(int $layoutId): Layout
    {
        $layout = $this->layoutRepository->getLayout($layoutId);
        return $layout;
    }

    /**
     * レイアウトを更新
     * @param  \App\Models\Layout  $layout
     * @param array $data
     * @return void
     */
    public function updateLayout(Layout $layout, array $data): void
    {
        $this->itemRepository->checkItemsExists($data['itemIds']);
        $this->layoutRepository->updateLayout($layout, $data);
        return;
    }

    /**
     * レイアウトを削除
     * @param  \App\Models\Layout  $layout
     * @return void
     */
    public function removeLayout(Layout  $layout): void
    {
        $this->layoutRepository->removeLayout($layout);
        return;
    }
}