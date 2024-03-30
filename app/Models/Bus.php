<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class Bus extends Model
{
    use Notifiable, SoftDeletes;

    public $table = 'bus';
    protected $fillable = [
        'from',
        'to',
        'bus_operators',
        'time',
        'duration',
        'Arrival',
        'price',
        'bus_type',
        'status'
    ];

    public function bustype_list()
    {
        return $this->hasOne('App\Models\BusType', 'id', 'bus_type');
    }
    public function busoperators_list()
    {
        return $this->hasOne('App\Models\BusOperators', 'id', 'bus_operators');
    }
    public function bus_confirm_details_list()
    {
        return $this->hasMany('App\Models\BusConfirm', 'bus_id', 'id');
    }
}
