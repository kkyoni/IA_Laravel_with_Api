<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class BusConfirm extends Model
{
    use Notifiable, SoftDeletes;

    public $table = 'bus_confirm';
    protected $fillable = [
        'bus_id',
        'invoice_id',
        'user_id',
        'price',
        'seat_numbers',
        'booking_start_date',
        'booking_status'
    ];

    public function bus_seat_list()
    {
        return $this->hasMany('App\Models\BusSeat', 'seat_numbers', 'seat_numbers');
    }
}
