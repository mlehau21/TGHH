<?php

namespace App\Http\Livewire;

use App\Models\ForumComment;
use Livewire\Component;

class ForumCommentComponent extends Component
{
    public $page = 1;
    public $post_id;

    public function loadMore()
    {
        $this->page++; // Increment the page number
    }

    public function render()
    {
        $data['comments'] = ForumComment::where('post_id', $this->post_id)->paginate(2, ['*'], 'page', $this->page);
        return view('livewire.forum-comment-component', $data);
    }
}
