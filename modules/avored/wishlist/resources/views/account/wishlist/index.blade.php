@extends('layouts.user')

@section('breadcrumb')
<div class="text-white bg-green-900 bg-opacity-75 rounded mb-5 py-2 px-5" aria-label="Breadcrumb">
    <ol class="list-none p-0 inline-flex font-semibold">
      <li class="flex items-center">
        <a href="{{ route('home') }}"  class="text-white" title="home">
          {{ __('Home') }} 
        </a>
        <svg class="fill-current w-3 h-3 mx-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z" fill="white"/></svg>
      </li>
      <li>
        <span class="text-white">{{ __('My Wishlist') }}</span>
      </li>
</div>
@endsection

@section('content')
     <div class="border rounded mb-5">
      <div class="p-5 border-b">
        <div class="flex">
          <span>
            {{ __('avored.customer_wishlists') }}
          </span>
        </div>
      </div>
      <div class="p-5">
             <table class="min-w-full divide-y divide-gray-200">
          <thead>
            <tr>
              <th class="px-6 py-3 bg-gray-100 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                Image
              </th>
              <th class="px-6 py-3 bg-gray-100 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                Name
              </th>
              <th class="px-6 py-3 bg-gray-100 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">
                Price
              </th>
              <th class="px-6 py-3 bg-gray-100"></th>
            </tr>
          </thead>
          <tbody>
            <!-- Odd row -->
            @foreach ($wishlists as $wishlist)
                <tr class="bg-white">
                    <td class="px-6 py-4 whitespace-no-wrap text-sm leading-5 font-medium text-gray-900">
                        <img
                            class="h-12 w-12 rounded" 
                            src="{{ $wishlist->product->main_image_url }}" 
                            alt="{{ $wishlist->product->name }}" />
                    </td>
                    <td class="px-6 py-4 whitespace-no-wrap text-sm leading-5 text-gray-500">
                        {{ $wishlist->product->name }}
                    </td>
                    <td class="px-6 py-4 whitespace-no-wrap text-sm leading-5 text-gray-500">
                        {{ $wishlist->product->price }}
                    </td>
                    <td class="px-6 py-4 whitespace-no-wrap text-right text-sm leading-5 font-medium">
                        <form method="post" action="{{ route('wishlist.destroy') }}">
                          @csrf
                          <button type="submit">
                              Remove
                          </button>
                          <input type="hidden" name="slug" value="{{ $wishlist->product->slug }}" />
                      </form>
                    </td>
                </tr>
            @endforeach

          </tbody>
        </table>
      </div>
    </div>
@endsection
