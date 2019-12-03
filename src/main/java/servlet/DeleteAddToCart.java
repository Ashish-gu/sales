package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cart.CartHandler;

public class DeleteAddToCart  extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	int id = Integer.parseInt(req.getParameter("userId"));

	CartHandler ch = new CartHandler();
	ch.deleteOrder(id);
	resp.sendRedirect("Welcome.jsp");


	}



	}




