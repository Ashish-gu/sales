package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.CategoryHandler;

@WebServlet(urlPatterns="/DeleteCategoryFromDB")
public class DeleteCategoryFromDB extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		short id = Short.parseShort(req.getParameter("id"));
		
		CategoryHandler ch = new CategoryHandler();
		ch.deleteById(id);
		
		resp.sendRedirect("ViewCategory.jsp");
		
	}
	
	

}
