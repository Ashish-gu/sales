package address;

public class Address {
	int addressid;
	String name;
	int userId;
	String address;
	int pincode;
	int house;
	String state;
	public int getAddressid() {
		return addressid;
	}
	public void setAddressid(int addressid) {
		this.addressid = addressid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public int getHouse() {
		return house;
	}
	public void setHouse(int house) {
		this.house = house;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
	
	public Address(int addressid, String name, int userId, String address, int pincode, int house, String state) {
		
		this.addressid = addressid;
		this.name = name;
		this.userId = userId;
		this.address = address;
		this.pincode = pincode;
		this.house = house;
		this.state = state;
	}
	@Override
	public String toString() {
		return "Address [addressid=" + addressid + ", name=" + name + ", userId=" + userId + ", address=" + address
				+ ", pincode=" + pincode + ", house=" + house + ", state=" + state + "]";
	}

	
	
		
	
				
		
}
