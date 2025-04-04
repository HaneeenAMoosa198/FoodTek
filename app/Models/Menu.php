<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model {
    protected $fillable = [
        'name', 
        'price', 
        'category_id'
    ];
    public function category() 
    { 
        return $this->belongsTo(Category::class); 
    }
    public function orderItems() 
    { 
        return $this->hasMany(OrderItem::class); 
    }
    public function favourites() 
    { 
        return $this->hasMany(Favorite::class); 
    }
}
