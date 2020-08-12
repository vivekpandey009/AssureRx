package com.shopping;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RemoveDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
		
		
		PrintWriter out=response.getWriter();
		Map<String,Integer> map=null;
  		HttpSession session=request.getSession();
  		map=(HashMap<String,Integer>)session.getAttribute("map");
  		String[] items=request.getParameterValues("items"); 
  		/*for(String k:items) {
  			map.remove(k);
  		}*/
  		 for (String k : items)  {
  			map.remove(k);
  		 }
  		
  		session.removeAttribute("map");
  		session.setAttribute("map", map);
  		out.println("<div class=\'container\'>");
		out.println("<div class=\'alert alert-success\'>\r\n" + 
				"    <strong>Success!</strong>Selected items have been removed Successfuly. Please Check the final Bill !!\r\n" + 
				"  </div>");
  		
  		RequestDispatcher rd=request.getRequestDispatcher("CheckOutServDemo");
  		rd.include(request, response);
	}

}
