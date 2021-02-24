<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<DIV class="welcome">
Welcome : ${sessionScope.username}
<br>
We promise a memorable and hasslefree shopping experience!!
<br>
</DIV>

<table align="center">
	<tr>
		<td>Product Id</td>
		<td>Product Name</td>
		<td>Product Description</td>
		<td>Price</td>
		<td>Stock</td>
		<td>Category Id</td>
		<td>Supplier Id</td>
		<td>Manage</td>
		<td>Manage</td>
	</tr>
<c:forEach items="${productList}" var="product">
	<tr>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		<td>${product.supplierId}</td>
		<td><a href="<c:url value='/deleteProduct/${product.productId}'/>">Delete</a></td>
		<td><a href="<c:url value='/editProduct/${product.productId}'/>">Update</a></td>
	</tr>
</c:forEach>


</body>
</html>