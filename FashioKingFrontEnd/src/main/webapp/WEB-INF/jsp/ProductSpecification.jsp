<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Details</title>
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
	background-color:
	}
.image {
	width: 40%;
	float: left;
	margin-bottom: 10px;
	box-sizing: border-box;
	overflow: auto;
	padding: 5px;
	border: 1px solid black;
}
.content {
	width: 60%;
	float: left;
	margin-bottom: 10px;
	box-sizing: border-box;
	overflow: auto;
	padding: 5px;
	border: 1px solid black;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
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
<div class="group">
	<div class="image">
	<h3><center>Product Image</center></h3>
	<img alt="${sessionScope.productId}"  src="<c:url value='/images/${sessionScope.productId}.jpg'/>" width="500" height="500">
	</div>
	<div class="content">
	<h3><center>Product Details</center></h3>
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
		<td><input type="submit" value="Add to Cart" class="btn btn-success"/></td>
	</tr> 
	<!-- <tr>
		<td><a href="<c:url value='/UserHome'/>" class="btn btn-success">Back to Products List</a></td>
	</tr>  -->
	</table>
	</form>
	</div>
</div>
</body>
</html>