<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class BusSeat extends Model
{
    use Notifiable, SoftDeletes;

    public $table = 'bus_seat';
    protected $fillable = [
        'bus_id',
        'seat_collection',
        'seat_numbers',
        'class',
        'price'
    ];
}
