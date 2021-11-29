@php
$product->main_image_url = empty($product->mainImage) ? 'https://placehold.it/250x250' : asset('storage/'.$product->mainImage->path);
@endphp

<div class="max-w-18 bg-white border shadow-lg rounded-lg overflow-hidden ml-3 my-10" >
    <div class=" h-3/6">
        <a href="{{ route('product.show', $product->slug) }}" title="{{ $product->name }}">
            <img class="h-56 w-full object-cover" src="{{ $product->main_image_url }}" alt="{{ $product->name }}">
        </a>
    </div>
    <div class="bg-white h-40 ">
        <div class="px-4 my-4 py-2 center">
            <h1 class="text-gray-800 font-semibold text-xl">{{ $product->name }}</h1>
            <p class="text-gray-500 text-xs">{{ number_format($product->qty, 0) }} in Stock</p>
        </div>
    </div>
    <div class="flex flex-grow h-1/6 bg-gray-100 px-4 py-2">
      <div class="font-semibold flex-grow text-xl">
          {{ session()->get('default_currency')->symbol . number_format($product->price, 2) }}
      </div>
      <div class="ml-auto">
          <div class="block w-full  ">
                <div class="flex items-center h-2/6 ">
                    <form  method="post" action="{{ route('add.to.cart') }}">
                        @csrf
                        <input type="hidden" name="slug" value="{{ $product->slug }}" />
                        <input type="hidden" name="qty" value="1" />
                        <button type="submit" class="px-3 py-1 bg-green-600 text-white text-sm font-semibold rounded">
                            {{__('avored.add_to_cart')}}
                        </button>
                    </form>
                    <div class="mt-1 mx-1">
                        <?php 
                            $wishlistRepository = app(\AvoRed\Wishlist\Database\Contracts\WishlistModelInterface::class);
                            $customer = auth()->guard('customer')->user();
                        ?>
                        @if (($customer === null) ||  !($customer && $wishlistRepository->customerHasProduct($customer, $product->id)))

                        <form method="post" action="{{ route('wishlist.store') }}">
                            @csrf
                            <button type="submit">
                                    <svg class="h-6 w-6 text-transparent" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" stroke="#4A5568" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                            </button>
                            <input type="hidden" name="slug" value="{{ $product->slug }}" />
                        </form>
                        @else 
                        <form method="post" action="{{ route('wishlist.destroy') }}">
                            @csrf
                            <button type="submit">
                                <svg class="h-6 w-6 text-gray-800 border-red-600" fill="#F23B66" xmlns="http://www.w3.org/2000/svg">
                                <path d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" stroke="#F23B66" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </button>
                            <input type="hidden" name="slug" value="{{ $product->slug }}" />
                        </form>
                        @endif
                        
                    </div>
              </div>
          </div>
      </div>
  </div>
</div>
