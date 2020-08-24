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
 .main-content{
	width: 50%;
	border-radius: 20px;
	box-shadow: 0 5px 5px rgba(0,0,0,.4);
	margin: 5em auto;
	display: flex;
}
.company__info{
	background-color:#f32013;
	border-top-left-radius: 20px;
	border-bottom-left-radius: 20px;
	display: flex;
	flex-direction: column;
	justify-content: center;
	color: #fff;
}
.fa-android{
	font-size:3em;
}
@media screen and (max-width: 640px) {
	.main-content{width: 90%;}
	.company__info{
		display: none;
	}
	.login_form{
		border-top-left-radius:20px;
		border-bottom-left-radius:20px;
	}
}
@media screen and (min-width: 642px) and (max-width:800px){
	.main-content{width: 70%;}
}
.row > h2{
	color:#008080;
}
.login_form{
	background-color: #fff;
	border-top-right-radius:20px;
	border-bottom-right-radius:20px;
	border-top:1px solid #ccc;
	border-right:1px solid #ccc;
}
form{
	padding: 0 2em;
}
.form__input{
	width: 100%;
	border:0px solid transparent;
	border-radius: 0;
	border-bottom: 1px solid #aaa;
	padding: 1em .5em .5em;
	padding-left: 2em;
	outline:none;
	margin:1.5em auto;
	transition: all .5s ease;
}
.form__input:focus{
	border-bottom-color: #008080;
	box-shadow: 0 0 5px rgba(0,80,80,.4); 
	border-radius: 4px;
}
.btn{
	transition: all .5s ease;
	width: 70%;
	border-radius: 30px;
	color:#008080;
	font-weight: 600;
	background-color: #fff;
	border: 1px solid #008080;
	margin-top: 1.5em;
	margin-bottom: 1em;
}
.btn:hover, .btn:focus{
	background-color: #008080;
	color:#fff;
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
        <a class="navbar-brand navbar-logo" href="index.jsp">Assure Rx</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-bars text-white"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
            <!--     <div class="hori-selector"><div class="left"></div><div class="right"></div></div>-->
                <li class="nav-item">
                    <a class="nav-link" href="contactUs.jsp"><i class="fas fa-phone"></i>Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="aboutus.jsp"><i class="far fa-address-card"></i>About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="customerRegister.jsp"><i class="fas fa-sign-in-alt"></i>Sign Up</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="loginchoice.jsp"><i class="far fa-user"></i>Login</a>
                </li>
            </ul>
        </div>
    </nav>

    <!--ending of nav bar-->





	<!-- Main Content -->
	<div class="container-fluid">
		<div class="row main-content bg-danger text-center">
			<div class="col-md-4 text-center company__info">
				<span class="company__logo"><img src="images/assurerx.jpg" style="width: 180px; height: 120px"></span>
				<h4 class="company_title">Assure Rx</h4>
			</div>
			<div class="col-md-8 col-xs-12 col-sm-12 login_form ">
				<div class="container-fluid">
					<div class="row">
						<h2>Login as an Administrator</h2>
					</div>
					<div class="row">
						<form action="AdminLogin" method="get" class="form-group">
							<div class="row">
								<input type="text" name="aemail" id="aemail" class="form__input" placeholder="Email">
							</div>
							<div class="row">
								<!-- <span class="fa fa-lock"></span> -->
								<input type="password" name="password" id="password" class="form__input" placeholder="Password">
							</div>
							<div align="center">
                                 <button type="submit" class="btn btn-outline-danger" id="admin-log-btn">Login</button><br>
             
             </div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
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

</body>
</html>