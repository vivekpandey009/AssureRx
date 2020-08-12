package com.shopping;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PaymentServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
		
		
		PrintWriter out =response.getWriter();
		String p=request.getParameter("pay");
		 if(p.equals(null)) {
			 out.print("Please Select a valid method");
			 RequestDispatcher rd=request.getRequestDispatcher("CheckOutServ");  
		        rd.include(request, response);  
		 }
		 else if(p.equalsIgnoreCase("card")) {
			 RequestDispatcher rd=request.getRequestDispatcher("cardPayment.jsp");  
		        rd.forward(request, response);  
			 
		 }
		 else if(p.equalsIgnoreCase("cash")) {
			 RequestDispatcher rd=request.getRequestDispatcher("PaymentStatus");  
		        rd.forward(request, response);  
			 
		 }
	 
	}

}
