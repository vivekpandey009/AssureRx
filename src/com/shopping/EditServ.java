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

public class EditServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
	
		
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
		
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		
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
				"<style type=\"text/css\">\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"*{\r\n" + 
				" margin: 0px;\r\n" + 
				" padding: 0px;\r\n" + 
				"}\r\n" + 
				"body{\r\n" + 
				" font-family: arial;\r\n" + 
				"}\r\n" + 
				".main{\r\n" + 
				"\r\n" + 
				" margin: 2%;\r\n" + 
				"}\r\n" + 
				"\r\n" + 
				".card{\r\n" + 
				"     width: 20%;\r\n" + 
				"     display: inline-block;\r\n" + 
				"     box-shadow: 2px 2px 20px black;\r\n" + 
				"     border-radius: 5px; \r\n" + 
				"     margin: 2%;\r\n" + 
				"    }\r\n" + 
				"\r\n" + 
				".image img{\r\n" + 
				"  width: 100%;\r\n" + 
				"  border-top-right-radius: 5px;\r\n" + 
				"  border-top-left-radius: 5px;\r\n" + 
				"  \r\n" + 
				"\r\n" + 
				" \r\n" + 
				" }\r\n" + 
				"\r\n" + 
				".title{\r\n" + 
				" \r\n" + 
				"  text-align: center;\r\n" + 
				"  padding: 10px;\r\n" + 
				"  \r\n" + 
				" }\r\n" + 
				"\r\n" + 
				"h1{\r\n" + 
				"  font-size: 20px;\r\n" + 
				" }\r\n" + 
				"\r\n" + 
				".des{\r\n" + 
				"  padding: 3px;\r\n" + 
				"  text-align: center;\r\n" + 
				" \r\n" + 
				"  padding-top: 10px;\r\n" + 
				"        border-bottom-right-radius: 5px;\r\n" + 
				"  border-bottom-left-radius: 5px;\r\n" + 
				"}\r\n" + 
				"button{\r\n" + 
				"  margin-top: 40px;\r\n" + 
				"  margin-bottom: 10px;\r\n" + 
				"  background-color: white;\r\n" + 
				"  border: 1px solid black;\r\n" + 
				"  border-radius: 5px;\r\n" + 
				"  padding:10px;\r\n" + 
				"}\r\n" + 
				"button:hover{\r\n" + 
				"  background-color: black;\r\n" + 
				"  color: white;\r\n" + 
				"  transition: .5s;\r\n" + 
				"  cursor: pointer;\r\n" + 
				"}\r\n" + 
				"\r\n" + 
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
				"<nav class=\"navbar navbar-expand-lg navbar-mainbg bg-primary\">\r\n" + 
				"        <a class=\"navbar-brand navbar-logo\" href=\"customerindex.jsp\">Assure Rx</a>\r\n" + 
				"        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n" + 
				"        <i class=\"fas fa-bars text-white\"></i>\r\n" + 
				"        </button>\r\n" + 
				"        <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n" + 
				"            <ul class=\"navbar-nav ml-auto\">\r\n" + 
				"            <!--     <div class=\"hori-selector\"><div class=\"left\"></div><div class=\"right\"></div></div>-->\r\n" + 
				"            \r\n" + 
				"                \r\n" + 
				"                <li class=\"nav-item\">\r\n" + 
				"      <a class=\"nav-link\" href=\"welcomeCustomer.jsp\"><i class=\"far fa-user\"></i>Profile</a>\r\n" + 
				"    </li>\r\n" + 
				"    \r\n" + 
				"    <li class=\"nav-item\">\r\n" + 
				"      <a class=\"nav-link\" href=\"shopping.jsp\"><i class=\"fas fa-shopping-cart\"></i>Shop</a>\r\n" + 
				"    </li> \r\n" + 
				"    \r\n" + 
				"     <li class=\"nav-item\">\r\n" + 
				"      <a class=\"nav-link\" href=\"selectCategory.jsp\"><i class=\"fas fa-search\"></i>Search</a>\r\n" + 
				"    </li> \r\n" + 
				"             \r\n" + 
				"                <li class=\"nav-item\">\r\n" + 
				"                    <a class=\"nav-link\" href=\"contactUs.jsp\"><i class=\"fas fa-phone\"></i>Contact Us</a>\r\n" + 
				"                </li>\r\n" + 
				"               \r\n" + 
				"                <li class=\"nav-item\">\r\n" + 
				"      <a class=\"nav-link\" href=\"CustomerLogout\"><i class=\"fas fa-sign-out-alt\"></i>Logout</a>\r\n" + 
				"    </li>\r\n" + 
				"                \r\n" + 
				"            </ul>\r\n" + 
				"        </div>\r\n" + 
				"    </nav>\r\n" + 
				"<!--ending of nav bar-->");
		out.println("<br><br><br>");
		
		out.println("<div class='conatainer'>");
		
		
		
		 List<String> list=(LinkedList<String>)session.getAttribute("cart");
		 List<Integer> li=(LinkedList<Integer>)session.getAttribute("quantity");
		 
		 Map<String, Integer> map=new HashMap<String,Integer>();
	      for(int i=0;i<list.size();i++) {
	    	  map.put(list.get(i), li.get(i));
	      }
	      session.setAttribute("map", map);
	      out.println("<br>");
	      out.println("<form action='RemoveServ' method='get'>");
	 	 out.println("<div align='center'>");
	 	 out.println("<h3>Please select the items to delete</h3><br>");
	 	 out.println("<table class='table'><thead class='dark'><tr><th>Product Name</th></tr></thead>");
	 	 
	 	 for (Map.Entry<String,Integer> entry : map.entrySet())  {
	 	 
	 		 out.println("<tbody><tr><td>"+entry.getKey()+"</td><td><input type='checkbox' name='items' value="+entry.getKey()+"></td></tr></tbody><br>");
	 	 
	 	 } 
	 	 //System.out.println("Key = " + entry.getKey() + 
	                   //          ", Value = " + entry.getValue());
	 	/* for(String k: list) {
	 		 out.println("<tr><td>"+k+"</td><td><input type='checkbox' name='items' value="+k+"></td></tr><br>");
	 	 }*/
	 	 out.println("<input type='submit' class='btn btn-danger' value='Remove'>");
	 	// out.print("<a href='AddToCartServ'>Click to go to cart</a>");
	 	 out.println("</table></div></form></div>");
	 	 
	 	 out.println("<br><br><br>");
	 	out.println("<footer class=\"page-footer bg-dark\">\r\n" + 
  				" \r\n" + 
  				" <div class=\"bg-primary\">\r\n" + 
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
  				"     <hr class=\"bg-primary mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 125px; height: 2px\">\r\n" + 
  				"     <p class=\"mt-2\">This is an e-Pharmaceutical company.</p>\r\n" + 
  				"   </div>\r\n" + 
  				"   \r\n" + 
  				"   <div class=\"col-md-2 mx-auto mb-4\">\r\n" + 
  				"   <h6 class=\"text-uppercase font-weight-bold\">Menu</h6>\r\n" + 
  				"   <hr class=\"bg-primary mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 85px; height: 2px\">\r\n" + 
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
  				"     <hr class=\"bg-primary mb-4 mt-0 d-inline-block mx-auto\" style=\"width: 75px; height: 2px\">\r\n" + 
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
	}

}
