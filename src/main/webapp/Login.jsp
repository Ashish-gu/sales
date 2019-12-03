<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="Shared.jsp" />


<style type="text/css">
#myHeader {
  background-color: lightblue;
  color: black;
  padding: 40px;
  text-align: center;
} 
</style>
		<script>
		
		function ValidateEmail() {
			  var x = document.forms["myForm"]["email"].value;
			  if (x == "") {
			    alert("Name must be filled out");
			    return false;
			  }
			}
		
		
		
		</script>
		


</head>
<body>
<c:import url="Header.jsp"></c:import>
<h1>Log In</h1>

	<hr>

	<form action="CheckLogin" method="post" name="myForm" data-toggle="validator" >

		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h4 for="inputEmail" class="control-label">Email:</h4>
				</div>
				<div class="col-lg-8">
					<input type="email" name="email" class="form-control" placeholder="Enter  Your Email" required= "true" onkeyup="ValidateEmail()">
				</div>
				
			</div>
			<div class="help-block with-errors"></div>
			<br>
			
			<div class="row">
				<div class="col-lg-4">
					<h4>Password:</h4>
				</div>
				<div class="col-lg-8">
					<input id="inputPassword" data-error="must enter minimum of 6 characters" type="password"  data-minlength="5" name="password" placeholder="Enter Your Password"  class="form-control" required="true">
				<div class="help-block with-errors"></div>
				</div>
			</div>
			
			<br>
			<br>
			
			<div class="row">
				<div class="col-lg-12" style="text-align: center;">
					<button class="btn btn-danger">Submit</button>
				</div>
			</div>
		</div>

	</form>

</body>
</html>