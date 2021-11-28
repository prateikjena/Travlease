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

@section('services')
<h4>There's more to renting</h4>
<div class="border-gray-900">Finest-quality products
Quality matters to you, and us! That's why we do a strict quality-check for every product.

Free relocation
Changing your house or even your city? We'll relocate your rented products for free.

Free maintenance
Keeping your rented products in a spick and span condition is on us, so you can sit back and relax.

Cancel anytime
Pay only for the time you use the product and close your subscription without any hassle.

Easy return on delivery
If you don't like the product on delivery, you can return it right away—no questions asked.

Keep upgrading
Bored of the same product? Upgrade to try another, newer design and enjoy the change!
</div>
@endsection