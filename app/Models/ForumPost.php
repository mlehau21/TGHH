<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ForumPost extends Model
{
    use HasFactory, SoftDeletes;

    protected $guarded = [];

    public function forum_likes()
    {
        return $this->hasMany(ForumLike::class, 'post_id');
    }

    public function forum_comments()
    {
        return $this->hasMany(ForumComment::class, 'post_id');
    }

    public function owner()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function forum_post_files()
    {
        return $this->hasMany(ForumFiles::class, 'forum_post_id');
    }

    public function forum_post_file_single()
    {
        return $this->hasOne(ForumFiles::class, 'forum_post_id');
    }
}
