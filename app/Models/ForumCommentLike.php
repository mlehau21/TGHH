<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ForumCommentLike extends Model
{
    use HasFactory, SoftDeletes;

    protected $guarded = [];

    public function forum_comment()
    {
        return $this->belongsTo(ForumComment::class, 'comment_id');
    }
    public function owner()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
