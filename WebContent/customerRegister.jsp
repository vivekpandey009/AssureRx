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
 .register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
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
   
<nav class="navbar navbar-expand-lg navbar-mainbg bg-primary">
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
	<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="images/assurerx.jpg" style="width: 180px; height: 120px"  alt=""/>
                        <h3>Welcome</h3><br><br>
                        
                         <a href="loginchoice.jsp" class="btn btn-outline-success">Login</a><br/>
                    </div>
                   
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            
                            
                        </ul>
                    <form action="AddCustomer" method="GET" >    
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Register</h3>
                                 
                                <div class="row register-form">
                                    <div class="col-md-6">
                                    
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name *" name="fname" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" name="lname" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" placeholder="Password *" name="password" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control"  placeholder="Confirm Password *" name="repassword" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="Company Name *" name="companyname" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="GST Number *" name="gstnumber" />
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="Male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="Female">
                                                    <span>Female </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="Other">
                                                    <span>Other </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email *" name="email" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="phone" class="form-control" placeholder="Your Phone *"  />
                                        </div>
                                        <div class="form-group">
                                            <select name="companytype" class="form-control">
                                                <option class="hidden"  selected disabled>Please select your Company Type</option>
                                                <option value="Private Limited">Private Limited</option>
                                                <option value="Public">Public</option>
                                                <option value="Proprietor">Proprietor</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Address *" name="address" />
                                        </div>
                                        <input type="submit" class="btnRegister"  value="Register"/>
                                        
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                        </form>
                    </div>
                    
                </div>
	
</div>
><br><br>







<!-- contact button -->
 <footer class="page-footer bg-dark">
 
 <div class="bg-primary">
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
     <hr class="bg-primary mb-4 mt-0 d-inline-block mx-auto" style="width: 125px; height: 2px">
     <p class="mt-2">This is an e-Pharmaceutical company.</p>
   </div>
   
   <div class="col-md-2 mx-auto mb-4">
   <h6 class="text-uppercase font-weight-bold">Menu</h6>
   <hr class="bg-primary mb-4 mt-0 d-inline-block mx-auto" style="width: 85px; height: 2px">
   
   <ul class="list-unstyled">
     <li class="my-2"><i class="fas fa-sign-in-alt"><a href="customerRegister.jsp"> Sign up </a></i>
     <li class="my-2"><i class="fas fa-user-alt"><a href="loginchoice.jsp"> Login </a></i>
     <li class="my-2"><i class="fas fa-address-book"><a href="contactUs.jsp"> Contact Us </a></i>
     <li class="my-2"><i class="fas fa-globe"><a href="aboutus.jsp"> About Us </a></i> 
     
   </ul>
   </div>
   
   <div class="col-md-3 mx-auto mb-4">
     <h6 class="text-uppercase font-weight-bold">Contact</h6>
     <hr class="bg-primary mb-4 mt-0 d-inline-block mx-auto" style="width: 75px; height: 2px">
     
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