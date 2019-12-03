package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import config.Configuration;
import product.Product;

interface UserStandard{
	String insert(User u);

	List<User> FetchAllUsers();
	User checkLogin( String email, String password );
	
	boolean deleteById(int id);

	String toggleActive(int id, boolean state);
}
public class UserHandler implements UserStandard{


	public String insert(User u) {
		
		try {
			String query =  "insert into user" + "(name,phone,email,password) values (?,?,?,?)";
		
		Connection conn = Configuration.conn;
		PreparedStatement p = conn.prepareStatement(query);

		p.setString(1, u.getName());
		p.setString(2, u.getPhone());
		p.setString(3, u.getEmail());
		p.setString(4, u.getPassword());
		
		p.executeUpdate();

	} catch (Exception e) {
		return e.getMessage();
	}

	return "User Inserted Successfully";
}

	public List<User> FetchAllUsers() {
		List<User> list = new ArrayList<User>();

		try {
			String query = "select * from user";
			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);

			ResultSet rs = p.executeQuery();

			while (rs.next()) {

				list.add(new User(rs.getInt("id"), rs.getString("name"), rs.getString("phone"), rs.getString("email"),
						rs.getString("password"), 
						rs.getInt("active")));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public User checkLogin(String email, String password) {
try {
			
			Connection conn = Configuration.conn;
			
			String query = "SELECT * FROM user WHERE email =? AND password = ? and ACTIVE = 1";
			
			PreparedStatement p = conn.prepareStatement(query);
			
			p.setString(1, email);
			p.setString(2, password);
			
			ResultSet rs = p.executeQuery();
			
			while(rs.next()) {
				User u = new User(query);
				
				u.setEmail(rs.getString("EMAIL"));
				u.setRole(rs.getString("ROLE"));
				u.setId(rs.getInt("id"));
				
				return u;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return null;

	}
	
	
	
	public String update(User u) {
		
		try {
			String query = "update user where set name=?, phone=?, email=?  where id=?";
			
			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);
			
			p.setString(1, u.getName());
			p.setString(2, u.getPhone());
			p.setString(3, u.getEmail());
			
			p.executeUpdate();
			
		}
		catch(Exception e){
			e.getMessage();
		}
		
		
		return "User upadated Successfully";
	}
	
	
	
	

	public boolean deleteById(int id) {
		try {

			String query = "delete from user where id=?";
			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setInt(1, id);

			p.executeUpdate();

			return true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public String toggleActive(int id, boolean state) {
		try {
			String query = "update user set active=? where id=?";

			Connection conn = Configuration.conn;
			PreparedStatement p = conn.prepareStatement(query);

			p.setInt(1, state?1:0);
			p.setInt(2, id);
			
			p.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			return e.getMessage();
		}

		return "Success";
		
	}

	


	}

	

		

