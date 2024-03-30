<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class BusType extends Model
{
    use Notifiable, SoftDeletes;

    public $table = 'bus_type';
    protected $fillable = [
        'type',
        'status'
    ];
}
