<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <!-- Brand -->
 <style>
 *{
    margin:5px
    }
 </style> 
    
  <a class="navbar-brand" href="#">Logo</a>


	<!-- Brand -->
	
	
	<c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
	<div>

	<a class="btn btn-success" href="Login.jsp">Login page </a> 
		
	</div>
	</c:if>
	
	
	<c:if test="${not empty sessionScope.currentUser}">
		<a class="navbar-brand" href="#">Welcome
		<br>
			${sessionScope.currentUser.getEmail()}</a>
		<a class=navbar-brand href="Logout">Logout</a>
	</c:if>
	



    
<c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
<!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Image
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="AddImageToBank.jsp">Add Image To Bank</a>
        <a class="dropdown-item" href="ViewImageBank.jsp">View Image</a>        
      </div>
    </li>
    </c:if>


	<c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Category
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="AddCategory.jsp">Add Category</a>
        <a class="dropdown-item" href="ViewCategory.jsp">View Categories</a>        
      </div>
    </li>
    </c:if>
    
    <c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Product
      </a>
      <div class="dropdown-menu">
      <c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
        <a class="dropdown-item" href="AddProduct.jsp">Add Product</a>
        </c:if>
        <a class="dropdown-item" href="ViewProducts.jsp">View Products</a>        
      </div>
    </li>
    </c:if>
    
    
    <c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        User
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="AddUser.jsp">Add User</a>
        <a class="dropdown-item" href="ViewUser.jsp">View User</a>        
      </div>
    </li>
    </c:if>
    
    
  </ul>
</nav>
<br>