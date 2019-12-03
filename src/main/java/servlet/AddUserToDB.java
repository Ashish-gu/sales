package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import user.User;
import user.UserHandler;

@WebServlet(urlPatterns="/AddUserToDB")
public class AddUserToDB extends HttpServlet{

	@Override 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("AddUSerTODB POST");
		
		UserHandler uh = new UserHandler();
		User u = new User(
			
				req.getParameter("userName"),
				req.getParameter("userPhone"),
				req.getParameter("email"),
				req.getParameter("password"));
		
		uh.insert(u);
		System.out.println(u);
		
		System.out.println("User Added Successfully");
		
		resp.sendRedirect("ViewUser.jsp");
		
	}

		
	
}
