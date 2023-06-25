<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lists extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'desks_id'];
    public function cards(){
        return $this->hasMany(Cards::class);
    }
}
