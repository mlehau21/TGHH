<?php

namespace App\Http\Livewire;

use App\Models\ForumPost;
use Livewire\Component;

class Forum extends Component
{
 
  
    public function render()
    {
        return view('livewire.forum')
            ->layout('front_new.layouts.app')
            ->section('content');
    }

}
