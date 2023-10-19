<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\CustomerDashboardController;
use App\Http\Controllers\ForumController;
use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

Route::prefix('customer')->middleware('auth', 'xss')->group(function () {
        Route::get('/dashboard', [CustomerDashboardController::class, 'index'])->name('customer.dashboard');
        Route::resource('customer-posts', PostController::class);
        Route::post('posts/image-store', [PostController::class, 'imgUpload'])->name('customer-editor.post-image-upload');
        Route::get('post-upload-image-get', [PostController::class, 'imageGet'])->name('customer-post-upload-image-get');
        Route::post('open-ai',[PostController::class, 'openAi'])->name('customer-open_ai');
        Route::get('post/image/{id}', [PostController::class, 'imageDelete'])->name('customer-post-image.destroy');
        Route::get('post-format', [PostController::class, 'postFormat'])->name('customer.post_format');
        Route::get('post-type', [PostController::class, 'postType'])->name('customer.post_type');
        Route::get('post-comments', [CommentController::class, 'index'])->name('customer.post-comments.index');
        Route::delete('post-comments/{comment}', [CommentController::class, 'delete'])->name('customer.post-comments.destroy');
        Route::delete('post-comments/{comment}',
            [CommentController::class, 'delete'])->name('customer.post-comments.destroy');
        Route::get('customer-comment-status/{key}', [CommentController::class, 'commentStatus'])->name('customer.comment-status');
    Route::post('get-video', [PostController::class, 'getVideoByUrl'])->name('get-video-by-url');
    Route::post('posts-subcategory', [PostController::class, 'categoryFilter'])->name('posts.categoryFilter');
    Route::post('posts/language', [PostController::class, 'language'])->name('posts.language');
    Route::post('posts/category', [PostController::class, 'category'])->name('posts.category');


    //forum 
    Route::get('forums', [ForumController::class, "index"])->name('forum.index');
    Route::get('forums/add-forum', [ForumController::class, "create"])->name('forum.create');
    Route::post('forum-store', [ForumController::class, "store"])->name('forum.store');
    Route::get('forum/edit/{post_id}', [ForumController::class, "edit"]);
    Route::get('forum/view/{post_id}', [ForumController::class, "show"]);
    Route::get('forum/active-status/{post_id}/{post_status}', [ForumController::class, "activeInactive"]);
    Route::post('forum-update', [ForumController::class, "update"])->name('forum.update');
    Route::get('forum/delete/{post_id}', [ForumController::class, "delete"]);
});
