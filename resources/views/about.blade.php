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
  <div class="container m-auto text-gray-700">
    <p class="font-bold text-xl">Welcome to <span class="text-green-900  ">Travlease</span>&copy;</p>
    <p>We are a group of travel enthusiasts dedicated to solving the problems faced while traveling, so that we create best experiences for fellow travelers.</p>
    <p>There's more to renting, we aim at making your travel experience more easier so you can travel with ease</p>
    <div class="my-4">
      <p class="font-semibold">Finest-quality products - Quality matters to you, and us! That's why we do a strict quality-check for every product.</p>
    </div>      
  </div>
  <p class="mt-5 font-bold text-xl text-green-900 flex">Meet our Team</p>
  <div class="mx-44 mt-10 h-40">
    <ol class="flex flex-wrap mt-10 items-center">
      <li class=" px-10"><img src="/images/prateek.png"><a href="https://github.com/prateikjena">Prateek Jena</a></li>
      <li class=" px-10"><img src="/images/prerna.png"><a href="https://github.com/prernaprasad14" >Prerna Prasad</a></li>
      <li class=" px-10"><img src="/images/saikat.png"><a href="https://github.com/Saikat-majumder">Saikat Majumder</a></li>
    </ol>
  </div>
  
@endsection



