<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class LayoutResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'layout_id' => $this->layout_id,
            'text' => $this->text,
            'user_name' => $this->user->user_name,
            'favorite_count' => $this->favorite_count,
            'view_count' => $this->view_count,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'items' => $this->items,
        ];
    }
}