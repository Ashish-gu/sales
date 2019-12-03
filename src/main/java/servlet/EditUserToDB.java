package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import user.User;
import user.UserHandler;

@WebServlet(urlPatterns="/EditUserToDB")
public class EditUserToDB extends HttpServlet{



		@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	

		int id =  Integer.parseInt(req.getParameter("id"));
		String name =  req.getParameter("name");
		String phone =  req.getParameter("phone");
		String email = req.getParameter("email");
		
		User u = new User(id,name,phone,email);
		
		UserHandler ph = new UserHandler();
		
		System.out.println(ph.update (u));
		
		resp.sendRedirect("ViewUser.jsp");
		
		}

	
		
	
}
