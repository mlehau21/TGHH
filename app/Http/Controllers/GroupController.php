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
        $response = FBPost::with('comment')->latest()->where('active_status', 1)->paginate(21);
        return view('front_new.group', ['posts' => $response]);
    }

    public function store()
    {

        $ENV_TOKEN = "EAAJyinuCS04BO2GtIDuGNnlZC18oE7wgOOIm6NmAcd8OZA70mYQE2K9l8PGqJNO6IX9PawUJ8TfZBJtybkuD0uP16IhOGzX6gcELXHfdmkgJ7JVAR8MFokhRZBC7MQ7CcvzT85AddGAjsVZClHWWyLI3JZBLzrHAizS8vG9xZBcwLqMSQPAd8vKaKhWgHMR9Ljkevct5ZCHrIQoaLcSWjECWZCdlVZBNxypQZDZD";
        $ENV_GROUP_ID = "223637925531254";
        $LIMIT = "1";

        $url = "https://graph.facebook.com/v18.0/{$ENV_GROUP_ID}/feed?fields=message,created_time,link,picture,attachments{media},comments.limit(3)&limit={$LIMIT}&access_token={$ENV_TOKEN}";
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        $decodeData = json_decode($response, true);
        // dd($decodeData);
        if (!isset($decodeData['error']['code'])) {
            foreach ($decodeData['data'] as $single) {
                if (isset($single['picture']) || isset($single['message'])) {
                    $facebookPost = FBPost::where('post_id', $single['id'])->first();

                    if (!isset($facebookPost)) {
                        $facebookPost = new FBPost();
                    }

                    $facebookPost->message = isset($single['message']) ? $single['message'] : '';
                    $facebookPost->created_time = Carbon::parse($single['created_time']);
                    $facebookPost->link = $single['link'];
                    $facebookPost->image = $single['attachments']['data'][0]['media']['image']['src'];
                    $facebookPost->height = $single['attachments']['data'][0]['media']['image']['height'];
                    $facebookPost->width = $single['attachments']['data'][0]['media']['image']['width'];
                    $facebookPost->post_id = $single['id'];

                    $facebookPost->save();

                    if (isset($single['comments']['data'])) {
                        foreach ($single['comments']['data'] as $comment) {
                            $commant = FBPostCommand::where('user_id',  $comment['id'])->first();

                            if (!isset($commant)) {
                                $commant = new FBPostCommand();
                            }

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
