<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ForumLike extends Model
{
    use HasFactory, SoftDeletes;

    protected $guarded = [];
    
    public function forum_like_post()
    {
        return $this->belongsTo(ForumLike::class, 'post_id');
    }
}
