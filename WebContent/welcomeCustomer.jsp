
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.customer.CustomerLogin" %>
    <%
    HttpSession s=request.getSession();  
    String fname=(String)s.getAttribute("fname");
    String lname=(String)s.getAttribute("lname");
    String gender=(String)s.getAttribute("gender");
    String companyname=(String)s.getAttribute("companyname");
    String companytype=(String)s.getAttribute("companytype");
    String gstnumber=(String)s.getAttribute("gstnumber");
    String phone=(String)s.getAttribute("phone");
    String address=(String)s.getAttribute("address");
    String email=(String)s.getAttribute("email");
    
    
    
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

  width: 890px;

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

  width: 85%;

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

  color :rgb(233, 250, 248);

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
background: #d1236bcb;
color: white;
}
</style>

</head>

<body>


<div class="wrapper">

<div class="left">

    <img src="images/assurerx.jpg"

    alt="user" height="250" width="250">
    <br><br>
    <h3>Assure Rx</h3>

    <h4>Customer</h4>

   

</div>

<div class="right">

    <div class="info">

        <h2 style="color:blue">User Profile</h2><br>

        <div class="info_data">

        <div class="data">

                <h4>Username</h4>

                <p><%=fname+" "+lname %></p>

             </div><br>

         
            <div class="data">

                <h4>Gender</h4>

                <p><%=gender %></p>

             </div><br>

        </div>

    </div>


<div class="projects">

        <div class="projects_data">

            <div class="data">

                <h4>Company Name</h4>

                <p><%=companyname %></p>

             </div><br>

       
            <div class="data">

                <h4>Company type</h4>

                <p><%=companytype %></p>

             </div><br>

        </div>

    </div>
   
    <div class="projects">

        <div class="projects_data">

            <div class="data">

                <h4>GST Number</h4>

                <p><%=gstnumber %></p>

             </div><br>

        </div>

    </div>

  <div class="projects">

        <div class="projects_data">

            <div class="data">

                <h4>Email</h4>

                <p><%=email %></p>

             </div><br>

       

            <div class="data">

                <h4>Phone</h4>

                 <p><%=phone %></p>

           </div>

        </div>

    </div>

    <div class="user">

        <div class="user_data">

            <div class="data">

                <h4>Address</h4>

                 <p><%=address %></p>

           </div>

        </div>

    </div>


    <div align="center">
    <div class="social_media">
       

       
       

<ul>
          <li><a href="#" class="fa fa-facebook"></a></li>

          <li><a href="#" class="fa fa-twitter"></a></li>

          <li><a href="#" class="fa fa-instagram"></a></li>
</ul>
     
        </div>
        
        <a href="customerindex.jsp" class="btn btn-outline-success">Home Page</a>
  </div>

</div>

</div>

</body>

</html>
