<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model {

use HasFactory;
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
        return $this->hasMany(Order_Item::class); 
    }
    public function favourites() 
    { 
        return $this->hasMany(Favorite::class); 
    }
}
