package com.shopping;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddToCartDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      		response.setContentType("text/html");
      		
      		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 			response.setHeader("Pragma", "no-cache");
 			response.setHeader("Expires", "0");
      		
      		
      		PrintWriter out=response.getWriter();
      		List<String> cart=null;
      		HttpSession session=request.getSession();
      		 String n=(String)session.getAttribute("uname");  
 	       // out.print("User= "+n); 
      		 
      		out.println("<!DOCTYPE HTML>\r\n" + 
      				"<html>\r\n" + 
      				"<head>\r\n" + 
      				"<meta charset=\"utf-8\">\r\n" + 
      				"<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n" + 
      				"<!-- Font Awesome -->\r\n" + 
      				"<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.2/css/all.css\">\r\n" + 
      				"<!-- Google Fonts -->\r\n" + 
      				"<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap\">\r\n" + 
      				"<!-- Bootstrap core CSS -->\r\n" + 
      				"<link href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n" + 
      				"<!-- Material Design Bootstrap -->\r\n" + 
      				"<link href=\"https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css\" rel=\"stylesheet\">\r\n" + 
      				" \r\n" + 
      				"<style>\r\n" + 
      				"*{\r\n" + 
      				"\r\n" + 
      				"margin: 0; padding: 0; font-family: 'Josefin Sans' , sans-serif;\r\n" + 
      				"\r\n" + 
      				"}\r\n" + 
      				"\r\n" + 
      				"  /* Make the image fully responsive */\r\n" + 
      				"\r\n" + 
      				"  .carousel-inner img {\r\n" + 
      				"\r\n" + 
      				"    width: 100%;\r\n" + 
      				"\r\n" + 
      				"    height: 900px;\r\n" + 
      				"\r\n" + 
      				"  }\r\n" + 
      				"</style>\r\n" + 
      				"\r\n" + 
      				"<style>\r\n" + 
      				"\r\n" + 
      				"@import url('https://fonts.googleapis.com/css?family=Roboto');\r\n" + 
      				"\r\n" + 
      				"body{\r\n" + 
      				"	font-family: 'Roboto', sans-serif;\r\n" + 
      				"}\r\n" + 
      				"* {\r\n" + 
      				"	margin: 0;\r\n" + 
      				"	padding: 0;\r\n" + 
      				"}\r\n" + 
      				"i {\r\n" + 
      				"	margin-right: 10px;\r\n" + 
      				"}\r\n" + 
      				"/*----------multi-level-accordian-menu------------*/\r\n" + 
      				".navbar-logo{\r\n" + 
      				"	padding: 15px;\r\n" + 
      				"	color: #fff;\r\n" + 
      				"}\r\n" + 
      				".navbar-mainbg{\r\n" + 
      				"	background-color: #5161ce;\r\n" + 
      				"	padding: 0px;\r\n" + 
      				"}\r\n" + 
      				"#navbarSupportedContent{\r\n" + 
      				"	overflow: hidden;\r\n" + 
      				"	position: relative;\r\n" + 
      				"}\r\n" + 
      				"#navbarSupportedContent ul{\r\n" + 
      				"	padding: 0px;\r\n" + 
      				"	margin: 0px;\r\n" + 
      				"}\r\n" + 
      				"#navbarSupportedContent ul li a i{\r\n" + 
      				"	margin-right: 10px;\r\n" + 
      				"}\r\n" + 
      				"#navbarSupportedContent li {\r\n" + 
      				"	list-style-type: none;\r\n" + 
      				"	float: left;\r\n" + 
      				"}\r\n" + 
      				"#navbarSupportedContent ul li a{\r\n" + 
      				"	color: rgba(255,255,255,0.5);\r\n" + 
      				"    text-decoration: none;\r\n" + 
      				"    font-size: 15px;\r\n" + 
      				"    display: block;\r\n" + 
      				"    padding: 20px 20px;\r\n" + 
      				"    transition-duration:0.6s;\r\n" + 
      				"	transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);\r\n" + 
      				"    position: relative;\r\n" + 
      				"}\r\n" + 
      				"#navbarSupportedContent>ul>li.active>a{\r\n" + 
      				"	color: #5161ce;\r\n" + 
      				"	background-color: transparent;\r\n" + 
      				"	transition: all 0.7s;\r\n" + 
      				"}\r\n" + 
      				"#navbarSupportedContent a:not(:only-child):after {\r\n" + 
      				"	content: \"\\f105\";\r\n" + 
      				"	position: absolute;\r\n" + 
      				"	right: 20px;\r\n" + 
      				"	top: 10px;\r\n" + 
      				"	font-size: 14px;\r\n" + 
      				"	font-family: \"Font Awesome 5 Free\";\r\n" + 
      				"	display: inline-block;\r\n" + 
      				"	padding-right: 3px;\r\n" + 
      				"	vertical-align: middle;\r\n" + 
      				"	font-weight: 900;\r\n" + 
      				"	transition: 0.5s;\r\n" + 
      				"}\r\n" + 
      				"#navbarSupportedContent .active>a:not(:only-child):after {\r\n" + 
      				"	transform: rotate(90deg);\r\n" + 
      				"}\r\n" + 
      				"\r\n" + 
      				"}\r\n" + 
      				"\r\n" + 
      				"</style>\r\n" + 
      				"\r\n" + 
      				"</head>\r\n" + 
      				"<body>\r\n" + 
      				"<!-- creating a nav bar menu-->\r\n" + 
      				"<nav class=\"navbar navbar-expand-lg navbar-mainbg bg-danger\">\r\n" + 
      				"        <a class=\"navbar-brand navbar-logo\" href=\"adminIndex.jsp\">Assure Rx</a>\r\n" + 
      				"        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n" + 
      				"        <i class=\"fas fa-bars text-white\"></i>\r\n" + 
      				"        </button>\r\n" + 
      				"        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n" + 
      				"            <ul class=\"navbar-nav ml-auto\">\r\n" + 
      				"            <!--     <div class=\"hori-selector\"><div class=\"left\"></div><div class=\"right\"></div></div>-->\r\n" + 
      				"            <li class=\"nav-item\">\r\n" + 
      				"                    <a class=\"nav-link\" href=\"welcomeAdmin.jsp\"><i class=\"fas fa-tachometer-alt\"></i>Dashboard</a>\r\n" + 
      				"                </li>\r\n" + 
      				"                \r\n" + 
      				"                <li class=\"nav-item\">\r\n" + 
      				"      <a class=\"nav-link\" href=\"adminprofile.jsp\"><i class=\"far fa-user\"></i>Profile</a>\r\n" + 
      				"    </li>\r\n" + 
      				"    \r\n" + 
      				"    <li class=\"nav-item\">\r\n" + 
      				"      <a class=\"nav-link\" href=\"adminShopping.jsp\"><i class=\"fas fa-shopping-cart\"></i>Shop</a>\r\n" + 
      				"    </li>          \r\n" + 
      				"                <li class=\"nav-item\">\r\n" + 
      				"                    <a class=\"nav-link\" href=\"contactUs.jsp\"><i class=\"fas fa-phone\"></i>Contact Us</a>\r\n" + 
      				"                </li>\r\n" + 
      				"                <li class=\"nav-item\">\r\n" + 
      				"                    <a class=\"nav-link\" href=\"aboutus.jsp\"><i class=\"far fa-address-card\"></i>About Us</a>\r\n" + 
      				"                </li>\r\n" + 
      				"                <li class=\"nav-item\">\r\n" + 
      				"      <a class=\"nav-link\" href=\"AdminLogout\"><i class=\"fas fa-sign-out-alt\"></i>Logout</a>\r\n" + 
      				"    </li>\r\n" + 
      				"                \r\n" + 
      				"            </ul>\r\n" + 
      				"        </div>\r\n" + 
      				"    </nav>\r\n" + 
      				"<!--ending of nav bar--><br><br><br><br>");
      		 
      		 out.println("<div align='center'");
      		
      		cart=(LinkedList<String>)session.getAttribute("cart");
      		
      		if(cart==null||cart.size()<=0)
      		{
      			cart=new LinkedList<String>();
      		}
      		String [] items= request.getParameterValues("items");
      		List<Integer> quantity=new LinkedList<Integer>();

      	  for( String k:items)
      	  {
      	    cart.add(k);// {'med1', 'med2'}
      	  }
      	 
      	  int qty[] = new int[cart.size()];
      	  int i=-1;
      	  for(String med : cart){
      	        qty[++i] = Integer.parseInt(request.getParameter("qty-"+med));
      	  }
      	 
      	  for(int j=0;j<qty.length;j++){
      	    quantity.add(qty[j]);
      	  }
      		
     /* 	     String [] items= request.getParameterValues("items"); 
      		
      		for( String k:items)
      		{
      			cart.add(k);
      		}*/
      	 
      	  session.setAttribute("quantity", quantity);
      		session.setAttribute("cart", cart);
      	//	Map<String,Integer> amap=new HashMap<String,Integer>();
      		
      		 
   		 Map<String, Integer> map=new HashMap<String,Integer>();
   	      for(int j=0;j<cart.size();j++) {
   	    	  map.put(cart.get(j), quantity.get(j));
   	      }
   	      session.setAttribute("map", map);
      		
      		int size=map.size();
      		
      		
      		
      		
      		out.println("<div class=\"container\">\r\n" + 
      				"  <h2></h2>\r\n" + 
      				"    <div class=\"card\">\r\n" + 
      				"    <div class=\"card-body\">\r\n" + 
      				"      <h4 class=\"card-title\">Shopping Options</h4>\r\n" + 
      				"      <p class=\"card-text\"></p>\r\n" + 
      				"      <i class=\"fas fa-shopping-cart\"></i> "+size+"  <br> "+
      				"      <br><a href=\"EditDemo\" class=\"card-link\">Edit Cart and Checkout</a>\r\n" + 
      				"      <a href=\"CheckOutServDemo\" class=\"card-link\">Check Out</a><br><br>\r\n" + 
      				"     "+
      				"    </div>\r\n" + 
      				"  </div>\r\n" + 
      				"</div>");
      		out.println("<br><br><br>");
      		out.println("");
      		
      		
      		
      		
      		
      		
      		
      		
      //		out.println("<a href='EditServ'>Edit cart</a>");
      	
      		out.println("</div></div>");
      	//	out.println();
      		//request.getRequestDispatcher("shopping.jsp").include(request, response);
      		
      		out.println("<footer class=\"page-footer bg-dark\">\r\n" + 
      				" \r\n" + 
      				" <div class=\"bg-danger\">\r\n" + 
      				"   <div class=\"container\">\r\n" + 
      				"     <div class=\"row py-4 d-flex align-items-center\">\r\n" + 
      				"       \r\n" + 
      				"       <div class=\"col-md-12 text-center\">\r\n" + 
      				"       <a href=\"#\"><i class=\"fab fa-facebook-f text-white mr-4\"></i></a>\r\n" + 
      				"       <a href=\"#\"><i class=\"fab fa-twitter text-white mr-4\"></i></a>\r\n" + 
      				"       <a href=\"#\"><i class=\"fab fa-instagram text-white mr-4\"></i></a>\r\n" + 
      				"       </div>\r\n" + 
      				"     </div>\r\n" + 
      				"   </div>\r\n" + 
      				" </div>\r\n" + 
      				" \r\n" + 
      				" <div class=\"container text-center text-md-left mt-5\">\r\n" + 
      				"  <div class=\"row\">\r\n" + 
      				"   \r\n" + 
      				"   <div class=\"col-md-3 mx-auto mb-4\">\r\n" + 
      				"     <h6 class=\"text-uppercase font-weight-bold\">Assure Rx</h6>\r\n" + 
      				"     <hr class=\"bg-danger mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 125px; height: 2px\">\r\n" + 
      				"     <p class=\"mt-2\">This is an e-Pharmaceutical company.</p>\r\n" + 
      				"   </div>\r\n" + 
      				"   \r\n" + 
      				"   <div class=\"col-md-2 mx-auto mb-4\">\r\n" + 
      				"   <h6 class=\"text-uppercase font-weight-bold\">Menu</h6>\r\n" + 
      				"   <hr class=\"bg-danger mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 85px; height: 2px\">\r\n" + 
      				"   \r\n" + 
      				"   <ul class=\"list-unstyled\">\r\n" + 
      				"     <li class=\"my-2\"><i class=\"fas fa-sign-in-alt\"><a href=\"customerRegister.jsp\"> Sign up </a></i>\r\n" + 
      				"     <li class=\"my-2\"><i class=\"fas fa-user-alt\"><a href=\"loginchoice.jsp\"> Login </a></i>\r\n" + 
      				"     <li class=\"my-2\"><i class=\"fas fa-address-book\"><a href=\"contactUs.jsp\"> Contact Us </a></i>\r\n" + 
      				"     <li class=\"my-2\"><i class=\"fas fa-globe\"><a href=\"aboutus.jsp\"> About Us </a></i> \r\n" + 
      				"     \r\n" + 
      				"   </ul>\r\n" + 
      				"   </div>\r\n" + 
      				"   \r\n" + 
      				"   <div class=\"col-md-3 mx-auto mb-4\">\r\n" + 
      				"     <h6 class=\"text-uppercase font-weight-bold\">Contact</h6>\r\n" + 
      				"     <hr class=\"bg-danger mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 75px; height: 2px\">\r\n" + 
      				"     \r\n" + 
      				"     <ul class=\"list-unstyled\">\r\n" + 
      				"     <li class=\"my-2\"><i class=\"fas fa-home mr-3\"></i>Office no. 4, Nangal Raya, New Delhi-110046</li>\r\n" + 
      				"     <li class=\"my-2\"><i class=\"fas fa-envelope mr-3\"></i>assurepharmacy@gmail.com</li>\r\n" + 
      				"     <li class=\"my-2\"><i class=\"fas fa-phone mr-3\"></i>9810046343</li>\r\n" + 
      				"     </ul>\r\n" + 
      				"   </div>\r\n" + 
      				"  </div>\r\n" + 
      				" </div>\r\n" + 
      				" \r\n" + 
      				" \r\n" + 
      				" <div class=\"footer-copyright text-center py-3\">\r\n" + 
      				"  <p>&copy; Copyright\r\n" + 
      				"  <a href=\"index.jsp\">Assure Rx</a></p>\r\n" + 
      				" </div>\r\n" + 
      				" </footer>\r\n" + 
      				"    \r\n" + 
      				"    <!-- JQuery -->\r\n" + 
      				"<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n" + 
      				"<!-- Bootstrap tooltips -->\r\n" + 
      				"<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js\"></script>\r\n" + 
      				"<!-- Bootstrap core JavaScript -->\r\n" + 
      				"<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js\"></script>\r\n" + 
      				"<!-- MDB core JavaScript -->\r\n" + 
      				"<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js\"></script>\r\n" + 
      				"\r\n" + 
      				"\r\n" + 
      				"</body>\r\n" + 
      				"\r\n" + 
      				"</html>\r\n" + 
      				"\r\n" + 
      				"");
      		
      		
    		out.close();
      		
	}

	
}