<%@page import="user.UserHandler"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="Shared.jsp" />
<%
UserHandler uh = new UserHandler();

request.setAttribute("UList",(uh.FetchAllUsers()));


%>
<script src="https://code.jquery.com/jquery-1.12.4.js">
        </script>

</head>
<body>

<h1 class="alert alert-Info">Please Provide your Shipping address</h1>

<br>
<br>
	<form  name ="myform"  >

		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h4>Name:</h4>
				</div>
				<div class="col-lg-8">
					<input name="name" class="form-control" placeholder="Enter Your Name" required= "true">
				</div>
			</div>
			
			<br>
			
			 <div class="row">
                    <div class="col-lg-4">
					<h4>E-mail:</h4>
				</div>
				
				<div class="col-lg-8">
					<input type="email" name="email" class="form-control" placeholder="Enter Your E-mail" required= "true">
					<div class="help-block with-errors"></div>
				</div>
			</div>
				
				
			            
			
			
			
			<br>

		
			
			
				<br>
			
			<div class="row">
				<div class="col-lg-4">
					<h4>Address</h4>
				</div>
				<div class="col-lg-8">
					<textarea  name="address" placeholder="Enter Your Address"  class="form-control" required="true"></textarea>
				</div>
			</div>
			
			<br>
			
			<div class="row">
				<div class="col-lg-4">
					<h4>Phone No.</h4>
				</div>
				<div class="col-lg-8">
					<input type="" name="phone" class="form-control" placeholder="Enter Your Phone Number" required= "true">
				</div>
			</div>
			
			<br>
			
				<div class="row">
				<div class="col-lg-4">
					<h4>House No.</h4>
				</div>
				<div class="col-lg-8">
					<input name="house" class="form-control" placeholder="Enter House No./ Street No." required= "true">
				</div>
			</div>
			
			<br>
			
			<div class="row">
				<div class="col-lg-4">
					<h4>Pin Code:</h4>
				</div>
				<div class="col-lg-8">
					<input name="pincode" class="form-control" placeholder="Enter Your Pincode" required= "true">
				</div>
			</div>
			<br>
			
				<div class="row">
				<div class="col-lg-4">
					<h4>State:</h4>
				</div>
				<div class="col-lg-8">
					<input name="state" class="form-control" placeholder="Enter Your State Name" required= "true">
				</div>
			</div>
				
			<br>
			<br>
			
			<div class="row">
				<div class="col-lg-12" style="text-align: center;">
					<a href="Payment.jsp" class="btn btn-danger">Continue</a>
				</div>
			</div>
		</div>

	</form>
	
	

</body>
</html>