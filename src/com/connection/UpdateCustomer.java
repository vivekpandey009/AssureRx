package com.connection;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.CustomerDAOImpl;

public class UpdateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		int id = Integer.parseInt(request.getParameter("id"));
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
		
		CustomerDAOImpl dao = new CustomerDAOImpl();
		  
		if(dao.updateCustomer(id,fname,lname,gender,companyname,companytype,gstnumber,phone,email,password,repassword,address)) {
			out.println("<h3 align=\"centre\">Employee Updated Succesfully</h3>");
			request.getRequestDispatcher("addEmployee.jsp").include(request, response);
		}
		else {
			out.println("<h3 align=\"centre\">Employee Updation failde</h3>");
			request.getRequestDispatcher("addEmployee.jsp").include(request, response);
	}

}
}