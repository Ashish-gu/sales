<%@page import="product.ProductHandler"%>
<%@page import="product.Product"%>
<%@page import="cart.Cart"%>
<%@page import="user.User"%>
<%@page import="cart.CartHandler"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="Shared.jsp" />
<%
CartHandler ch=new CartHandler();
request.setAttribute("CList", ch.fetchAllCarts());

User u = (User)request.getSession().getAttribute("currentUser");

if( u == null ){
	request.setAttribute("CList", ch.fetchAllCarts());
}else{
	request.setAttribute("CList", ch.fetchAllCartItemsForUser( u.getId() ));	
}

float grandTotal = 0.0f;
ProductHandler ph=new ProductHandler();
%>

</head>
<body>

	<c:import url="Header.jsp" />
	

	<br>
	<br>
<h1 style="text-align: center;">My Cart</h1>
<br>
<a href="ViewProducts.jsp" class="btn-btn-Link">More Items</a>
<br>
<hr>
<c:choose>
<c:when test="${empty CList}">
<h1 class="alert alert-danger">Cart is empty !!! Shop more To add<br><br>
Happy Shopping...............</h1>
</c:when>

<c:otherwise>

<hr>

<table class="table  table-striped">
<thead class="table-dark">
<tr>
<th>Items</th>
<th>Quantity</th>
<th>Sub Total</th>
<th>Operations</th>
</tr>
</thead>
<tbody>
<c:forEach items="${CList}" var="cart">

<tr>
<td>
<!--  --> <%
Cart x = (Cart) (pageContext.getAttribute("cart"));
Product p = ph.fetchProduct((short) (x.getProductId()));
pageContext.setAttribute("pro",p);
  %>

 
<div class="card" style="max-width: 30%;">
<div class="card-body">
<img style="width: 100%; margin: auto; height: 250px;"
src="<%=p.getImageUrl()%>"> <br> <br>
<h3><%=p.getName()%></h3>
<br>

<h3 class="badge badge-pill badge-danger"><%=p.getCategory().getName()%></h3>
<br>

<h6 style="font-weight: bold;">
Price:<i id="R" class="fas fa-dollar-sign"></i><%=p.getPrice()%></h6>
<br>


<p>${pro.getDescription()}</p>


</div>


</div>


</td>
<td>${cart.getQty()}</td>

<td><%=p.getPrice()* x.getQty()%></td>
<%
grandTotal += p.getPrice() * x.getQty();
%>

<td>
<!-- <a href="" class="btn  btn-outline-primary">edit</a> --> <a
href="DeleteCart?id=${cart.getId()}"
class="btn btn-outline-danger">Delete</a>
</td>
</tr>
</c:forEach>
</tbody>
</table>

<h1 class="text text-success">Grand Total: <%=grandTotal%></h1>


<br>
<a href="DestroyUserCart?userId=${sessionScope.currentUser.getId()}"class="btn btn-primary">Confirm Order</a>
<br>
<br>
<br>
<br>

</c:otherwise>
</c:choose>



</body>
</html>
