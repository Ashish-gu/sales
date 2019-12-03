package config;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import category.Category;
import category.CategoryHandler;

@WebListener
public class Configuration implements ServletContextListener {
	public static final Connection conn = getConnection();

	private static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			System.out.println("DB CONNECTED");

			return DriverManager.getConnection("jdbc:mysql://localhost:3307/commerce", "root", "9935");

		} catch (Exception e) {

			e.printStackTrace();
			System.out.println("DB CONNECTION FAILURE");
		}
		return null;
	}

	public void contextDestroyed(ServletContextEvent sce) {

		try {

			conn.close();
			System.out.println("DB DISCONNECTED");
		} catch (Exception e) {

			e.printStackTrace();
			System.out.println("DB DISCONNECTION FAILURE");
		}

	}

	public void contextInitialized(ServletContextEvent sce) {

		// Category c = new Category((short)1,"a","a");
		//
		// CategoryHandler ch = new CategoryHandler();
		// System.out.println(ch.update(c));

	}

}
