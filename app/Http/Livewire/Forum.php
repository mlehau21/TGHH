<?php

namespace App\Http\Livewire;

use App\Models\ForumPost;
use Livewire\Component;

class Forum extends Component
{
    public function getForumsProperty()
    {
        return ForumPost::with('owner')->latest()->simplePaginate(5);
    }
    public function render()
    {
        $data['posts'] = $this->forums;

        return view('livewire.forum', $data)
        ->layout('front_new.layouts.app')
        ->section('content');
    }
}
