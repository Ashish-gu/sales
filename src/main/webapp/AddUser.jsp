<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="Shared.jsp" />

</head>
<body>
		<h1>Add User</h1>

	<hr>

	<form action="AddUserToDB" method="post">

		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter  Name:</h4>
				</div>
				<div class="col-lg-8">
					<input name="userName" class="form-control" placeholder="Enter  Name">
				</div>
			</div>
			
			<br>
			
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Phone No:</h4>
				</div>
				<div class="col-lg-8">
					<input name="userPhone" class="form-control" placeholder="Enter Phone Number">
				</div>
			</div>
			
			<br>
			<br>
			
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Your Email:</h4>
				</div>
				<div class="col-lg-8">
					<input name="email" class="form-control" placeholder="Enter your Email">
				</div>
			</div>
			
			
			
			
			
			<br>
			<br>
			
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Password:</h4>
				</div>
				<div class="col-lg-8">
					<input type="password" name="password" class="form-control" placeholder="Enter Password">
				</div>
			</div>
			
			<br>
			<br>
			
			
			<br>
			<br>
			
			
			
			<div class="row">
				<div class="col-lg-12" style="text-align: center;">
					<button class="btn btn-danger"><i class="fas fa-plus"></i>Add</button>
				</div>
						
					
		</div>

	</form>
	
</body>
</html>