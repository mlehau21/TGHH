@if(Auth::user()->hasRole('customer'))
    <li class="nav-item {{ Request::is('customer/dashboard*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('customer.dashboard') }}">
            <span class="aside-menu-icon pe-3"><i class="fa-solid fa-circle-dot fs-3"></i></span>
            <span class="aside-menu-title">{!! __('messages.dashboard') !!}</span>
        </a>
    </li>
    <li class="nav-item {{ Request::is('customer/post-format*','customer/customer-posts*','customer/post-type*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page"
           href="{{ route('customer-posts.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-paste fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.post.posts') !!}</span>
        </a>
    </li>
    <li class="nav-item {{ Request::is('customer/post-comments*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page"
           href="{{ route('customer.post-comments.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-comments fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.comments') !!}</span>
        </a>
    </li>
@endif
@if(!Auth::user()->hasRole('customer'))
    <li class="nav-item {{ Request::is('admin/dashboard*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('admin.dashboard') }}">
            <span class="aside-menu-icon pe-3"><i class="fa-solid fa-circle-dot fs-3"></i></span>
            <span class="aside-menu-title">{!! __('messages.dashboard') !!}</span>
        </a>
    </li>
@endif

@can('manage_staff')
    <li class="nav-item {{ Request::is('admin/staff*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('staff.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-users fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.staffs') !!}</span>
        </a>
    </li>
@endcan

@canany(['manage_all_post'])
    <li class="nav-item {{ Request::is('admin/post-format*','admin/posts*','admin/post-type*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('posts.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-paste fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.post.posts') !!}</span>
        </a>
    </li>
    <li class="nav-item {{ Request::is('admin/fb-posts') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ url('/admin/fb-posts') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-paste fs-4"></i>
        </span>
            <span class="aside-menu-title">FB Posts</span>
        </a>
    </li>
@endcanany
@can('manage_emoji')
    <li class="nav-item {{ Request::is('admin/emoji*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('emoji.index') }}">
        <span class="aside-menu-icon pe-3">
           <i class="fa-solid fa-face-smile fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.emoji.emojis') !!}</span>
        </a>
    </li>
@endcan
@canany(['manage_gallery_image','manage_albums','manage_albums_category'])
    <li class="nav-item aside-item-collapse {{ Request::is(['admin/gallery-images*', 'admin/albums*','admin/album-categories*']) ? 'active' : '' }}">
        <a class="nav-link aside-collapse-btn d-flex align-items-center py-3"
           href="{{ route('album-categories.index') }}">
            <span class="aside-menu-icon pe-3"><i class="fas fa-images fs-4"></i></span>
            <span class="aside-menu-title">{!! __('messages.albums') !!}</span>
        </a>
    </li>
@endcanany
@can('manage_pages')
    <li class="nav-item {{ Request::is('admin/pages*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('pages.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-file fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.pages') !!}</span>
        </a>
    </li>
@endcan
{{-- @can('manage_pages') --}}
    <li class="nav-item {{ Request::is('customer/forums*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('forum.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-file fs-4"></i>
        </span>
            <span class="aside-menu-title">Forum</span>
        </a>
    </li>
{{-- @endcan --}}
@can('manage_menu')
    <li class="nav-item {{ Request::is('admin/menus*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('menus.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-bars fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.menus') !!}</span>
        </a>
    </li>
@endcan
@can('manage_rss_feeds')
<li class="nav-item {{ Request::is('admin/rss-feed*') ? 'active' : '' }}">
    <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('rss-feed.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fa fa-rss"></i>
        </span>
        <span class="aside-menu-title">  {{ __('messages.rss-feed') }}</span>
    </a>
</li>
@endcan
@can('manage_navigation')
    <li class="nav-item {{ Request::is('admin/navigation*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('navigation.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-th fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.navigation') !!}</span>
        </a>
    </li>
@endcan
@can('manage_polls')
    <li class="nav-item {{ Request::is('admin/polls*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('polls.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-list fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.polls') !!}</span>
        </a>
    </li>
@endcan
@can('manage_categories')
    <li class="nav-item {{ Request::is('admin/categories*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('categories.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-list-alt fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.categories') !!}</span>
        </a>
    </li>
@endcan
@can('manage_sub_categories')
    <li class="nav-item {{ Request::is('admin/sub-categories*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('sub-categories.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-list-alt fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.sub_categories') !!}</span>
        </a>
    </li>
@endcan
@can('manage_roles_permission')
    <li class="nav-item {{ Request::is('admin/roles*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('roles.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-key fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.roles_permissions') !!}</span>
        </a>
    </li>
@endcan
@can('manage_seo_tools')
    <li class="nav-item {{ Request::is('admin/seo-tools*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('seo-tools.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-wrench fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.seo-tools') !!}</span>
        </a>
    </li>
@endcan
@can('manage_language')
    <li class="nav-item {{ Request::is('admin/languages*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('languages.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-language fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.languages') !!}</span>
        </a>
    </li>
@endcan
@can('manage_comment')
    <li class="nav-item {{ Request::is('admin/post-comments*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('post-comments.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-comments fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.comments') !!}</span>
        </a>
    </li>
@endcan
@can('manage_ad')
<li class="nav-item {{ Request::is('admin/ad-spaces*') ? 'active' : '' }}">
    <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('ad-spaces.create') }}">
        <span class="aside-menu-icon pe-3">
<i class="fa-solid fa-rectangle-ad"></i>      </span>
        <span class="aside-menu-title">{!! __('messages.ad_space.ad_space') !!}</span>
    </a>
</li>
@endif
@can('manage_settings')
    <li class="nav-item {{ Request::is('admin/settings*') ? 'active' : '' }}">
        <a class="nav-link d-flex align-items-center py-3" aria-current="page" href="{{ route('setting.index') }}">
        <span class="aside-menu-icon pe-3">
            <i class="fas fa-cog fs-4"></i>
        </span>
            <span class="aside-menu-title">{!! __('messages.settings') !!}</span>
        </a>
    </li>
@endcan
