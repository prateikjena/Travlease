@extends('avored::layouts.app')

@section('meta_title')
    {{ __('avored::system.pages.title.list', ['attribute' => __('avored::system.terms.page')]) }}: Travlease Admin Dashboard
@endsection

@section('page_title')
    <div class="text-gray-800 flex items-center">
        <div class="text-xl text-black font-semibold">
            {{ __('avored::system.pages.title.list', ['attribute' => __('avored::system.terms.page')]) }}
        </div>
        <div class="ml-auto">
            <a href="{{ route('admin.page.create') }}"
                class="px-4 py-2 font-semibold leading-7 text-white hover:text-white bg-red-600 rounded hover:bg-red-700"
            >
                <svg class="w-5 h-5 inline-block text-white" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M17 11a1 1 0 0 1 0 2h-4v4a1 1 0 0 1-2 0v-4H7a1 1 0 0 1 0-2h4V7a1 1 0 0 1 2 0v4h4z"/>
                </svg>
                {{ __('avored::system.btn.create') }}
            </a>
        </div>
    </div>
@endsection

@section('content')

<page-table
    :init-pages="{{ json_encode($pages) }}"
    filter-url="{{ route('admin.page.filter') }}"
    base-url="{{ asset(config('avored.admin_url')) }}"
></page-table>
@endsection
