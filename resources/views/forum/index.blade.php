@extends('layouts.app')
@section('title')
    {{ __('messages.post.posts') }}
@endsection
@section('content')
    @php $styleCss = 'style' @endphp
    <div class="container-fluid">
        <div class="d-sm-flex justify-content-between mb-3 livewire-search-box  mb-5">
            <div class="d-sm-flex align-items-center w-100 text-end">
                <div class="mb-3 mb-sm-0">
                    <form class="d-flex position-relative">
                        <div class="position-relative d-flex width-320">
                            <span
                                class="position-absolute d-flex align-items-center top-0 bottom-0 left-0 text-gray-600 ms-3">
                                <svg class="svg-inline--fa fa-magnifying-glass" aria-hidden="true" focusable="false"
                                    data-prefix="fas" data-icon="magnifying-glass" role="img"
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg="">
                                    <path fill="currentColor"
                                        d="M500.3 443.7l-119.7-119.7c27.22-40.41 40.65-90.9 33.46-144.7C401.8 87.79 326.8 13.32 235.2 1.723C99.01-15.51-15.51 99.01 1.724 235.2c11.6 91.64 86.08 166.7 177.6 178.9c53.8 7.189 104.3-6.236 144.7-33.46l119.7 119.7c15.62 15.62 40.95 15.62 56.57 0C515.9 484.7 515.9 459.3 500.3 443.7zM79.1 208c0-70.58 57.42-128 128-128s128 57.42 128 128c0 70.58-57.42 128-128 128S79.1 278.6 79.1 208z">
                                    </path>
                                </svg><!-- <i class="fa-solid fa-magnifying-glass"></i> Font Awesome fontawesome.com -->
                            </span>
                            <input placeholder="Search" type="search" class="form-control ps-8" aria-label="Search">
                        </div>
                    </form>
                </div>


                <a href="{{ url('user/forums/add-forum') }}" type="button" class="btn btn-primary mx-2 ms-auto">
                    Add Forum
                </a>
                <a href="#" type="button" class="btn btn-danger delete-post-btn d-none ">

                </a>
                <div class="ms-0 ms-md-2 mb-3 mb-md-0">
                </div>
            </div>
        </div>
        @include('flash::message')
        <div>
            <div class="overflow-y-visible">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th class="">
                                Serial
                            </th>
                            <th class="w-300px" style="cursor:pointer;">
                                <div class="d-flex align-items-center">
                                    <span>Image</span>

                                    <span class="relative d-flex align-items-center">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="ms-1" style="width:1em;height:1em;"
                                            fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M7 16V4m0 0L3 8m4-4l4 4m6 0v12m0 0l4-4m-4 4l-4-4"></path>
                                        </svg>
                                    </span>
                                </div>
                            </th>

                            <th class="">
                                Title
                            </th>

                            <th class="">
                                Created By
                            </th>

                            <th class="" style="cursor:pointer;">
                                <div class="d-flex align-items-center">
                                    <span>Created At</span>
                                    <span class="relative d-flex align-items-center">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="ms-1" style="width:1em;height:1em;"
                                            fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M7 16V4m0 0L3 8m4-4l4 4m6 0v12m0 0l4-4m-4 4l-4-4"></path>
                                        </svg>
                                    </span>
                                </div>
                            </th>

                            <th class="text-start">
                                Active Status
                            </th>

                            <th class="text-start">
                                Action
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($posts as $index => $post)
                            <tr>

                                <td style="width: 5%">
                                    {{ $index + 1 }}
                                </td>
                                <td class="d-flex">
                                     {{ count($post->forum_post_files) }} Files
                                </td>

                                <td style="width: 50%">
                                    {{ $post->title }}
                                </td>

                                <td>
                                    {{ $post->owner->first_name }} {{ $post->owner->last_name }}
                                </td>

                                <td>
                                    {{ \Carbon\Carbon::parse($post->created_time)->diffForHumans() }}
                                </td>

                                <td>
                                    <span
                                        class="badge bg-{{ $post->active_status == 1 ? 'success' : 'danger' }}">{{ $post->active_status == 1 ? 'Active' : 'Inactive' }}</span>
                                </td>
                                <td>
                                    <div class="action-btn d-flex option align-items-center">
                                        <div class="dropdown">
                                            <button class="btn btn-light btn-sm dropdown-toggle hide-arrow" type="button"
                                                id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                Options
                                            </button>
                                            <ul class="dropdown-menu min-width-220" aria-labelledby="dropdownMenuButton1"
                                                style="">
                                                @if ($post->created_by == auth()->user()->id)
                                                    <li>
                                                        <a href="{{ url('user/forum/edit/' . $post->id) }}"
                                                            class="dropdown-item posts-edit-btn px-3 py-1 text-decoration-none">
                                                            Edit
                                                        </a>
                                                    </li>
                                                @endif
                                                <li>
                                                    <a href="{{ url('user/forum/view/' . $post->id) }}"
                                                        class="dropdown-item px-3 py-1 text-decoration-none">
                                                        View
                                                    </a>
                                                </li>
                                                @can('manage_forum')
                                                    @if (!$post->active_status == 1)
                                                        <li>
                                                            <a href="{{ url('user/forum/active-status/' . $post->id . '/' . 1) }}"
                                                                class="dropdown-item px-3 py-1 text-decoration-none">
                                                                Active
                                                            </a>
                                                        </li>
                                                    @else
                                                        <li>
                                                            <a href="{{ url('user/forum/active-status/' . $post->id . '/' . 0) }}"
                                                                class="dropdown-item px-3 py-1 text-decoration-none bg-danger">
                                                                Inactive
                                                            </a>
                                                        </li>
                                                    @endif
                                                @endcan
                                            </ul>
                                        </div>
                                        <a href="{{ url('user/forum/delete/' . $post->id) }}" data-id="38"
                                            data-bs-toggle="tooltip" data-bs-placement="top" data-bs-trigger="hover"
                                            data-bs-original-title="Delete"
                                            class="btn px-2 text-danger fs-3 delete-posts-btn">
                                            <svg class="svg-inline--fa fa-trash" aria-hidden="true" focusable="false"
                                                data-prefix="fas" data-icon="trash" role="img"
                                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
                                                data-fa-i2svg="">
                                                <path fill="currentColor"
                                                    d="M135.2 17.69C140.6 6.848 151.7 0 163.8 0H284.2C296.3 0 307.4 6.848 312.8 17.69L320 32H416C433.7 32 448 46.33 448 64C448 81.67 433.7 96 416 96H32C14.33 96 0 81.67 0 64C0 46.33 14.33 32 32 32H128L135.2 17.69zM394.8 466.1C393.2 492.3 372.3 512 346.9 512H101.1C75.75 512 54.77 492.3 53.19 466.1L31.1 128H416L394.8 466.1z">
                                                </path>
                                            </svg><!-- <i class="fa-solid fa-trash"></i> Font Awesome fontawesome.com -->
                                        </a>
                                    </div>
                                </td>
                            </tr>
                        @endforeach

                    </tbody>

                </table>
                <div>
                    {{ $posts->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
@section('page_js')
@endsection
