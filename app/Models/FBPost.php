<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class FBPost extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function comment()
    {
        return $this->hasMany(FBPostCommand::class, 'post_id');
    }
}
