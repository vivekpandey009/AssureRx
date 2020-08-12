package com.admin;

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

/*
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
	//	System.out.println(uname);
	//	System.out.println(password);
		
		AdminDAOImpl dao = new AdminDAOImpl();
		List<Admin> list = new LinkedList(dao.getAllAdmin());
	
		
		for (Iterator<Admin> iterator = list.iterator(); iterator.hasNext();)
		{
			Admin a = iterator.next();
			
		
		if((a.getName().equals(uname) && a.getPassword().equals(password))) 
			{
			 HttpSession session=request.getSession();  
		        session.setAttribute("uname",uname);  
				out.println("<h3 align=\"centre\">Admin verified!!</h3>");
				request.getRequestDispatcher("welcomeAdmin.jsp").include(request, response);
			
				break;
			}
		else {
			out.println("<h3 align=\"centre\">Admin Credentials could not be verified!!</h3>");
			request.getRequestDispatcher("loginchoice.jsp").include(request, response);
			
		}
	
			
			
		
		}
	}

}
*/


public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String email = request.getParameter("aemail");
		String password = request.getParameter("password");
	
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
		
		
		//	System.out.println(uname);
	//	System.out.println(password);
		
		AdminDAOImpl dao = new AdminDAOImpl();
		List<Admin> list = new LinkedList(dao.getAllAdmin());
	
		out.println("<html><head><link rel=\'stylesheet\' href=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\'>");
		out.println(" <script src=\'https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\'></script>");
		out.println("<script src=\'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\'></script>");
		out.println("<script src=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\'></script>");
		out.println("</head><body");
		for (Iterator<Admin> iterator = list.iterator(); iterator.hasNext();)
		{
			Admin a = iterator.next();
			
		
		if((a.getEmail().equals(email) && a.getPassword().equals(password))) 
			{
			 HttpSession session=request.getSession();  
		        session.setAttribute("email",email);  
				out.println("<div class=\'container\'>");
				out.println("<div class=\'alert alert-success\'>\r\n" + 
						"    <strong>Success!</strong> Admin verified!!\r\n" + 
						"  </div>");
		       
				request.getRequestDispatcher("welcomeAdmin.jsp").include(request, response);
			
				break;
			}
		else {
			out.println("<div class=\'alert alert-danger\'>\r\n" + 
					"    <strong>Danger!</strong> Admin Credentials could not be verified!!\r\n" + 
					"  </div>");
			
			request.getRequestDispatcher("loginchoice.jsp").include(request, response);
			
		}
	
		out.println("</div>");
		out.println("</body></html>");
		out.close();
			
		
		}
	}

}
