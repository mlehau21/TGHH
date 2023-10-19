<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ForumComment extends Model
{
    use HasFactory, SoftDeletes;

    protected $guarded = [];
    
    public function forum_comment_post()
    {
        return $this->belongsTo(ForumComment::class, 'post_id');
    }
    public function owner()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
