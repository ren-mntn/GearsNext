<?php

namespace App\Services;

use App\Contracts\UserRepositoryInterface;
use App\Contracts\ItemRepositoryInterface;
use App\Contracts\LayoutRepositoryInterface;
use App\Contracts\FavoriteItemRepositoryInterface;
use Illuminate\Database\Eloquent\Collection;

/**
 * お気に入り商品に関するサービスクラス
 * @package App\Services
 */
class homeService
{
    /**
     * @var UserRepositoryInterface
     */
    protected $userRepository;

    /**
     * @var ItemRepositoryInterface
     */
    protected $itemRepository;

    /**
     * @var LayoutRepositoryInterface
     */
    protected $layoutRepository;

    /**
     * @var FavoriteItemRepositoryInterface
     */
    protected $favoriteItemRepository;

    public function __construct(
        UserRepositoryInterface $userRepository,
        ItemRepositoryInterface $itemRepository,
        LayoutRepositoryInterface $layoutRepository,
        FavoriteItemRepositoryInterface $favoriteItemRepository
    ) {
        $this->userRepository = $userRepository;
        $this->itemRepository = $itemRepository;
        $this->layoutRepository = $layoutRepository;
        $this->favoriteItemRepository = $favoriteItemRepository;
    }

    /**
     * ユーザーのお気に入り商品を取得
     * @param  int  $userId
     * @return Collection
     */
    public function getHomeData(int $number): array
    {
        $topViewedItems = $this->itemRepository->getTopViewedItems($number);
        $topFavoriteItems = $this->itemRepository->getTopFavoriteItems($number);
        $newlyArrivedItems  = $this->itemRepository->getNewlyArrivedItems($number);
        $topViewedILayouts = $this->layoutRepository->getTopViewedLayouts($number);
        $topFavoriteLayout = $this->layoutRepository->getTopFavoriteLayouts($number);
        $newlyArrivedLayout  = $this->layoutRepository->getNewlyArrivedLayouts($number);
        return [
            $topViewedItems, $topFavoriteItems, $newlyArrivedItems,
            $topViewedILayouts, $topFavoriteLayout, $newlyArrivedLayout
        ];
    }
}
