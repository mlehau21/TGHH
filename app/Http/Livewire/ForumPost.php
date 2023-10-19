<?php

namespace App\Http\Livewire;

use App\Models\ForumComment;
use App\Models\ForumLike;
use Livewire\Component;
use App\Models\ForumPost as Model;
use Illuminate\Support\Facades\Auth;

class ForumPost extends Component
{
    public $comment;
    public $showCommentStatus;
    public function getForumsProperty()
    {
        return Model::with('owner', 'forum_likes', 'forum_comments')
            ->latest()
            ->simplePaginate(5);
    }

    public function commentAdd($post_id)
    {
        if (Auth::id()) {
            if ($this->comment) {
                ForumComment::create([
                    'user_id' => Auth::id(),
                    'post_id' => $post_id,
                    'message' => $this->comment,
                    'created_by' => Auth::id(),
                ]);
                $this->comment = null;
            }
        } else {
            return redirect('login');
        }
    }

    public function postLike($post_id)
    {
        if (Auth::id()) {
            ForumLike::create([
                'user_id' => Auth::id(),
                'post_id' => $post_id,
                'like_status' => 1,
                'created_by' => Auth::id(),
            ]);
        } else {
            return redirect('login');
        }
    }

    public function showComment()
    {
        if ($this->showCommentStatus == 1) {
            $this->showCommentStatus = 0;
        } else {
            $this->showCommentStatus = 1;
        }
    }

    public function render()
    {
        $data['posts'] = $this->forums;
        return view('livewire.forum-post', $data);
    }
}
