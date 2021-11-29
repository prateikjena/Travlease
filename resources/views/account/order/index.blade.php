@extends('layouts.user')
<body style="background-image:url(/images/bg.svg)">
@section('breadcrumb')
<nav class=" text-white bg-green-900 bg-opacity-75 rounded mb-5 py-2 px-5"aria-label="Breadcrumb">
  <ol class="list-none p-0 inline-flex font-semibold">
    <li class="flex items-center">
      <a href="{{ route('home') }}" class="text-white" title="home">
        {{ __('avored.home') }}
      </a>
      <svg class="fill-current w-3 h-3 mx-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"/></svg>
    </li>
    <li class="flex items-center">
      <a href="{{ route('account.dashboard') }}" class="text-white" title="home">
        {{ __('avored.account') }}
      </a>
      <svg class="fill-current w-3 h-3 mx-3" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"/></svg>
    </li>
    <li>
      <a href="#" class="text-white" aria-current="page">
        {{ __('avored.orders') }}
      </a>
    </li>
  </ol>
</nav>
@endsection

@section('content')
<div class="bg-white shadow overflow-hidden sm:rounded-lg">
    <div class="px-4 py-5 sm:px-6">
        <div class="w-full flex">
            <h2 class="text-2xl text-black">{{ __('avored.orders') }}</h2>
        </div>
    </div>
    <div class="border-t px-4 py-5 border-gray-200">
        <user-order-table 
          base-url="{{ route('account.order.index') }}" 
          :init-orders="{{ json_encode($userOrders) }}"
          />
    </div>
</div>

@endsection
