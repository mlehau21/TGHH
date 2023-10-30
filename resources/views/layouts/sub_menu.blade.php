    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/dashboard*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/dashboard*') ? 'active' : ''  }}"
           href="{{ route('admin.dashboard') }}">
            {{ __('messages.dashboard') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/staff*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/staff*') ? 'active' : ''  }}" href="{{ route('staff.index') }}">
            {{ __('messages.staffs') }}
        </a>
    </li>

    @can('manage_all_post')

        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/posts*', 'admin/post-format*')) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is('admin/posts*') ? 'active' : ''  }}"
               href="{{ route('posts.index') }}">
                {{ __('messages.post.posts') }}
            </a>
        </li>

        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is(['admin/posts*','admin/post-format*','admin/post-type*'])) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is(['admin/post-format*','admin/post-type*']) ? 'active' : ''  }}"
               href="{{ route('post_format') }}">
                {{ __('messages.add_post') }}
            </a>
        </li>
    @endcan
    
    @can('manage_albums_category')
        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/gallery-images*', 'admin/albums*','admin/album-categories*')) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is('admin/album-categories*') ? 'active' : ''  }}" href="{{ route('album-categories.index') }}">
                {{ __('messages.album_categories') }}
            </a>
        </li>
    @endcan

    @can('manage_gallery_image')
        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/gallery-images*', 'admin/albums*','admin/album-categories*')) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is('admin/gallery-images*') ? 'active' : ''  }}" href="{{ route('gallery-images.index') }}">
                {{ __('messages.images') }}
            </a>
        </li>
    @endcan

    @can('manage_albums')
        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/gallery-images*', 'admin/albums*','admin/album-categories*')) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is('admin/albums*') ? 'active' : ''  }}" href="{{ route('albums.index') }}">
                {{ __('messages.albums') }}
            </a>
        </li>
    @endcan
    
    @can('manage_emoji')
        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/emoji*')) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is('admin/emoji*') ? 'active' : ''  }}" href="{{ route('emoji.index') }}">
                {{ __('messages.emoji.emojis') }}
            </a>
        </li>
    @endcan
    
    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/pages*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/pages*') ? 'active' : ''  }}" href="{{ route('pages.index') }}">
            {{ __('messages.pages') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/menus*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/menus*') ? 'active' : ''  }}" href="{{ route('menus.index') }}">
            {{ __('messages.menus') }}
        </a>
    </li>
    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/ad-spaces*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/ad-spaces*') ? 'active' : ''  }}" href="{{ route('ad-spaces.create') }}">
            {{ __('messages.ad_space.ad_space') }}
        </a>
    </li>
    
    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/rss-feed*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/rss-feed*') ? 'active' : ''  }}" href="{{ route('rss-feed.index') }}">
            {{ __('messages.rss-feed') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/navigation*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/navigation*') ? 'active' : ''  }}" href="{{ route('navigation.index') }}">
            {{ __('messages.navigation') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/categories*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/categories*') ? 'active' : ''  }}" href="{{ route('categories.index') }}">
            {{ __('messages.categories') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/sub-categories*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/sub-categories*') ? 'active' : ''  }}" href="{{ route('sub-categories.index') }}">
            {{ __('messages.sub_categories') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/polls*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/polls*') ? 'active' : ''  }}" href="{{ route('polls.index') }}">
            {{ __('messages.polls') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/roles*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/roles*') ? 'active' : ''  }}" href="{{ route('roles.index') }}">
            {{ __('messages.roles_permissions') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/seo-tools*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/seo-tools*') ? 'active' : ''  }}" href="{{ route('seo-tools.index') }}">
            {{ __('messages.seo-tools') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/languages*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/languages*') ? 'active' : ''  }}" href="{{ route('languages.index') }}">
            {{ __('messages.languages') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/post-comments*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/post-comments*') ? 'active' : ''  }}" href="{{ route('post-comments.index') }}">
            {{ __('messages.comments') }}
        </a>
    </li>

    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('admin/settings*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('admin/settings*') ? 'active' : ''  }}" href="{{ route('setting.index') }}">
            {{ __('messages.settings') }}
        </a>
    </li>
    <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('profile/edit*')) ? 'd-none' : '' }}">
        <a class="nav-link p-0 {{ Request::is('profile/edit*') ? 'active' : ''  }}" href="{{ route('profile.setting') }}">
            {{ __('messages.user.profile_details') }}
        </a>
    </li>

    @if(Auth::user()->hasRole('user'))
        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('user/dashboard*')) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is('user/dashboard*') ? 'active' : ''  }}"
               href="{{ route('user.dashboard') }}">
                {{ __('messages.dashboard') }}
            </a>
        </li>
        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('user/user-posts*', 'user/post-format*')) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is('user/user-posts*') ? 'active' : ''  }}"
               href="{{ route('user-posts.index') }}">
                {{ __('messages.post.posts') }}
            </a>
        </li>
    @endif
    @if(Auth::user()->hasRole('user'))
        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is(['user/user-posts*','user/post-format*','user/post-type*'])) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is(['user/post-format*','user/post-type*']) ? 'active' : ''  }}"
               href="{{ route('user.post_format') }}">
                {{ __('messages.add_post') }}
            </a>
        </li>
        <li class="nav-item position-relative mx-xl-3 mb-3 mb-xl-0 {{ (!Request::is('user/post-comments*')) ? 'd-none' : '' }}">
            <a class="nav-link p-0 {{ Request::is('user/post-comments*') ? 'active' : ''  }}"
               href="{{ route('user.post-comments.index') }}">
                {{ __('messages.comments') }}
            </a>
        </li>
    @endif
