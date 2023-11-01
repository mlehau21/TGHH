<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class ForumFiles extends Model
{
    use HasFactory, SoftDeletes;

    protected $guarded = [];

    public function forum_post_file()
    {
        return $this->belongsTo(ForumPost::class, 'forum_post_id');
    }
}
