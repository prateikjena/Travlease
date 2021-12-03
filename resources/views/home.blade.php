@extends('layouts.app')

@section('breadcrumb')
<div class=" text-white bg-green-900 bg-opacity-75 rounded mb-5 py-2 px-5">
    <ol class="list-reset flex">
       <li> <a class=" font-semibold" href="{{ route('home') }}">
              {{ __('avored.home') }}
            </a>
        </li>
    </ol>
</div>
@endsection

@section('content')
  <div class="container m-auto">
      @if (session('type') === 'success')
        @include('components.success', ['message' => session('message')])
      @endif
      @if (session('type') === 'error')
        @include('components.error', ['message' => session('message')])
      @endif

      @if ($page)
        {!! $page->getContent() !!}
      @endif

    <h1 class="text-2xl my-5 text-gray-800"><strong>{{ __('Travlease Top Picks') }}</strong></h1>
    <div class="block">
      <div class="flex flex-wrap">
          @foreach ($products as $product)
              @include('category.card.product', ['product' => $product])
          @endforeach
        </div>
    </div>
</div>  
@endsection