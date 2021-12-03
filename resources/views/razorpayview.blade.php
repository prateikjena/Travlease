<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- CSRF Token -->
      <meta name="csrf-token" content="{{ csrf_token() }}">
      <title>Travlease - Razorpay Payment Gateway Integration</title>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" crossorigin="anonymous"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   </head>
   <body style="background-image:url('images/paymentbg.svg'); position:relative; background-position:center; background-size:cover; background-repeat:no-repeat; background-attachment:fixed;">
      <div id="app">
         <main class="py-4">
            <div class="container">
               <div class="row">
                  <div class="col-md-6 offset-3 col-md-offset-6">
                     @if($message = Session::get('error'))
                     <div class="alert alert-danger alert-dismissible fade in" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                        </button>
                        <strong>Error!</strong> {{ $message }}
                     </div>
                     @endif
                     @if($message = Session::get('success'))
                     <div class="alert alert-success alert-dismissible fade {{ Session::has('success') ? 'show' : 'in' }}" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">×</span>
                        </button>
                        <strong>Success!</strong> {{ $message }}
                     </div>
                     @endif
                     <div class="mt-5 font-semibold"><h4 class="mb-5">Please proceed to pay</h4></div>
                     <div class="card card-default mt-20" >
                        <div class="card-header">
                           Travlease - Razorpay Payment Gateway Integration
                        </div>
                        <div class="card-body text-center " style="border-radius:5px;">
                           <form action="/payment" method="POST" >
                              @csrf
                              <script src="https://checkout.razorpay.com/v1/checkout.js"
                                 data-key="{{ env('RAZORPAY_KEY') }}"
                                 data-amount="50001" 
                                 data-currency="INR"
                                 data-buttontext="Pay"
                                 data-name="Travlease"
                                 data-description="Razorrpay"
                                 data-image="{{ asset('images/logotravlease.svg') }}"
                                 data-prefill.name="name"
                                 data-prefill.email="email"
                                 data-theme.color="#27AE60"></script>
                                 <div style=" margin-top:-30px;">
                                    <button style="border-radius:5px;color:white; font:bold;background-color:#2A6D47;">Payment</button>
                                 </div>
                                 
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </main>
      </div>
   </body>
</html>