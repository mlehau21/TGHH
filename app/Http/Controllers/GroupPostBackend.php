<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GroupPostBackend extends Controller
{
    public function index()
    {
        return view('post.group.group_post');
    }
}
