<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 商品に関するモデルクラスです。
 * @package App\Models
 * @property int $item_id
 * @property string $item_name 
 * @property int $price
 * @property string $asin 
 * @property float $open_width 
 * @property float $open_depth 
 * @property float $open_height 
 * @property float $storage_width 
 * @property float $storage_depth 
 * @property float $storage_height 
 * @property float $weight 
 * @property int $brand_id
 * @property int $category_id
 * @property int $sub_category_id
 * @property int $favorite_count
 * @property int $view_count
 * @property Brand $brand
 * @property Category $category
 * @property SubCategory $subCategory
 * @property \Illuminate\Support\Carbon $created_at
 * @property \Illuminate\Support\Carbon $updated_at
 */
class Item extends Model
{
    use HasFactory;

    protected $primaryKey = 'item_id';

    protected $fillable = [
        'item_name',
        'price',
        'asin',
        'image_url',
        'open_width',
        'open_depth',
        'open_height',
        'storage_width',
        'storage_depth',
        'storage_height',
        'weight',
        'brand_id',
        'category_id',
        'sub_category_id',
    ];

    protected $hidden = ['brand_id', 'category_id', 'sub_category_id'];

    public function brand()
    {
        return $this->belongsTo(Brand::class, 'brand_id');
    }

    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function subCategory()
    {
        return $this->belongsTo(SubCategory::class, 'sub_category_id');
    }

    public function itemTags()
    {
        return $this->belongsToMany(ItemTag::class, 'item_item_tag', 'item_id', 'item_tag_id');
    }

    public function colorTags()
    {
        return $this->belongsToMany(ColorTag::class, 'item_color_tag', 'item_id', 'color_tag_id');
    }

    public function itemAttributes()
    {
        return $this->hasMany(ItemAttribute::class, 'item_id');
    }

    public function favoriteItems()
    {
        return $this->hasMany(FavoriteItem::class, 'item_id');
    }

    public function layouts()
    {
        return $this->belongsToMany(Layout::class, 'item_layout', 'item_id', 'layout_id');
    }
}
