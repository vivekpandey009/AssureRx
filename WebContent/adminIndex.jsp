<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
 
<style>
*{

margin: 0; padding: 0; font-family: 'Josefin Sans' , sans-serif;

}

  /* Make the image fully responsive */

  .carousel-inner img {

    width: 100%;

    height: 900px;

  }
</style>

<style>

@import url('https://fonts.googleapis.com/css?family=Roboto');

body{
	font-family: 'Roboto', sans-serif;
}
* {
	margin: 0;
	padding: 0;
}
i {
	margin-right: 10px;
}
/*----------multi-level-accordian-menu------------*/
.navbar-logo{
	padding: 15px;
	color: #fff;
}
.navbar-mainbg{
	background-color: #5161ce;
	padding: 0px;
}
#navbarSupportedContent{
	overflow: hidden;
	position: relative;
}
#navbarSupportedContent ul{
	padding: 0px;
	margin: 0px;
}
#navbarSupportedContent ul li a i{
	margin-right: 10px;
}
#navbarSupportedContent li {
	list-style-type: none;
	float: left;
}
#navbarSupportedContent ul li a{
	color: rgba(255,255,255,0.5);
    text-decoration: none;
    font-size: 15px;
    display: block;
    padding: 20px 20px;
    transition-duration:0.6s;
	transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
    position: relative;
}
#navbarSupportedContent>ul>li.active>a{
	color: #5161ce;
	background-color: transparent;
	transition: all 0.7s;
}
#navbarSupportedContent a:not(:only-child):after {
	content: "\f105";
	position: absolute;
	right: 20px;
	top: 10px;
	font-size: 14px;
	font-family: "Font Awesome 5 Free";
	display: inline-block;
	padding-right: 3px;
	vertical-align: middle;
	font-weight: 900;
	transition: 0.5s;
}
#navbarSupportedContent .active>a:not(:only-child):after {
	transform: rotate(90deg);
}

}

</style>

</head>
<body>
<!-- creating a nav bar menu-->
<nav class="navbar navbar-expand-lg navbar-mainbg bg-danger">
        <a class="navbar-brand navbar-logo" href="adminIndex.jsp">Assure Rx</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
            <!--     <div class="hori-selector"><div class="left"></div><div class="right"></div></div>-->
            <li class="nav-item">
                    <a class="nav-link" href="welcomeAdmin.jsp"><i class="fas fa-tachometer-alt"></i>Dashboard</a>
                </li>
                
                <li class="nav-item">
      <a class="nav-link" href="adminprofile.jsp"><i class="far fa-user"></i>Profile</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="adminShopping.jsp"><i class="fas fa-shopping-cart"></i>Shop</a>
    </li>          
                <li class="nav-item">
                    <a class="nav-link" href="contactUs.jsp"><i class="fas fa-phone"></i>Contact Us</a>
                </li>
               
                <li class="nav-item">
      <a class="nav-link" href="AdminLogout"><i class="fas fa-sign-out-alt"></i>Logout</a>
    </li>
                
            </ul>
        </div>
    </nav>
<!--ending of nav bar-->



<!--creating coursel images-->

<div id="demo" class="carousel slide" data-ride="carousel">

  <ul class="carousel-indicators">

    <li data-target="#demo" data-slide-to="0" class="active"></li>

    <li data-target="#demo" data-slide-to="1"></li>

    <li data-target="#demo" data-slide-to="2"></li>

  </ul>

  <div class="carousel-inner">




	 <div class="carousel-item active">

      <img src="images/Index1.jpg" alt="Homeopathic" width="1100" height="500">

      <div class="carousel-caption">

        <h3>Best ePharmacy</h3>

        <p>Cure yourself!</p>

      </div>  

    </div>


    <div class="carousel-item">

      <img src="images/index2.jpg" alt="Homeopathic" width="1100" height="500">

      <div class="carousel-caption">

        <h3>Homeopathic</h3>

        <p>Cure yourself!</p>

      </div>  

    </div>

    <div class="carousel-item">

      <img src="images/index3.jpg" alt="Ayurvedic" width="1100" height="500">

      <div class="carousel-caption">

        <h3>Ayurvedic</h3>

        <p>Release stress!</p>

      </div>  

    </div>

    <div class="carousel-item">

      <img src="images/index4.jpg" alt="Drug" width="1100" height="500">

      <div class="carousel-caption">

        <h3>Drug addict</h3>

        <p>help in leaving the drugs!</p>

      </div>  

    </div>

  </div>

  <a class="carousel-control-prev" href="#demo" data-slide="prev">

    <span class="carousel-control-prev-icon"></span>

  </a>

  <a class="carousel-control-next" href="#demo" data-slide="next">

    <span class="carousel-control-next-icon"></span>

  </a>

