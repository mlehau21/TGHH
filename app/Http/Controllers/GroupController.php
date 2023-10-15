<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GroupController extends Controller
{
    public function index()
    {
        // The URL of the Facebook Graph API request
        $url = "https://graph.facebook.com/v12.0/2199166670415368/feed?fields=message,created_time,link,picture,attachments{media},comments.limit(3)&limit=10&access_token=". env("FACEBOOK_ACCESS_TOKEN");

        // Initialize cURL session
        $ch = curl_init($url);

        // Set cURL options
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

        // Execute cURL session
        $response = curl_exec($ch);
        // dd(json_decode($response));
        return view('front_new.group', ['posts' => json_decode($response)]);
        // https://graph.facebook.com/v12.0/223637925531254/feed?fields=message,created_time,link,attachments{media},comments.limit(3)&limit=10&access_token=EAAJyinuCS04BO8feO5Tug3ZBKKso9dPndGMqAZBjFQ6f0JQvvCNmIFnn8OrfcVxkArXyNNjrCZBFAZC4dU0eNoWCnCWHbvDkMwha6ePV0WHHnA1gYwV7zJVatRId5FeIySo8s0yCtpfNI2rOnAZC3ebInlFaztMKn4ARMZBWoVZCZCZABkjcZBsV8qickjC5ZCFNxA1BcSJvDK36tq0ShJHILZAN76NENRxnC9EsH1ZBOzZCVCpdxpD1XVLPgjEoDNSFCVZCZC5zLekmmi4ZD
    }
}
