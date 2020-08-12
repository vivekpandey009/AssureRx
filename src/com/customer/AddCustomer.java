package com.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String gender=request.getParameter("gender");
		String companyname=request.getParameter("companyname");
		String companytype=request.getParameter("companytype");
		String gstnumber=request.getParameter("gstnumber");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		String address = request.getParameter("address");
		
		
		
		
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
		
		
		Customer customer = new Customer(0, fname,lname,gender,companyname,companytype,gstnumber,phone,email,password,repassword,address);
		CustomerDAOImpl dao = new CustomerDAOImpl();
		if (dao.addCustomer(customer)) {
			
			out.println("<div class=\'alert alert-success\'>\r\n" + 
					"    <strong>Success!</strong>Customer Added Succesfully\r\n" + 
					"  </div>");
			
			
			
			request.getRequestDispatcher("loginchoice.jsp").include(request, response);
		} else {
			
			out.println("<div class=\'alert alert-danger\'>\r\n" + 
					"    <strong>Danger!</strong>Customer cannot be inserted\r\n" + 
					"  </div>");
			
			//out.println("<h3 align=\"centre\"></h3>");
			request.getRequestDispatcher("loginchoice.jsp").include(request, response);
		}

		out.close();

	}

}
