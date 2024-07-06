<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AttributesList extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function product_attr()
    {
        return $this->belongsTo(ProductAttribute::class, 'attribute_id', 'id');
    }

}
