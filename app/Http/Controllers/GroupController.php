<?php

namespace App\Http\Controllers;

use App\Models\FBPost;
use App\Models\FBPostCommand;
use Carbon\Carbon;
use Illuminate\Http\Request;

class GroupController extends Controller
{
    public function index()
    {
        $url = 'https://graph.facebook.com/v18.0/2199166670415368/feed?fields=message,created_time,link,picture,attachments{media},comments.limit(3)&limit=10&access_token=' . env('FACEBOOK_ACCESS_TOKEN');
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        return view('front_new.group', ['posts' => json_decode($response)]);
    }

    public function store()
    {
        $url = 'https://graph.facebook.com/v18.0/2199166670415368/feed?fields=message,created_time,link,picture,attachments{media},comments.limit(3)&limit=10&access_token=' . env('FACEBOOK_ACCESS_TOKEN');
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        $decodeData = json_decode($response, true);

        if (!isset($decodeData->error->code)) {
            foreach ($decodeData['data'] as $single) {
                if (isset($single['picture']) || isset($single['message'])) {
                    $facebookPost = new FBPost([
                        'message' => $single['message'],
                        'created_time' => Carbon::parse($single['created_time']),
                        'link' => $single['link'],
                        'image' => $single['attachments']['data'][0]['media']['image']['src'],
                        'height' => $single['attachments']['data'][0]['media']['image']['height'],
                        'width' => $single['attachments']['data'][0]['media']['image']['width'],
                        'post_id' => $single['id'],
                    ]);
                    $facebookPost->save();

                    if (isset($single['comments']['data'])) {
                        foreach ($single['comments']['data'] as $comment) {
                            $commant = new FBPostCommand();
                            $commant->post_id = $facebookPost->id;
                            $commant->created_time = Carbon::parse($comment['created_time']);
                            $commant->comment = $comment['message'];
                            $commant->user_id = $comment['id'];
                            $commant->save();
                        }
                    }
                }
            }
            return 1;
        } else {
            return 0;
        }
    }
}
