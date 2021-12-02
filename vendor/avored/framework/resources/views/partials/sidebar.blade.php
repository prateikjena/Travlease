<div class="bg-white border-r min-h-screen"> 
    <div class="flex items-center">
        <a href="{{ route('admin.dashboard') }}" class="flex items-center mt-2">
            <img class="h-12 block ml-6 w-12" src="{{ asset('vendor/avored/images/logo-g.svg') }}" />
            <div class="text-xl text-green-900" :class="sidebar ? 'hidden' : ''">Travlease</div>
        </a>
    </div>

    <nav class="mt-10">
        @foreach ($adminMenus as $key => $adminMenu)
            <avored-menu :sidebar="sidebar" :menu="{{ json_encode($adminMenu) }}"></avored-menu>
        @endforeach
    </nav>

</div>
