package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DisplayCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
		
		
		CustomerDAOImpl dao = new CustomerDAOImpl();
		List<Customer> list = new LinkedList(dao.getAllCustomer());

		out.println("<table border=\"1\"><tr><th>ID</th><th>Customer Name</th><th>Address</th><th>Phone Number</th><th>Email ID</th></tr>");

		for (Iterator<Customer> iterator = list.iterator(); iterator.hasNext();) {
			Customer c = iterator.next();
			out.println("<tr><td>" + c.getId() + "</td><td>" + c.getFname() + "</td><td>"+"</td><td>" + c.getLname() + "</td><td>"+"</td><td>" + c.getGender() + "</td><td>" + c.getAddress()
					+ "</td><td>"+"</td><td>" + c.getCompanyname() + "</td><td>"+"</td><td>" + c.getCompanytype() + "</td><td>" +"</td><td>" + c.getGstnumber() + "</td><td>"+ c.getPhone() + "</td><td>" + c.getEmail() + "</td></tr>");

		}
		out.println("</table><br><br><a href=\"index.jsp\">Click here to go to Home Page</a>");

		out.close();
	}

}
