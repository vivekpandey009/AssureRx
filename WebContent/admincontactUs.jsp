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
        @import url('https://fonts.googleapis.com/css?family=Roboto');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  outline: none;
  font-family: 'Roboto', sans-serif;
}

body{
  background: url('bg.jpg') no-repeat top center;
  background-size: cover;
  height: 100vh;
}

.wrapper{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 100%;
  max-width: 550px;
  background: rgba(0,0,0,0.8);
  padding: 30px;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.3);
}

.wrapper .title h1{
  color: #c5ecfd;
  text-align: center;
  margin-bottom: 25px;
}

.contact-form{
  display: flex;
}

.input-fields{
  display: flex;
  flex-direction: column;
  margin-right: 4%;
}

.input-fields,
.msg{
  width: 48%;
}

.input-fields .input,
.msg textarea{
  margin: 10px 0;
  background: transparent;
  border: 0px;
  border-bottom: 2px solid #c5ecfd;
  padding: 10px;
  color: #c5ecfd;
  width: 100%;
}

.msg textarea{
  height: 212px;
}

::-webkit-input-placeholder {
  /* Chrome/Opera/Safari */
  color: #c5ecfd;
}
::-moz-placeholder {
  /* Firefox 19+ */
  color: #c5ecfd;
}
:-ms-input-placeholder {
  /* IE 10+ */
  color: #c5ecfd;
}

.btn {
    background: #39b7dd;
    text-align: center;
    padding: 15px;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
    text-transform: uppercase;
}

@media screen and (max-width: 600px){
  .contact-form{
    flex-direction: column;
  }
  .msg textarea{
    height: 80px;
  }
  .input-fields,
  .msg{
    width: 100%;
  }
}
    </style>

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
</head>
<body>
<!-- creating a nav bar menu-->
<nav class="navbar navbar-expand-lg  bg-dark">
  <a class="navbar-brand" href="adminIndex.jsp">Assure Rx</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <!--
        <li class="nav-item active">
        <a class="nav-link" href="loginchoice.html">Login <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="reg.html">Register</a>
      </li>
    -->
    <li class="nav-item">
      <a class="nav-link" href="profile.jsp">Profile</a>
    </li>

<li class="nav-item">
      <a class="nav-link" href="welcomeAdmin.jsp">Dashboard</a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="shopping.jsp">Shop Meds</a>
    </li>


    <li class="nav-item">
      <a class="nav-link" href="admincontactUs.jsp">Contact Us</a>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="AdminLogout">Logout</a>
    </li>


      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
      </li>
    </ul>
   
  </div>
</nav>
<!--ending of nav bar-->


<%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0"); %>

</header>

<div class="wrapper">
    <div class="title">
      <h1>Contact Us</h1>
    </div>
    <div class="contact-form">
      <div class="input-fields">
          <form action="index.jsp" method="GET">
        <input type="text" class="input" placeholder="Name">
        <input type="text" class="input" placeholder="Email Address">
        <input type="text" class="input" placeholder="Phone">
        <input type="text" class="input" placeholder="Subject">
      </div>
      <div class="msg">
        <textarea placeholder="Message"></textarea>
        <button type="submit" class="btn btn-outline-primary">Submit</button>
      </form>
      </div>
    </div>
  </div>
<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>
<br><br><br><br><br>
<!-- contact button -->
<section class="bg-primary">
<article class="py-5 text-center">
<div>
<h3>+91 9810046343</h3>
<p>You can also call us on this number</p>
<button class="btn btn-warning">Contact us</button>
</div>
</article>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>
    