<footer class="bg-green-700  lg:bg-white lg:bg-opacity-25 xl:bg-white xl:bg-opacity-25 2xl:bg-white 2xl:bg-opacity-25 text-gray-700 mt-40 relative">
    <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
      <a class="flex  font-medium items-center md:justify-start justify-center text-gray-900">
        <img src="{{ asset('vendor/avored/images/logo-w.svg') }}" class="h-10 w-10" />
      </a>
      <p class="text-sm text-white sm:pl-4 sm:border-l-2 sm:border-white sm:py-2 sm:mt-0 mt-4">© {{ date('Y') }} Travlease —
        <a href="{{ route('home') }}" class="text-white hover:text-green-900 ml-1" rel="noopener noreferrer" target="_blank"><strong>Travlease</strong></a>
      </p>
      <span class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
        <a href="https://www.facebook.com/travlease" target="_blank" class=" text-white hover:text-green-900">
          <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
            <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
          </svg>
        </a>
        <a href="https://www.twitter.com/travlease" target="_blank" class="ml-3 text-white hover:text-green-900">
          <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
            <path d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z"></path>
          </svg>
        </a>
        <a href="{{route('about')}}" class="ml-3 font-medium text-white hover:text-green-900 ">About</a>
      </span>
    </div>
  </footer>
