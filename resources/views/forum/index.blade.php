@extends('layouts.app')
@section('title')
    {{ __('messages.post.posts') }}
@endsection
@section('content')
    @php $styleCss = 'style' @endphp
    <div class="container-fluid">
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
                                Message
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

                            {{-- <th class="text-start">
                                Action
                            </th> --}}
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($posts as $index=> $post)
                            <tr>
                                
                                <td style="width: 5%">
                                    {{ $index+1 }}
                                  </td>
                                <td class="d-flex">
                                    <div class="d-flex align-items-center">
                                        <div class=" position-relative overflow-hidden">
                                            <a href="{{ $post->link }}"
                                                data-lightbox="image-38">
                                                <img src="{{ $post->image }}"
                                                    class="float-start  width-custom">
                                            </a>
                                        </div>
                                        
                                    </div>
                                </td>

                                <td style="width: 50%">
                                  {{ $post->message }}
                                </td>

                                <td>
                                  {{ \Carbon\Carbon::parse($post->created_time)->diffForHumans() }}
                                </td>

                                {{-- <td>
                                    <div class="action-btn d-flex option align-items-center">
                                        <div class="dropdown">
                                            <button class="btn btn-light btn-sm dropdown-toggle hide-arrow" type="button"
                                                id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                                                Options
                                            </button>
                                            <ul class="dropdown-menu min-width-220" aria-labelledby="dropdownMenuButton1">
                                                <li>
                                                    <a href="http://127.0.0.1:8000/admin/posts/38/edit"
                                                        class="dropdown-item posts-edit-btn px-3 py-1 text-decoration-none">
                                                        Edit
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="http://127.0.0.1:8000/admin/posts/38"
                                                        class="dropdown-item px-3 py-1 text-decoration-none">
                                                        View
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#" class="dropdown-item px-3 py-1 text-decoration-none">
                                                        Add to Breaking
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" class="dropdown-item px-3 py-1 text-decoration-none">
                                                        Add to Slider
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="#" class="dropdown-item px-3 py-1 text-decoration-none">
                                                        Add to Recommended
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <a href="javascript:void(0)" data-id="38" data-bs-toggle="tooltip"
                                            data-bs-placement="top" data-bs-trigger="hover" data-bs-original-title="Delete"
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
                                </td> --}}
                            </tr>
                        @endforeach

                    </tbody>

                </table>
            </div>
        </div>
    </div>
@endsection
{{-- @section('page_js') --}}
{{--    <script src="{{mix('assets/js/add_post/create_edit.js')}}"></script> --}}
{{-- @endsection --}}
