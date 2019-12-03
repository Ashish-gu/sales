package address;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import config.Configuration;

interface AddressStandard{
String insert  (Address ad);	
	List <Address> fetchAllAddresses();
}
public class AddressHandler implements AddressStandard{
		public String insert (Address ad) {
			try {
				String query = "insert into address "+ "(name,userID,address,pincode,house,state)"+"values"+"(?,?,?,?,?,?)";
				
				Connection conn = Configuration.conn;
				PreparedStatement p = conn.prepareStatement(query); 
				
				
				p.setString(1,ad.getName());
				p.setInt(2, ad.getUserId());
				p.setString(3,ad.getAddress());
				p.setInt(4, ad.getPincode());
				p.setInt(5, ad.getHouse());
				p.setString(6, ad.getState());
				
				p.executeUpdate();
			}
			catch(Exception e) {
				e.printStackTrace();
				return e.getMessage();
			}
			return "Inserted successfully";
		}

		public List<Address> fetchAllAddresses() {
		
			return null;
		}
}