</div>

</header>

<!--ending of coursel images-->

<!-- about us -->

<section>

<div class="container-fluid">

<h1 class="text-center text-capitalize pt-5">About Assure Rx</h1>

<hr class="w-25 mx-auto pt-5">

 

<div class="row">

<div class="col-lg-6 col-md-6 col-12">

<img src="images/whorv.jpg" class="img-fluid">

</div>

<div class="col-lg-6 col-md-6 col-12">

<h1>Who are we?</h1>

<font size="4">We provide our best services to our customers. We also care for your customers health as it is all about medicines and pharmacy. All types of medicines are available here. If you find any difficulty you can call us or can mail us to the provided email address. </font><br>

<a href="aboutus.jsp" class="btn bg-primary text-white">Wanna know us</a>

</div>

</div>

</div>

</section>

<!-- services -->

<section>

<div class="container-fluid">

<h1 class="text-center text-capitalize pt-5">Services</h1>

<hr class="w-25 mx-auto pt-5">

 

<div class="row text-center mb-5">

<div class="col-lg-4 col-mid-4 col-12">

<div class="card" >

<img class="card-img-top" src="images/cod.jpg" alt="Card image">

<div class="card-body">

<h4 class="card-title">Cash on delivery</h4>

<p class="card-text">Here are the availabe payment methods</p>

<a href="paymentMethod.jsp" class="btn btn-primary">See more</a>

</div>

</div>

</div>

 

<div class="col-lg-4 col-mid-4 col-12">

<div class="card" >

<img class="card-img-top" src="images/service.jpg" alt="Card image">

<div class="card-body">

<h4 class="card-title">Pick up</h4>

<p class="card-text">We provide our services by knowing the nearest reachable place from your home.</p>

<a href="#" class="btn btn-primary">See more</a>

</div>

</div>

</div>

 

<div class="col-lg-4 col-mid-4 col-12">

<div class="card">

<img class="card-img-top" src="images/purchase.jpg" alt="Card image">

<div class="card-body">

<h4 class="card-title">Purchase</h4>

<p class="card-text">You can also purchase our products by walking to our nearest stores.</p>

<a href="#" class="btn btn-primary">See more</a>

</div>

</div>

</div>

</div>

</section>

 <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0"); %>

<!-- contact button -->

 <footer class="page-footer bg-dark">
 
 <div class="bg-danger">
   <div class="container">
     <div class="row py-4 d-flex align-items-center">
       
       <div class="col-md-12 text-center">
       <a href="#"><i class="fab fa-facebook-f text-white mr-4"></i></a>
       <a href="#"><i class="fab fa-twitter text-white mr-4"></i></a>
       <a href="#"><i class="fab fa-instagram text-white mr-4"></i></a>
       </div>
     </div>
   </div>
 </div>
 
 <div class="container text-center text-md-left mt-5">
  <div class="row">
   
   <div class="col-md-3 mx-auto mb-4">
     <h6 class="text-uppercase font-weight-bold">Assure Rx</h6>
     <hr class="bg-danger mb-4 mt-0 d-inline-block mx-auto" style="width: 125px; height: 2px">
     <p class="mt-2">This is an e-Pharmaceutical company.</p>
   </div>
   
   <div class="col-md-2 mx-auto mb-4">
   <h6 class="text-uppercase font-weight-bold">Menu</h6>
   <hr class="bg-danger mb-4 mt-0 d-inline-block mx-auto" style="width: 85px; height: 2px">
   
   <ul class="list-unstyled">
     <li class="my-2"><i class="fas fa-address-book"><a href="contactUs.jsp"> Contact Us </a></i>
     <li class="my-2"><i class="fas fa-globe"><a href="aboutus.jsp"> About Us </a></i> 
     
   </ul>
   </div>
   
   <div class="col-md-3 mx-auto mb-4">
     <h6 class="text-uppercase font-weight-bold">Contact</h6>
     <hr class="bg-danger mb-4 mt-0 d-inline-block mx-auto" style="width: 75px; height: 2px">
     
     <ul class="list-unstyled">
     <li class="my-2"><i class="fas fa-home mr-3"></i>Office no. 4, Nangal Raya, New Delhi-110046</li>
     <li class="my-2"><i class="fas fa-envelope mr-3"></i>assurepharmacy@gmail.com</li>
     <li class="my-2"><i class="fas fa-phone mr-3"></i>9810046343</li>
     </ul>
   </div>
  </div>
 </div>
 
 
 <div class="footer-copyright text-center py-3">
  <p>&copy; Copyright
  <a href="index.jsp">Assure Rx</a></p>
 </div>
 </footer>
    
    <!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

</div>
</body>

</html>
   