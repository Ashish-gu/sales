
<%@page import="user.UserHandler"%>
<%@page import="product.ProductHandler"%>
<%@page import="category.CategoryHandler"%>
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

	request.setAttribute("UList", uh.FetchAllUsers());
%>





<style type="text/css">
.card {
	width: 33% !important;
	margin: 20px !important;
	display: inline-flex;
}

.card-body {
	padding: 0;
	margin: 0;
}
</style>

</head>
<body>

	<c:import url="Header.jsp" />

	<br>
	<br>

	<h1>Current User</h1>

	<br>
	<a href="AddUser.jsp" class="btn btn-link">Add User</a>


	<c:choose>

		<c:when test="${empty UList}">

			<h1 class="alert alert-danger">No User in DB</h1>

		</c:when>

		<c:otherwise>


			<hr>

			<c:forEach items="${UList}" var="user">

				<div class="card">
					<!-- <div class="card-header">Header</div> -->
					<div class="card-body">



						<h5>
							<span class="badge badge-warning" style="padding: 10px;">${user.getId()}</span>
						</h5>
						<br>

						<h1 class="badge badge-success">${user.getName()}</h1>
						<br>
						<h3>${user.getPhone()}<h3>

								<h4>${user.getEmail()}</h4>
								<br>
								<h6>
									Password: <span class="btn btn-danger" style="padding: 10px;">${user.getPassword()}</span>
								</h6>
					</div>
					<div class="card-footer">

							
						<c:if test="${user.getActive()==1}">
							<a href="SetUserToInactive?id=${user.getId()}" class="btn btn-link"> Set Inactive </a>
						</c:if>
						<c:if test="${user.getActive()==0}">
							<a class="btn btn-link" href="SetUserToActive?id=${user.getId()}">
							Set Active
							</a>
						</c:if>
							
							
							<br>
							

					<a href= "EditUserToDB?id=${user.getId()}"
					class="btn btn-primary">Edit</a>
					
					
						<a href="DeleteUserFromDB?id=${user.getId()} "
							class="btn btn-outline-danger">Delete</a>

					</div>
				</div>

			</c:forEach>


		</c:otherwise>

	</c:choose>



</body>
</html>