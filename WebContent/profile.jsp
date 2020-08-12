
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.customer.CustomerLogin" %>
    <%
    HttpSession s=request.getSession();  
    String name=(String)s.getAttribute("uname");
   // String phone=(String)s.getAttribute("phone");
   // String address=(String)s.getAttribute("address");
   // String email=(String)s.getAttribute("email");
    
    
    
    %>
<!DOCTYPE HTML>

<html>

<head>

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

    @import url('https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap');

   

    *{

      margin: 0;

      padding: 0;

      box-sizing: border-box;

      list-style: none;

      font-family: 'Josefin Sans', sans-serif;

    }

   

    body{

       background-color: #f3f3f3;

    }

   

    .wrapper{

      position: absolute;

      top: 50%;

      left: 50%;

      transform: translate(-50%,-50%);

      width: 450px;

      display: flex;

      box-shadow: 0 1px 20px 0 rgba(69,90,100,.08);

    }

   

    .wrapper .left{

      width: 35%;

      background: linear-gradient(to right,#7e8888,#7e8b8b);

      padding: 30px 25px;

      border-top-left-radius: 5px;

      border-bottom-left-radius: 5px;

      text-align: center;

      color: #fff;

    }

   

    .wrapper .left img{

      border-radius: 5px;

      margin-bottom: 10px;

    }

   

    .wrapper .left h4{

      margin-bottom: 10px;

    }

   

    .wrapper .left p{

      font-size: 12px;

    }

   

    .wrapper .right{

      width: 65%;

      background: #fff;

      padding: 30px 25px;

      border-top-right-radius: 5px;

      border-bottom-right-radius: 5px;

    }

   

    .wrapper .right .info,

    .wrapper .right .projects{

      margin-bottom: 25px;

    }

   

    .wrapper .right .info h3,

    .wrapper .right .projects h3{

        margin-bottom: 15px;

        padding-bottom: 5px;

        border-bottom: 1px solid #e0e0e0;

        color: #353c4e;

      text-transform: uppercase;

      letter-spacing: 5px;

    }

   

    .wrapper .right .info_data,

    .wrapper .right .projects_data{

      display: flex;

      justify-content: space-between;

    }

   

    .wrapper .right .info_data .data,

    .wrapper .right .projects_data .data{

      width: 45%;

    }

   

    .wrapper .right .info_data .data h4,

    .wrapper .right .projects_data .data h4{

        color: #353c4e;

        margin-bottom: 5px;

    }

   

    .wrapper .right .info_data .data p,

    .wrapper .right .projects_data .data p{

      font-size: 13px;

      margin-bottom: 10px;

      color: #919aa3;

    }

   

    .wrapper .social_media ul{

      display: flex;

    }

   

    .wrapper .social_media ul li{

      width: 45px;

      height: 45px;

      background: linear-gradient(to right,#7f8585,#777c7c);

      margin-right: 10px;

      border-radius: 5px;

      text-align: center;

      line-height: 45px;

    }

   

    .wrapper .social_media ul li a{

      color :rgb(207, 56, 56);

      display: block;

      font-size: 18px;

    }

    </style>
    <style>
    .fa {
  padding: 20px;
  font-size: 30px;
  width: 50px;
  text-align: center;
  text-decoration: none;
}

/* Add a hover effect if you want */
.fa:hover {
  opacity: 0.7;
}

/* Set a specific color for each brand */

/* Facebook */
.fa-facebook {
  background: #3B5998;
  color: white;
}

/* Twitter */
.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-instagram {
  background: #55ACEE;
  color: white;
}
    </style>

</head>

<body>

<!-- creating a nav bar menu-->

<nav class="navbar navbar-expand-lg  bg-dark">

  <a class="navbar-brand" href="customerindex.jsp">Assure Rx</a>

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

      <a class="nav-link" href="welcomeCustomer.jsp">Profile</a>

    </li>

 

    <li class="nav-item">

      <a class="nav-link" href="shopping.jsp">Shop Meds</a>

    </li>
    
    <li class="nav-item">

      <a class="nav-link" href="selectCategory.jsp">Search Meds By Category</a>

    </li>

 

 

    <li class="nav-item">

      <a class="nav-link" href="contactUs.jsp">Contact Us</a>

    </li>
    
    
    <li class="nav-item">

      <a class="nav-link" href="CustomerLogout">Logout </a>

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

<br><br><br>
<br><br><br>
<div class="wrapper">

    <div class="left">

        <img src="https://image.freepik.com/free-vector/letter-logo-design-template_23987-87.jpg"

        alt="user" width="100">
		<h3>Assure Rx</h3>

        <h4>Customer</h4>

       

    </div>

    <div class="right">

        <div class="info">

            <h3>Information</h3>

            <div class="info_data">

            <div class="data">

                    <h4>Username</h4>

                    <p><%=name %></p>

                 </div><br>

               

            </div>

        </div>

   <!-- 

      <div class="projects">

            <div class="projects_data">

                <div class="data">

                    <h4>Email</h4>

                    <p></p> 

                 </div><br>

            </div>

        </div>

 

        <div class="phone">

            <div class="phone_data">

                <div class="data">

                    <h4>Phone</h4>

                     <p></p>

               </div>

            </div>

        </div>

        <div class="user">

            <div class="user_data">

                <div class="data">

                    <h4>Address</h4>

                     <p></p>

               </div>

            </div>

        </div>

   -->

        <div class="social_media">

            <ul>
            
            


              <li><a href="#" class="fa fa-facebook"></a></li>

              <li><a href="#" class="fa fa-twitter"></a></li>

              <li><a href="#" class="fa fa-instagram"></a></li>

          </ul>

      </div>

    </div>

</div>

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
