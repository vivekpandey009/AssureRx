package com.admin;
import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class AdminLogout extends HttpServlet {  
        protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma", "no-cache");
			response.setHeader("Expires", "0");
			
			out.println("<div class=\'alert alert-Success\'>\r\n" + 
    				"    <strong>Success!</strong> You are successfully logged out!.\r\n" + 
    				"  </div>");     
            request.getRequestDispatcher("index.jsp").include(request, response);  
              
           
            
            HttpSession session=request.getSession();  
            session.invalidate();  
              
          
              
            out.close();  
    }  
}  
