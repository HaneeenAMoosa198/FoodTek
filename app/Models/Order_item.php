<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order_item extends Model {
    Use HasFactory;
    protected $table="order_items";
    protected $fillable = [
        'order_id', 
        'menu_id', 
        'quantity'
    ];
    public function order() 
    { 
        return $this->belongsTo(Order::class); 
    }
    public function menu() 
    { 
        return $this->belongsTo(Menu::class); 
    }
}