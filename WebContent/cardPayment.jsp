<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>

<html>

<head>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

 

<style>

*{

margin: 0; padding: 0; font-family: 'Josefin Sans' , sans-serif;

}

  /* Make the image fully responsive */

  .carousel-inner img {

    width: 100%;

    height: 500px;

  }


  </style>

 

<style>

    body{

        background-color: rgb(109, 105, 105);

    }

    .padding{

 

      padding: 5rem !important;

 

    }

 

.form-control:focus {

box-shadow: 10px 0px 0px 0px #ffffff !important;

border-color: #4ca746

}

 

 

  </style>

 

<script>

    $(function($) {

$('[data-numeric]').payment('restrictNumeric');

$('.cc-number').payment('formatCardNumber');

$('.cc-exp').payment('formatCardExpiry');

$('.cc-cvc').payment('formatCardCVC');

$.fn.toggleInputError = function(erred) {

this.parent('.form-group').toggleClass('has-error', erred);

return this;

};

$('form').submit(function(e) {

e.preventDefault();

var cardType = $.payment.cardType($('.cc-number').val());

$('.cc-number').toggleInputError(!$.payment.validateCardNumber($('.cc-number').val()));

$('.cc-exp').toggleInputError(!$.payment.validateCardExpiry($('.cc-exp').payment('cardExpiryVal')));

$('.cc-cvc').toggleInputError(!$.payment.validateCardCVC($('.cc-cvc').val(), cardType));

$('.cc-brand').text(cardType);

$('.validation').removeClass('text-danger text-success');

$('.validation').addClass($('.has-error').length ? 'text-danger' : 'text-success');

});

});

</script>

 

 

</head>

<body>




<%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0"); %>
 

</header>

<br><br>

 

<div class="padding">

    <div class="row">

        <div class="container-fluid d-flex justify-content-center">

            <div class="col-sm-8 col-md-6">

                <div class="card">

                    <div class="card-header">

                        <div class="row">

                            <div class="col-md-6"> <span>CREDIT/DEBIT CARD PAYMENT</span> </div>

                            <div class="col-md-6 text-right" style="margin-top: -5px;"> <img src="https://img.icons8.com/color/36/000000/visa.png"> <img src="https://img.icons8.com/color/36/000000/mastercard.png"> <img src="https://img.icons8.com/color/36/000000/amex.png"> </div>

                        </div>

                    </div>

                    <div class="card-body" style="height: 350px">

                        <form action="PaymentStatus" method="GET">

                        <div class="form-group"> <label for="cc-number" class="control-label">CARD NUMBER</label> <input id="cc-number" type="tel" class="input-lg form-control cc-number" autocomplete="cc-number" placeholder="**** **** **** ****" required> </div>

                        <div class="row">

                            <div class="col-md-6">

                                <div class="form-group"> <label for="cc-exp" class="control-label">CARD EXPIRY</label> <input id="cc-exp" type="tel" class="input-lg form-control cc-exp" autocomplete="cc-exp" placeholder="** / **" required> </div>

                            </div>

                            <div class="col-md-6">

                                <div class="form-group"> <label for="cc-cvc" class="control-label">CARD CVC</label> <input id="cc-cvc" type="tel" class="input-lg form-control cc-cvc" autocomplete="off" placeholder="****" required> </div>

                            </div>

                        </div>

                        <div class="form-group"> <label for="numeric" class="control-label">CARD HOLDER NAME</label> <input type="text" class="input-lg form-control"> </div>

                        <div class="form-group"> <input value="MAKE PAYMENT" type="submit" class="btn btn-success btn-lg form-control" style="font-size: .8rem;"> </div>

                        </form>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

 

<br><br>

 

 


</body>

</html>
