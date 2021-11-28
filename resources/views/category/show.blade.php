@extends('layouts.app')


@section('breadcrumb')
<div class="text-white bg-green-900 bg-opacity-75 rounded mb-5 py-2 px-5">
    <ol class="list-reset flex  font-semibold">
      <li class="flex items-center">
        <a href="{{ route('home') }}" title="home">
          {{ __('avored.home') }}
        </a>
        <svg class="fill-current w-3 h-3 mx-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z" fill="white"/></svg>
      </li>
       <li> <span>{{ $category->name }}</span></li>
    </ol>
</div>
@endsection

@section('content')
<category-page
  current-url="{{ request()->url() }}"
  :filter-prop="{{ json_encode(request()->all()) }}"
  inline-template>
  <div>
      @if (session('type') === 'success')
        @include('components.success', ['message' => session('message')])
      @endif
      @if (session('type') === 'error')
        @include('components.error', ['message' => session('message')])
      @endif
    <div class="flex container mx-auto">

      <div class="w-1/6">
        @include('category.card.filters')
      </div>
      
      <div class="w-5/6 ml-3">
        <h1 class="text-green-900 mt-3 ml-5 text-2xl uppercase font-semibold">
          {{ $category->name }}
        </h1>
        <div class="block w-full">
            <div class="flex flex-wrap overflow-hidden sm:-mx-1 md:-mx-1 lg:-mx-1 xl:-mx-1">
                @foreach ($categoryProducts as $product)  
                    <div class="w-full overflow-hidden sm:my-1 sm:px-1 sm:w-1/2 md:my-1 md:px-1 md:w-1/3 lg:my-1 lg:px-1 lg:w-1/5 xl:my-1 xl:px-1 xl:w-1/4">
                        @include('category.card.product', ['product' => $product])
                    </div>
                @endforeach
            </div>
        
        </div>
      </div>
    </div>
  </div>
</category-page>
@endsection
