<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ForumControllerFrontend extends Controller
{
    public function index()
    {
        return view('front_new.forum');
    }
}
