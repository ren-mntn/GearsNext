<?php

namespace Database\Factories;

use App\Models\ColorTag;
use App\Models\Item;
use App\Models\ItemAttribute;
use App\Models\ItemTag;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * 商品に関するファクトリクラスです。
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Item>
 */
class ItemFactory extends Factory
{
    /**
     * @var string
     */
    protected $model = Item::class;

    /**
     * @return array
     */
    public function definition()
    {
        return [
            'item_name' => $this->faker->realText(10),
            'price' => $this->faker->numberBetween(100, 100000),
            'image_url' => 'https://s3-ap-northeast-1.amazonaws.com/gears-images/item/' . $this->faker->numberBetween(1, 10) . '.jpg',
            'asin' => $this->faker->unique()->bothify('???#######'),
            'open_width' => $this->faker->randomFloat(1, 10, 100),
            'open_depth' => $this->faker->randomFloat(1, 10, 100),
            'open_height' => $this->faker->randomFloat(1, 10, 100),
            'storage_width' => $this->faker->randomFloat(1, 10, 100),
            'storage_depth' => $this->faker->randomFloat(1, 10, 100),
            'storage_height' => $this->faker->randomFloat(1, 10, 100),
            'weight' => $this->faker->randomFloat(1, 0.5, 50),
            'brand_id' => \App\Models\Brand::inRandomOrder()->first()->brand_id,
            'category_id' => \App\Models\Category::inRandomOrder()->first()->category_id,
            'sub_category_id' => \App\Models\SubCategory::inRandomOrder()->first()->sub_category_id,
            'favorite_count' => $this->faker->numberBetween(0, 1000),
            'view_count' => $this->faker->numberBetween(0, 5000),
        ];
    }

    /**
     * @return \Illuminate\Database\Eloquent\Model
     */
    public function createWithRelations()
    {
        return $this->afterCreating(function (Item $item) {
            // Tagからランダムに1～3個のIDを取得
            $colorTagIds = ColorTag::inRandomOrder()->take(rand(1, 3))->pluck('color_tag_id');
            $itemTagIds = ItemTag::inRandomOrder()->take(rand(1, 3))->pluck('item_tag_id');

            // 新しく作成されたItemに対して、取得したColorTagのIDを紐付ける
            $item->colorTags()->sync($colorTagIds);
            $item->itemTags()->sync($itemTagIds);
        })->create();
        // ItemAttributeの関連付け
        // $item->itemAttributes()->createMany(ItemAttribute::factory()->count(5)->make()->toArray());
        // })->create();
    }
}
