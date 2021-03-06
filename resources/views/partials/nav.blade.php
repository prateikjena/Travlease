
<header class="text-gray-700 px-6 border-b">
  <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
    <a href="{{ route('home') }}" class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
      <img class="w-10 h-10 text-white" 
        src="{{ asset('images/logotravlease.svg') }}" /> 
      <span class="ml-3 text-green-900 text-xl"><strong>Travlease</strong></span>
    </a>
   
    <nav class="md:ml-auto flex flex-wrap items-center text-base justify-center ">
        @foreach ($menus as $menu)
            <a href="{{ $menu->url }}" class="mr-5 rounded-sm border-solid border-transparent border-opacity-20 ease-in-out text-black-900 hover:border-green-900" style="border-bottom-width: 3px;">
                {{ $menu->name }}
            </a>      
        @endforeach
    </nav>
  </div>
</header>
