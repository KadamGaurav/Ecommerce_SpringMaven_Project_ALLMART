<%@ page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style type="text/css">
  .cmnhdr{
  font-family: Arial, sans-serif,monospace;
  }
  .welcome{
  	background-color:lightgreen;
  }
  .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #708090;
   color: white;
   text-align: center;
}
  </style>

</head>
<body>
<div class="cmnhdr">
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="<c:url value='/'/>"><span style="font-family: 'Lucida Handwriting'">All Mart</span></a>
  
  
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="<c:url value='/'/>">Home</a>
    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="<c:url value='/AboutUs'/>">About us</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="<c:url value='/ContactUs'/>">Contact Us</a>
	    </li>
    <c:if test="${sessionScope.role==null}">
	    <li class="nav-item">
	      <a class="nav-link" href="login">Login</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="Register">Register</a>
	    </li>
    </c:if>
    
    <c:if test="${sessionScope.role!=null}">
			<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
				<li class="nav-item">
		     	 <a class="nav-link" href="<c:url value='/showCategory'/>">Manage Category</a>
		    	</li>
		    	<li class="nav-item">
		     	 <a class="nav-link" href="<c:url value='/showProducts'/>">Manage Products</a>
		    	</li>
		    	<li class="nav-item">
		     	 <a class="nav-link" href="<c:url value='/showSuppliers'/>">Manage Suppliers</a>
		    	</li>
				
			</c:if>
			<c:if test="${sessionScope.role=='ROLE_USER'}">
			
		    <li class="nav-item">
		     	 <a class="nav-link" href="<c:url value='/UserHome'/>">View Products</a>
		    </li>
				
			</c:if>
			
			<li class="nav-item">
		     	 <a class="nav-link" href="<c:url value='/perform_logout'/>">Logout</a>
		    </li>
	</c:if>
	
  </ul>
  
</nav>
</div>
	
	
	

</body>
<div class="footer">
  <p>© 2021 AllMart Ltd. All rights reserved</p>
</div>
</html>