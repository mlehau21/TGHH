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
                            <th>
                                <input class="form-check-input" type="checkbox">
                            </th>


                            <th class="w-300px" style="cursor:pointer;">
                                <div class="d-flex align-items-center">
                                    <span>Title</span>

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
                                On Headline
                            </th>

                            <th class="">
                                Visibility
                            </th>

                            <th class="">
                                Featured
                            </th>

                            <th  class="" style="cursor:pointer;">
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
                                Action
                            </th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td class="align-middle">
                                <input value="38"
                                   class="form-check-input" type="checkbox">
                            </td>

                            <td class="d-flex">
                                <div class="d-flex align-items-center">



                                    <div class=" position-relative overflow-hidden">
                                        <a href="http://127.0.0.1:8000/front_web/images/default.jpg"
                                            data-lightbox="image-38">
                                            <img src="http://127.0.0.1:8000/front_web/images/default.jpg"
                                                class="float-start  width-custom">
                                        </a>
                                    </div>
                                    <div class="d-flex flex-column align-items-start">
                                        <a href="http://127.0.0.1:8000/p/5-guong-mat-dien-ao-tam-dep-nhat-miss-universe-vietnam-2023"
                                            class="mb-0 ps-2 lh-15 text-decoration-none  pe-none" target="_blank"> 5 gương
                                            mặt diễn áo tắm đẹp nhất Miss Universe Vietnam 2023 </a>
                                        <div>
                                            <span class="badge bg-light-primary   fs-7 m-1 ">
                                                Article
                                            </span>
                                            <span class="badge bg-light-primary  fs-7 m-1 ">
                                                Việt Nam
                                            </span>
                                            <span class="badge bg-light-primary  fs-7 m-1 ">
                                                <svg class="svg-inline--fa fa-language" aria-hidden="true" focusable="false"
                                                    data-prefix="fas" data-icon="language" role="img"
                                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 640 512"
                                                    data-fa-i2svg="">
                                                    <path fill="currentColor"
                                                        d="M448 164C459 164 468 172.1 468 184V188H528C539 188 548 196.1 548 208C548 219 539 228 528 228H526L524.4 232.5C515.5 256.1 501.9 279.1 484.7 297.9C485.6 298.4 486.5 298.1 487.4 299.5L506.3 310.8C515.8 316.5 518.8 328.8 513.1 338.3C507.5 347.8 495.2 350.8 485.7 345.1L466.8 333.8C462.4 331.1 457.1 328.3 453.7 325.3C443.2 332.8 431.8 339.3 419.8 344.7L416.1 346.3C406 350.8 394.2 346.2 389.7 336.1C385.2 326 389.8 314.2 399.9 309.7L403.5 308.1C409.9 305.2 416.1 301.1 422 298.3L409.9 286.1C402 278.3 402 265.7 409.9 257.9C417.7 250 430.3 250 438.1 257.9L452.7 272.4L453.3 272.1C465.7 259.9 475.8 244.7 483.1 227.1H376C364.1 227.1 356 219 356 207.1C356 196.1 364.1 187.1 376 187.1H428V183.1C428 172.1 436.1 163.1 448 163.1L448 164zM160 233.2L179 276H140.1L160 233.2zM0 128C0 92.65 28.65 64 64 64H576C611.3 64 640 92.65 640 128V384C640 419.3 611.3 448 576 448H64C28.65 448 0 419.3 0 384V128zM320 384H576V128H320V384zM178.3 175.9C175.1 168.7 167.9 164 160 164C152.1 164 144.9 168.7 141.7 175.9L77.72 319.9C73.24 329.1 77.78 341.8 87.88 346.3C97.97 350.8 109.8 346.2 114.3 336.1L123.2 315.1H196.8L205.7 336.1C210.2 346.2 222 350.8 232.1 346.3C242.2 341.8 246.8 329.1 242.3 319.9L178.3 175.9z">
                                                    </path>
                                                </svg><!-- <i class="fa-solid fa-language"></i> Font Awesome fontawesome.com -->
                                                English
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </td>

                            <td style="width:100px">
                                <label
                                    class="form-check form-switch form-check-custom form-check-solid form-switch-sm d-flex justify-content-start cursor-pointer">
                                    <input type="checkbox" name="status" class="form-check-input  cursor-pointer"
                                        value="0">
                                    <span class="custom-switch-indicator"></span>
                                </label>
                            </td>

                            <td>
                                <label
                                    class="form-check form-switch form-check-custom form-check-solid form-switch-sm d-flex justify-content-start cursor-pointer">
                                    <input type="checkbox" name="status"
                                        class="form-check-input post-visibility cursor-pointer" value="0"
                                      >
                                    <span class="custom-switch-indicator"></span>
                                </label>
                            </td>

                            <td>
                                <label
                                    class="form-check form-switch form-check-custom form-check-solid form-switch-sm d-flex justify-content-start cursor-pointer">
                                    <input type="checkbox" name="status" class="form-check-input  cursor-pointer"
                                        value="0" >
                                    <span class="custom-switch-indicator"></span>
                                </label>
                            </td>

                            <td>
                                24th Sep, 2023
                            </td>

                            <td>
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
                                                <a href="#" class="dropdown-item px-3 py-1 text-decoration-none"
                                                   >
                                                    Add to Breaking
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="dropdown-item px-3 py-1 text-decoration-none"
                                                  >
                                                    Add to Slider
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="dropdown-item px-3 py-1 text-decoration-none"
                                                   >
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
                                            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg="">
                                            <path fill="currentColor"
                                                d="M135.2 17.69C140.6 6.848 151.7 0 163.8 0H284.2C296.3 0 307.4 6.848 312.8 17.69L320 32H416C433.7 32 448 46.33 448 64C448 81.67 433.7 96 416 96H32C14.33 96 0 81.67 0 64C0 46.33 14.33 32 32 32H128L135.2 17.69zM394.8 466.1C393.2 492.3 372.3 512 346.9 512H101.1C75.75 512 54.77 492.3 53.19 466.1L31.1 128H416L394.8 466.1z">
                                            </path>
                                        </svg><!-- <i class="fa-solid fa-trash"></i> Font Awesome fontawesome.com -->
                                    </a>
                                </div>
                            </td>
                        </tr>
                 
                    </tbody>

                </table>
            </div>
        </div>
    </div>
@endsection
{{-- @section('page_js') --}}
{{--    <script src="{{mix('assets/js/add_post/create_edit.js')}}"></script> --}}
{{-- @endsection --}}
