@extends('layouts.user')

@section('breadcrumb')
<nav class=" text-white bg-green-900 bg-opacity-75 rounded mb-5 py-2 px-5" aria-label="Breadcrumb">
  <ol class="list-none p-0 inline-flex font-semibold">
    <li class="flex items-center">
      <a href="{{ route('home') }}" class="text-white" title="home">
        {{ __('avored.home') }}
      </a>
      <svg class="fill-current w-3 h-3 mx-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"/></svg>
    </li>
    <li class="flex items-center">
      <a href="{{ route('account.dashboard') }}" class="text-white" title="home">
        {{ __('avored.account_dashboard') }}
      </a>
      <svg class="fill-current w-3 h-3 mx-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"/></svg>
    </li>
    <li class="flex items-center">
      <a href="#" class="text-white" title="home">
        {{ __('avored.upload') }}
      </a>
    </li>
   
  </ol>
</nav>
@endsection


@section('content')
<div class="bg-white shadow overflow-hidden sm:rounded-lg">
    <div class="px-4 py-5 sm:px-6">
        <div class="flex w-full">
            <h3 class="text-lg leading-6 font-medium text-gray-900">
            {{ __('avored.upload_user_picture') }}
            </h3>
        </div>
    </div>
    <div class="border-t px-4 py-5 border-gray-200">
        <account-upload inline-template>
            <form method="post" action="{{ route('account.upload.image') }}" enctype="multipart/form-data">
                @csrf
                <div class="mt-3">
                    <label class="block w-full mb-3" for="user-image">
                        {{ __('avored.image') }}
                    </label>
                    <input id="user-image" class="block border w-full" type="file" name="file" />
                    @if ($errors->has('file'))
                        <p>
                            {{ $errors->first('file') }}
                        </p>
                    @endif
                </div>
                
                <div class="mt-3 py-3 ">
                    <button type="submit"
                      class="px-5 py-2 font-semibold leading-7  text-white hover:text-white bg-green-500 rounded hover:bg-green-900"
                    >   
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-4 inline-flex w-4" fill="currentColor" viewBox="0 0 20 20">
                          <path d="M0 2C0 .9.9 0 2 0h14l4 4v14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm5 0v6h10V2H5zm6 1h3v4h-3V3z"/>
                      </svg>
                      <span class="ml-3">{{ __('avored.save') }}</span>
                    </button>
                    
                    <a href="{{ route('account.dashboard') }}"
                        class="px-5 py-2 font-semibold inline-block text-white leading-7 hover:text-white bg-gray-500 rounded hover:bg-gray-600">
                        <span class="leading-7">
                            {{ __('avored.cancel') }}
                        </span>
                    </a>
                </div>
                
                    
                
            </form>
        </address-upload>
    </div>
</div>
@endsection
