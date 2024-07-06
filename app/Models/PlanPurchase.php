<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlanPurchase extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function plans()
    {
        return $this->belongsTo(Plan::class, 'plan_id');
    }

    public function bookAppointment()
    {
        return $this->belongsTo(BookAppointment::class, 'plan_id', 'plan_id');
    }



    public function users()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function funds()
    {
        return $this->hasMany(Fund::class);
    }

}
