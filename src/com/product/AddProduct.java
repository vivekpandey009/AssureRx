package com.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
		
		
		String name = request.getParameter("name");
		String category = request.getParameter("category");
		String type = request.getParameter("type");
		String image=request.getParameter("image");
		int price = Integer.parseInt(request.getParameter("price"));
		int id= Integer.parseInt(request.getParameter("id"));
		

		Product product = new Product(id,name,category,price,type,image);
		ProductDAOImpl dao = new ProductDAOImpl();
		if (dao.addProduct(product)) {
			out.println("<div class=\'alert alert-success\'>\r\n" + 
					"    <strong>Success!</strong> Product Added Succesfully\r\n" + 
					"  </div>");
		
			request.getRequestDispatcher("createproduct.jsp").include(request, response);
		} else {
			out.println("<div class=\'alert alert-success\'>\r\n" + 
					"    <strong>In Valid!</strong> Product cannot be inserted\r\n" + 
					"  </div>");
		
			request.getRequestDispatcher("welcomeAdmin.jsp").include(request, response);
		}

		out.close();

	}

}
