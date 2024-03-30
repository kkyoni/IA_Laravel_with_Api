<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class Card extends Model
{
    use Notifiable, SoftDeletes;

    public $table = 'card';
    protected $fillable = [
        'card_holder_name',
        'card_number',
        'card_type',
        'expiry_date',
        'user_id'
    ];
}
