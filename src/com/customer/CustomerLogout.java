package com.customer;
import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class CustomerLogout extends HttpServlet {  
        protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
           
            
           
        	
        	response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
           
              
            HttpSession session=request.getSession();  
            session.invalidate();  

              
            out.println("<html><head> <link rel=\'stylesheet\' href=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css\'>");
    		out.println(" <script src=\'https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\'></script>");
    		out.println(" <script src=\'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\'></script>");
    		out.println("  <script src=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js\'></script>\r\n");
    		out.println("</head><body>");
    		out.println("<div class=\'alert alert-Success\'>\r\n" + 
    				"    <strong>Success!</strong> You are successfully logged out!.\r\n" + 
    				"  </div>");           
          //  out.print("/div");
            out.println("</body></html>");
            request.getRequestDispatcher("index.jsp").include(request, response);
              
            out.close();  
    }  
}  
