@extends('layouts.app')
<body style="background:url('/images/leafbg.svg');z-index:-1; position:relative; background-position:center; background-size:cover; background-repeat:no-repeat; background-attachment:fixed;">
@section('breadcrumb')
<div class=" text-white bg-green-900 bg-opacity-75 rounded mb-5 py-2 px-5">
    <ol class="list-reset flex">
       <li> <a class=" font-semibold center" href="{{ route('about') }}">
             About Us
            </a>
        </li>
    </ol>
</div>
@endsection

@section('content')
  <div class="container m-auto text-gray-700 ">
    <p class="font-bold text-xl">Welcome to <span class="text-green-900  ">Travlease</span>&copy;</p>   
    <p>Travlease connects the tourists with the local service providers and allow them to rent such items before their trips. 
      They only have to pre-book the equipment from the website. Also since tourists don't necessarily have to buy items or carry them from 
      their homes they can use this web app, they can enjoy the trip more instead of worrying about availability of required equipment(s).</p> 
  </div>
   
<div class="mx-44 mt-5 h-40  text-gray-700 mb-10"> 
    <h2 class="mt-5 font-bold text-xl">Meet our Team</h2>
    <p>We are a group of travel enthusiasts dedicated to solving the problems faced while traveling, so that we create best experiences for fellow travelers.</p>
    <p>There's more to renting, we aim at making your travel experience bettre so you can travel with ease.</p>
    <div class="flex flex-wrap mt-2 ml-20">
      <div class="flex-1 px-20 my-10 items-center">
        <img src="https://avatars.githubusercontent.com/u/34654465?v=4" class="mt-5 h-32 w-32  border-green-900 border-2 rounded-full">
        <a href="https://github.com/prateikjena"  class="mt-1 py-2 inline-block" >
          <svg class="inline-block mr-3"  aria-hidden="true"  fill="#22543D" version="1.1" viewBox="0 0 16 16" width="24"><path fill-rule="evenodd" 
            d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path>
          </svg>Prateek Jena
        </a>
      </div>
      <div class="flex-1 px-20 my-10 items-center">
      <img src="https://avatars.githubusercontent.com/u/89848251?v=4" class="mt-5 h-32 w-32  border-green-900 border-2 rounded-full">
        <a href="https://github.com/prernaprasad14"  class="mt-1 py-2 inline-block" >
          <svg class="inline-block mr-3"  aria-hidden="true"  fill="#22543D" version="1.1" viewBox="0 0 16 16" width="24"><path fill-rule="evenodd" 
            d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path>
          </svg>Prerna Prasad
        </a>
      </div>
      <div class="flex-1 px-20 my-10 items-center">
      <img src="https://avatars.githubusercontent.com/u/54791517?v=4" class="mt-5 h-32 w-32  border-green-900 border-2 rounded-full">
        <a href="https://github.com/Saikat-majumder"  class="mt-1 py-2 inline-block" >
          <svg class="inline-block mr-3"  aria-hidden="true"  fill="#22543D" version="1.1" viewBox="0 0 16 16" width="24"><path fill-rule="evenodd" 
            d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path>
          </svg>Saikat Majumder
        </a>
      </div>
    </div>
</div>

@endsection



