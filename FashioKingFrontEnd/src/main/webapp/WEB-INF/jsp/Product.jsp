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

<div class="jumbotron text-center">
  <h1>MANAGE PRODUCTS</h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-2">
      <h3></h3>
    </div>
    <div class="col-sm-8" align="center">
      <h3></h3>
      <div class="container">
  <h2>Add Product form</h2>
  <form class="form-horizontal" action="<c:url value='/insertProduct'/>" method="post">
    <div class="form-group">
      <label class="control-label col-sm-4" for="productId">Product Id:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="productId" placeholder="Enter productId" name="productId">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="productName">Product Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="productName" placeholder="Enter productName" name="productName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="productDesc">Description:</label>
      <div class="col-sm-8">
        <textarea class="form-control" id="productDesc" rows="5" cols="20" name="productDesc"></textarea>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="price">Price:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="price" placeholder="Enter price" name="price">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="stock">Stock:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="stock" placeholder="Enter stock" name="stock">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="categoryId">Category Id:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="categoryId" placeholder="Enter categoryId" name="categoryId">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="supplierId">Supplier Id:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="supplierId" placeholder="Enter supplierId" name="supplierId">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Add Product</button>
      </div>
    </div>
  </form>
</div>
      
    </div>
    <div class="col-sm-2">
      <h3></h3>
    </div>
  </div>
</div>
<div class="jumbotron text-center">
  <h1>PRODUCT LIST</h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-1">
      <h3></h3>
    </div>
    <div class="col-sm-10">
      <h3></h3>
      <table class="table table-hover table-dark">
  <thead>
    <tr>
      <th>Product Id</th>
      <th>Product Name</th>
      <th>Product Description</th>
      <th>Product Price</th>
      <th>Product Stock</th>
      <th>Category Id</th>
      <th>Supplier Id</th>
      <th>Manage</th>
      <th>Manage</th>
    </tr>
  </thead>
  <c:forEach items="${productList}" var="product">
  <tbody>
	<tr>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		<td>${product.supplierId}</td>
		<td colspan="2"><a class="btn btn-primary" href="<c:url value='/editProduct/${product.productId}'/>" role="button">Update</a></td>
		
		<td><a class="btn btn-primary" href="<c:url value='/deleteProduct/${product.productId}'/>" role="button">Delete</a></td>
		
	</tr>
	</tbody>
</c:forEach>
  
</table>
    </div>
    <div class="col-sm-1">
      <h3></h3>
    </div>
  </div>
</div>


<!-- 
<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
<form action="<c:url value='/insertProduct'/>" method="post" align="center">
	<table align="center">
		<tr bgcolor="brown">
			<td>Product Id</td>
			<td><input type="text" name="productId"/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Product Name</td>
			<td><input type="text" name="productName"/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Product Description</td>
			<td><textarea rows="5" cols="20" name="productDesc"></textarea></td>
		</tr>
		<tr bgcolor="brown">
			<td>Price</td>
			<td><input type="text" name="price"/></td>
		</tr>
		<tr bgcolor="brown">
			<td>Stock</td>
			<td><input type="text" name="stock"/></td>
		</tr>
		<tr bgcolor="brown">
			<td>Category Id</td>
			<td><input type="text" name="categoryId"/></td>
		</tr>
		<tr bgcolor="brown">
			<td>Supplier Id</td>
			<td><input type="text" name="supplierId"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<center>
					<input type="submit" value="SUBMIT"/>
				</center>
			</td>
		</tr>	
	</table>
</form>
</c:if>

<table align="center">
	<tr>
		<td>Product Id</td>
		<td>Product Name</td>
		<td>Product Description</td>
		<td>Product Price</td>
		<td>Product Stock</td>
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
 -->
 
</body>
</html>