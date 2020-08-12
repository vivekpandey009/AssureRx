package com.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RemoveCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
			response.setContentType("text/html");

			 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
				response.setHeader("Pragma", "no-cache");
				response.setHeader("Expires", "0");
			
			int id = Integer.parseInt(request.getParameter("id"));

			CustomerDAOImpl dao = new CustomerDAOImpl();
			if (dao.deleteCustomer(id)) {
				

				out.println("<div class=\'alert alert-success\'>\r\n" + 
						"    <strong>Success!</strong>Employee Deleted Succesfully\r\n" + 
						"  </div>");
				
				//out.println("<h3 align=\"centre\"></h3>");
				request.getRequestDispatcher("welcomeAdmin.jsp").include(request, response);
			} else {
				

				out.println("<div class=\'alert alert-danger\'>\r\n" + 
						"    <strong>Danger!</strong>Employee was not deleted\r\n" + 
						"  </div>");
				
			//	out.println("<h3 align=\"centre\"></h3>");
				request.getRequestDispatcher("welcomeAdmin.jsp").include(request, response);
			}

			out.close();
	}

}
