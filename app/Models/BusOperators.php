<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class BusOperators extends Model
{
    use Notifiable, SoftDeletes;

    public $table = 'bus_operators';
    protected $fillable = [
        'operators_name',
        'status'
    ];
}
