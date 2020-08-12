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
import javax.servlet.http.HttpSession;


public class CustomerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
	//	System.out.println(uname);
	//	System.out.println(password);
		
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
		
		
		CustomerDAOImpl dao = new CustomerDAOImpl();
		List<Customer> list = new LinkedList(dao.getAllCustomer());
		
		out.println("<html><head><link rel=\'stylesheet\' href=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\'>");
		out.println(" <script src=\'https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\'></script>");
		out.println("<script src=\'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\'></script>");
		out.println("<script src=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\'></script>");
		out.println("</head><body");
		
		for (Iterator<Customer> iterator = list.iterator(); iterator.hasNext();)
		{
			Customer c = iterator.next();
			
		
		if((c.getEmail().equals(email) || c.getPassword().equals(password))) 
			{
			 HttpSession session=request.getSession();  
		        session.setAttribute("fname",c.getFname()); 
		        session.setAttribute("lname",c.getLname());
		        session.setAttribute("gender", c.getGender());
		        session.setAttribute("companyname", c.getCompanyname());
		        session.setAttribute("companytype", c.getCompanytype());
		        session.setAttribute("gstnumber", c.getGstnumber());
		        session.setAttribute("phone", c.getPhone());
		        session.setAttribute("email", c.getEmail());
		        session.setAttribute("address", c.getAddress());
		        out.println("<div class=\'container\'>");
				out.println("<div class=\'alert alert-success\'>\r\n" + 
						"    <strong>Success!</strong> Customer verified!!\r\n" + 
						"  </div>");
				request.getRequestDispatcher("customerindex.jsp").include(request, response);
			
			}
		else {
			
			out.println("<div class=\'container\'>");
			out.println("<div class=\'alert alert-danger\'>\r\n" + 
					"    <strong>Danger!</strong> Login unsuccessfull!!\r\n" + 
					"  </div>");
			request.getRequestDispatcher("index.jsp").include(request, response);
				
			}
		
		 
			
		out.println("</div>");
		out.println("</body></html>");
		out.close();
			
			
		
		}
	}

}
