<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home - Products List</title>
<style type="text/css">

.group:before,
.group:after {
	content: "";
	display: table;
}

.group:after {
	clear: both;
}
.group {
	zoom: 1;
	}
.image {
	width: 40%;
	float: left;
	margin-bottom: 10px;
	box-sizing: border-box;
	overflow: auto;
	padding: 5px;
}
.content {
	width: 60%;
	float: left;
	margin-bottom: 10px;
	box-sizing: border-box;
	overflow: auto;
	padding: 5px;
}
</style>
</head>
<body>
<DIV class="welcome">
Welcome : ${sessionScope.username}
<br>
We promise a memorable and hasslefree shopping experience!!
<br>
</DIV>

<!-- 
<div>
	<table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">Product Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Description</th>
      <th scope="col">Product Price</th>
      <th scope="col">Product Stock</th>
      <th scope="col">Category Id</th>
      <th scope="col">Supplier Id</th>
    </tr>
  </thead>
<c:forEach items="${sessionScope.productList}" var="product">
	<tbody>
	<tr>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		<td>${product.supplierId}</td>
	</tr>
	</tbody>
</c:forEach>
</table>
</div>
images/${product.productId}.jpg
 -->
 
 
<div class="container">

  <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Products Gallery</h1>

  <hr class="mt-2 mb-5">

  <div class="row text-center text-lg-left" style="border: 1px solid black">
	<c:forEach items="${sessionScope.productList}" var="product">
    <div class="col-lg-3 col-md-4 col-6" style="border: 1px solid black">
      <a href="<c:url value='/selectProduct/${product.productId}'/>" class="d-block mb-4 h-100">
      <figure>
      		<figcaption>${product.productName}</figcaption>
            <img class="img-fluid img-thumbnail" src="<c:url value='/images/${product.productId}.jpg'/>" alt="${product.productId}" width="150" height="150">
      </figure>
      </a>
    </div>
    </c:forEach>
  </div>
</div> 

<!-- 
<c:forEach items="${sessionScope.productList}" var="product">
<div class="group">
	<div class="image">
	<img alt="${product.productId}" src="images/${product.productId}.jpg" width="300" height="400">
	</div>
	<div class="content">
	Description
	<form action="<c:url value='/addToCart/${product.productId}'/>" method="post">
	<table>
	<tr>
		<td>Product Id = ${product.productId}</td>
	</tr>
	<tr>
		<td>Product Name = ${product.productName}</td>
	</tr>
	<tr>
		<td>Product Description</td>
	</tr>
	<tr>
		<td>${product.productDesc}</td>
	</tr>
	<tr>
		<td>Product Price = ${product.price}</td>
	</tr>
	<tr>
		<td>Product Stock = ${product.stock}</td>
	</tr>
	<tr>
		<td>Category Id = ${product.categoryId}</td>
	</tr>
	<tr>
		<td>Supplier Id = ${product.supplierId}</td>
	</tr>
	<tr>
		<td>
			<label for="qnty">Choose a quantity you want to order(Max 4):</label>
			  <select id="qnty" name="qnty">
			    <option value="1" selected>1</option>
			    <option value="2">2</option>
			    <option value="3">3</option>
			    <option value="4">4</option>
			  </select>
		</td>
	</tr>
	<tr>
		<td><a href="<c:url value='/addToCart/${product.productId}'/>">Add to Cart</a></td>
	</tr>
	</table>
	</form>
	</div>
</div>
</c:forEach>
 -->
</body>
</html>