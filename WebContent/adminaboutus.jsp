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
                    <a class="nav-link" href="aboutus.jsp"><i class="far fa-address-card"></i>About Us</a>
                </li>
                <li class="nav-item">
      <a class="nav-link" href="AdminLogout"><i class="fas fa-sign-out-alt"></i>Logout</a>
    </li>
                
            </ul>
        </div>
    </nav>
<!--ending of nav bar-->





<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="https://scontent.fdel28-1.fna.fbcdn.net/v/t1.0-9/p720x720/52426905_626608931104792_6633699906341044224_o.jpg?_nc_cat=109&_nc_sid=8024bb&_nc_ohc=KUoLbaVbmMwAX-zmFTf&_nc_ht=scontent.fdel28-1.fna&_nc_tp=6&oh=f063a96ad068252c1f916c820c81fa32&oe=5F198C6C" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Shashank Ojha</h2>
        <p class="title">CEO & Co-founder</p>
        <p></p>
        <p>shashnak@epharmacy.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="https://scontent.fdel28-1.fna.fbcdn.net/v/t31.0-8/p720x720/20819195_339321336520772_1831289875914003675_o.jpg?_nc_cat=104&_nc_sid=7aed08&_nc_ohc=k_XIs0iR_iUAX-4TJec&_nc_ht=scontent.fdel28-1.fna&_nc_tp=6&oh=cb57349271e45f006baac8c8f0899821&oe=5F1826EF" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Piyush Rai</h2>
        <p class="title">Art Director & Co-Founder</p>
        <p></p>
        <p>piyush.rai@epharmacy.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
 
  <div class="column">
    <div class="card">
      <img src="https://scontent.fdel28-1.fna.fbcdn.net/v/t1.0-9/79313191_1434431023377635_5543645706356523008_n.jpg?_nc_cat=100&_nc_sid=110474&_nc_ohc=v62IPdOTNhMAX_MClKd&_nc_ht=scontent.fdel28-1.fna&oh=c352b2af5e50eb61826b1b3b35997331&oe=5F182949" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Kunal Arya</h2>
        <p class="title">Co-Founder</p>
        <p></p>
        <p>Kunal.arya@epharmacy.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
 
  <div class="column">
    <div class="card">
      <img src="https://scontent.fdel28-1.fna.fbcdn.net/v/t31.0-8/p960x960/23509476_1952563835009789_8883296250870574445_o.jpg?_nc_cat=107&_nc_sid=7aed08&_nc_ohc=lLeYk-KeciIAX_bSHHT&_nc_ht=scontent.fdel28-1.fna&_nc_tp=6&oh=8680262d216d75cd415a53fcf9375a9f&oe=5F1B65E3" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Harshul Sharma</h2>
        <p class="title">CFO</p>
        <p></p>
        <p>harshul.s@epharmacy.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
 
  <div class="column">
    <div class="card">
      <img src="https://scontent.fdel28-1.fna.fbcdn.net/v/t1.0-0/p206x206/60086421_109786700245504_8519373020970614784_n.jpg?_nc_cat=109&_nc_sid=e33968&_nc_ohc=XnWmt48YhG0AX_t3Nes&_nc_ht=scontent.fdel28-1.fna&_nc_tp=6&oh=788be5a0ca9085c8fa007a6ee92a2286&oe=5F18444F" alt="John" style="width:100%">
      <div class="container">
        <h2>Vivek Pandey</h2>
        <p class="title">CTO & Co-Founder</p>
        <p></p>
        <p>vivek.p@epharmacy.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>



</div>

</header>

<!--ending of coursel images-->

<!-- about us -->

<section>

<div class="container-fluid">

<h1 class="text-center text-capitalize pt-5">About our company  Assure Rx</h1>

<hr class="w-25 mx-auto pt-5">

 

<div class="row">

<div class="col-lg-6 col-md-6 col-12">

<img src="images/d.jpg" class="img-fluid">

</div>

<div class="col-lg-6 col-md-6 col-12">

<h1>Who are we?</h1>

<font size="4">We provide our best services to our customers. We also care for your customers health as it is all about medicines and pharmacy. All types of medicines are available here. If you find any difficulty you can call us or can mail us to the provided email address. </font><br>

<button class="btn bg-primary text-white">Wanna know us</button>

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

<img class="card-img-top" src="https://images.unsplash.com/photo-1580674285054-bed31e145f59?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60" alt="Card image">

<div class="card-body">

<h4 class="card-title">Cash on delivery</h4>

<p class="card-text">We can also take care of your health and ourself in this situation. we provdies our best and healthfull serivces to our customers.</p>

<a href="#" class="btn btn-primary">See more</a>

</div>

</div>

</div>

 

<div class="col-lg-4 col-mid-4 col-12">

<div class="card" >

<img class="card-img-top" src="https://images.unsplash.com/photo-1494959764136-6be9eb3c261e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80" alt="Card image">

<div class="card-body">

<h4 class="card-title">Pick up</h4>

<p class="card-text">We provide our services by knowing the nearest reachable place from your home.</p>

<a href="#" class="btn btn-primary">See more</a>

</div>

</div>

</div>

 

<div class="col-lg-4 col-mid-4 col-12">

<div class="card" style="width:637px">

<img class="card-img-top" src="https://images.unsplash.com/photo-1449247666642-264389f5f5b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60" alt="Card image">

<div class="card-body">

<h4 class="card-title">Purchase</h4>

<p class="card-text">You can also purchase our products by walking to our nearest stores.</p>

<a href="#" class="btn btn-primary">See more</a>

</div>

</div>

</div>

</div>

</section>

 

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
     <li class="my-2"><i class="fas fa-sign-in-alt"><a href="customerRegister.jsp"> Sign up </a></i>
     <li class="my-2"><i class="fas fa-user-alt"><a href="loginchoice.jsp"> Login </a></i>
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