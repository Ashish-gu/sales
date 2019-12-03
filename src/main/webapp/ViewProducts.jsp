
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
	ProductHandler ph = new ProductHandler();

	request.setAttribute("productList", ph.fetchAllProducts());
%>

<style type="text/css">
.card {
	width: 31% !important;
	margin: 10px !important;
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

	<h1>Current Products</h1>

	<br>
	<c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
		<a href="AddProduct.jsp" class="btn btn-link">Add Product</a>
	</c:if>

	<c:choose>

		<c:when test="${empty productList}">

			<h1 class="alert alert-danger">No Products in DB</h1>

		</c:when>

		<c:otherwise>
			<hr>

			<c:forEach items="${productList}" var="product">

				<div class="card">
					<!-- <div class="card-header">Header</div> -->
					<div class="card-body">

						<img style="width: 100%; margin: auto;"
							src="${product.getImageUrl()}">

						<h1>${product.getName()}</h1>
						<br>

						<h3 class="badge badge-success">${product.getCategory().getName()}</h3>
						<br>

						<h6>Price: Rs.${product.getPrice()}/-</h6>

						<br>

						<p>${product.getDescription()}</p>

						<h6>
							In Stock: <span class="badge badge-warning"
								style="padding: 5px;">${product.getStockqty()}</span>
						</h6>

					</div>
					<c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
					<div class="card-footer">

						<button class="btn btn-success">Edit</button>
						<a href="DeleteProductFromDB?id=${product.getId()}"
							class="btn btn-danger">Delete</a>

					</div>
						</c:if>
					<div>

						<form action=" AddToCart" method="post">
							<div class="container">

								<div class="row">

									
									
									
									<div class="col-lg-8">
									<button href="ViewCart.jsp" class="btn btn warning"> Add To Cart
									<i class="fa fa-shopping-cart" style="font-size:25px;color:red"></i>
									</button>
									</div>
									<div class= "col-lg-4">							
									<input type="number" name="qty" placeholder="Qty" style="width:100%; float: right;" class="form-control" required="true">	
									</div>
									</div>
									
									<input type="hidden"
									value="${product.getId() }" name="productId"class="form-control" />
									<input type="hidden"
									value="${sessionScope.currentUser.getId()}" name="userid" />
									
									
								</div>
						</form>
						


					</div>
				</div>

			</c:forEach>


		</c:otherwise>

	</c:choose>


</body>
</html>