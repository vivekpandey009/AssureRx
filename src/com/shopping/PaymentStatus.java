package com.shopping;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PaymentStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
		
		PrintWriter out =response.getWriter();
		out.println("<html><body>");
		out.println("<div align='center'><h3>Your order has been placed !! </h3>");
		out.println("<h3> THANK YOU FOR SHOPPING</h3>");
		out.print("<h3>You will be redirected to your profile page in 4 sec. Dont Click any button</h3></div>");
		response.setHeader("Refresh", "5; URL=index.jsp");
		out.println("</body></html>");
	}

}
