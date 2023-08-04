<?php

namespace App\Services;

use App\Contracts\ItemRepositoryInterface;
use App\Exceptions\CategoryNotFoundException;
use App\Exceptions\ItemAlreadyRegisteredException;
use App\Exceptions\ItemNotFoundException;
use App\Contracts\BrandRepositoryInterface;
use App\Contracts\CategoryRepositoryInterface;
use App\Contracts\SubCategoryRepositoryInterface;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

/**
 * 商品に関するサービスクラス
 * @package App\Services
 */
class ItemService
{
    /**
     * @var ItemRepositoryInterface
     */
    protected $itemRepository;

    /**
     * @var BrandRepositoryInterface
     */
    protected $brandRepository;

    /**
     * @var CategoryRepositoryInterface
     */
    protected $categoryRepository;

    /**
     * @var SubCategoryRepositoryInterface
     */
    protected $subCategoryRepository;


    // コンストラクタとは？
    // コンストラクタは、オブジェクト指向プログラミングにおいて、
    // クラスからオブジェクトを生成する際に自動的に呼び出される特殊なメソッドです。
    // クラスのインスタンスが作成されるときに、初期設定や値の設定などを行うために使用されます。
    public function __construct(
        ItemRepositoryInterface $itemRepository,
        BrandRepositoryInterface $brandRepository,
        CategoryRepositoryInterface $categoryRepository,
        SubCategoryRepositoryInterface $subCategoryRepository
    ) {
        $this->itemRepository = $itemRepository;
        $this->brandRepository = $brandRepository;
        $this->categoryRepository = $categoryRepository;
        $this->subCategoryRepository = $subCategoryRepository;
    }

    /**
     * 商品を登録する
     * @param  \Illuminate\Http\Request $request
     * @return void
     * @throws ItemAlreadyRegisteredException 商品が既に登録されている場合
     * @throws BrandNotFoundException ブランドが見つからない場合
     * @throws CategoryNotFoundException カテゴリーが見つからない場合
     * @throws SubCategoryNotFoundException サブカテゴリーが見つからない場合
     * @throws ItemTagNotFoundException アイテムタグが見つからない場合
     * @throws ColorTagNotFoundException カラータグが見つからない場合
     */
    public function register(Request $request): void
    {
        //TODO バリデーション
        $data = $request['itemDatas'];

        Log::info($request);

        $this->itemRepository->ensureItemNotExists($data['asin']);

        $entities = $this->ensureBrandAndCategoriesExist($data);

        $this->itemRepository->createItemData($data, $entities);
    }

    /**
     * 商品の詳細な情報を取得
     * @param  int $id
     * @throws ItemNotFoundException 商品が見つからない場合
     * @return \Illuminate\Database\Eloquent\Collection 商品の詳細を返します。
     */
    public function getItemDetails(int $id): \Illuminate\Database\Eloquent\Collection
    {
        $item = $this->itemRepository->ensureExists($id);
        $itemData = $this->itemRepository->getItemDataWithRelations($item);

        return $itemData;
    }

    /**
     * 商品を検索して返す
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Database\Eloquent\Collection 商品の詳細を返します。
     * @throws ItemNotFoundException 商品が見つからない場合
     * @throws CategoryNotFoundException カテゴリーが見つからない場合
     */
    public function getItems(Request $request): \Illuminate\Database\Eloquent\Collection
    {
        // requestにcategorynameが入っていればカテゴリーで検索
        if ($request->has('categoryname')) {
            return $this->getItemsByCategoryName($request->categoryname);
        }

        //カテゴリーが入ってなければ全件渡す
        return $this->itemRepository->getAllItemsWithRelations();
    }

    /**
     * カテゴリー名で商品を検索して返す
     * @param  string $categoryName
     * @return \Illuminate\Database\Eloquent\Collection 商品の詳細を返します。
     * @throws CategoryNotFoundException カテゴリーが見つからない場合
     * @throws ItemNotFoundException 商品が見つからない場合
     */
    private function getItemsByCategoryName($categoryName)
    {
        $category = $this->categoryRepository->findByCategoryName($categoryName);

        if (!$category) {
            Log::error(
                'カテゴリー名でカテゴリーIDを検索中にエラーが発生',
                [
                    'action' => 'findByCategoryName',
                    'categoryname' => $categoryName,
                ]
            );
            throw new CategoryNotFoundException();
        }

        return $this->itemRepository->getItemsByCategory($category->category_id);
    }

    /**
     * 商品の閲覧数をインクリメント
     * @param  int $id
     * @throws ItemNotFoundException 商品が見つからない場合
     * @return void
     */
    public function viewCountIncrement(int $id): void
    {
        $item = $this->itemRepository->ensureExists($id);
        $this->itemRepository->incrementViewCount($item);
    }

    /**
     * brand category subcategoryをそれぞれ名前で検索してインスタンスを返す
     * @param  array $data
     * @return array brand category subcategoryのインスタンスを返します。
     * @throws BrandNotFoundException ブランドが見つからない場合
     * @throws CategoryNotFoundException カテゴリーが見つからない場合
     * @throws SubCategoryNotFoundException サブカテゴリーが見つからない場合
     */
    public function ensureBrandAndCategoriesExist(array $data): array
    {
        $brand = $this->brandRepository->getBrandByNameOrThrow($data['brandName']);
        $category = $this->categoryRepository->getCategoryByNameOrThrow($data['itemCategoryName']);
        $subCategory = $this->subCategoryRepository->getSubCategoryByNameOrThrow($data['subCategoryName']);

        return ['brand' => $brand, 'category' => $category, 'subCategory' => $subCategory];
    }
}