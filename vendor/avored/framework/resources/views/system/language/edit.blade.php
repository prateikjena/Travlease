@extends('avored::layouts.app')

@section('meta_title')
    {{ __('avored::system.language.edit.title') }}:  Travlease Admin Dashboard
@endsection

@section('page_title')
    {{ __('avored::system.language.edit.title') }}
@endsection

@section('content')
<a-row type="flex" justify="center">
    <a-col :span="24">
        <language-save base-url="{{ asset(config('avored.admin_url')) }}" :language="{{ $language }}" inline-template>
        <div>
            <form 
                method="post"
                action="{{ route('admin.language.update', $language->id) }}"                    
                @submit="handleSubmit"
            >
                @csrf
                @method('put')
                <avored-tabs>
                    @foreach ($tabs as $tab)
                        <avored-tab identifier="{{ $tab->key() }}" name="{{ $tab->label() }}">
                            @php
                                $path = $tab->view();
                            @endphp
                            @include($path)
                        </avored-tab>
                    @endforeach
                </avored-tabs>

                
                <div class="mt-3 py-3">
                    <button type="submit"
                        class="px-6 py-3 font-semibold leading-7  text-white hover:text-white bg-red-600 rounded hover:bg-red-700"
                    >   
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 inline-flex w-4" fill="currentColor" viewBox="0 0 20 20">
                            <path d="M0 2C0 .9.9 0 2 0h14l4 4v14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm5 0v6h10V2H5zm6 1h3v4h-3V3z"/>
                        </svg>
                        <span class="ml-3">{{ __('avored::system.btn.save') }}</span>
                    </button>
                    
                    <a href="{{ route('admin.language.index') }}"
                        class="px-6 py-3 font-semibold inline-block text-white leading-7 hover:text-white bg-gray-500 rounded hover:bg-gray-600">
                        <span class="leading-7">
                            {{ __('avored::system.btn.cancel') }}
                        </span>
                    </a>
                </div>
            </form>
            </div>
        </language-save>
    </a-col>
</a-row>
@endsection
