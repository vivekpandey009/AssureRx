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



<%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0"); %>


<!--creating coursel images-->
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

</header>


<div align="center">
<h1>    Welcome Admin</h1>
</div>
<div class="container">
  <div class="card">
    <div class="card-body">
      <h4 class="card-title">Add new user</h4>
      <p class="card-text"></p>
     <a href="createuser.jsp" class="btn btn-danger">Add User</a>
    </div>
  </div>
</div>  

<br><br>

  <div class="container">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Delete an user</h4>
        <p class="card-text"></p>
        <a href="deleteuser.jsp" class="btn btn-danger">Remove User</a>
      </div>
    </div>
  </div>  

<br><br>

<div class="container">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">See all Customers</h4>
        <p class="card-text"></p>
        <a href="GetAllCustomer" class="btn btn-danger" role="button" aria-pressed="true">Read</a>
      </div>
    </div>
  </div>    

<br><br>

<div class="container">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">See all products</h4>
        <p class="card-text"></p>
        <a href="GetAllProduct" class="btn btn-danger" role="button" aria-pressed="true">Read</a>
      </div>
    </div>
  </div>    

<br><br>
 
  <div class="container">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Create new product</h4>
        <p class="card-text"></p>
       <a href="createproduct.jsp" class="btn btn-danger">Ad Product</a>
      </div>
    </div>
  </div>

<br><br>

  <div class="container">
    <div class="card">
      <div class="card-body">
        <h4 class="card-title">Remove product</h4>
        <p class="card-text"></p>
        <a href="deleteproduct.jsp" class="btn btn-danger">Remove</a>
      </div>
    </div>
  </div>

<br><br>

 
 </div>

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
   