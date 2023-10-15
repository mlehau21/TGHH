@extends('front_new.layouts.app')
@section('title')
    {{__('messages.details.group')}}
@endsection
@section('pageCss')
    <link href="{{asset('front_web/build/scss/home.css')}}" rel="stylesheet" type="text/css">
@endsection
@section('content')
    <p>abc</p>
    <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2FTheGioiHoaHauGroup%2Fposts%2Fpfbid02LF8c9UFu9sS97gwKRqugkgUDMmvEN81wQRfEWfkxu9E4V3ycTNvj9qc3TAgmZFFpl&show_text=true&width=500" width="500" height="718" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
@endsection
