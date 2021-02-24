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
  <h1>Update Product here</h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-2">
      <h3></h3>
     
    </div>
    <div class="col-sm-8" align="center">
      <h3></h3>
      
      <div class="container">
  <h2>UPDATE PRODUCT FORM</h2>
  <form class="form-horizontal" action="<c:url value='/updateProduct'/>" method="post">
    <div class="form-group">
      <label class="control-label col-sm-4" for="productId">Product Id:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" name="productId" id="productId" value="${product.productId}" readonly>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="productName">Product Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" name="productName" id="productName" value="${product.productName}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="productDesc">Description:</label>
      <div class="col-sm-8">
        <textarea class="form-control" id="productDesc" rows="5" cols="20" name="productDesc">${product.productDesc}</textarea>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="price">Price:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="price" name="price" value="${product.price}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="stock">Stock:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="stock" name="stock" value="${product.stock}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="categoryId">Category Id:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="categoryId" name="categoryId" value="${product.categoryId}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="supplierId">Supplier Id:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="supplierId" name="supplierId" value="${product.supplierId}">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Update Product</button>
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


<!-- 


<form action="<c:url value='/updateProduct'/>" method="post" align="center">
	<table align="center">
		<tr bgcolor="brown">
			<td>Product Id</td>
			<td><input type="text" name="productId" id="productId" value="${product.productId}" readonly/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Product Name</td>
			<td><input type="text" name="productName" id="productName" value="${product.productName}"/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Product Description</td>
			<td><textarea rows="5" cols="20" name="productDesc" id="productDesc">${product.productDesc}</textarea></td>
		</tr>
		<tr bgcolor="brown">
			<td>Price</td>
			<td><input type="text" name="price" id="price" value="${product.price}"/></td>
		</tr>
		<tr bgcolor="brown">
			<td>Stock</td>
			<td><input type="text" name="stock" id="stock" value="${product.stock}"/></td>
		</tr>
		<tr bgcolor="brown">
			<td>Category Id</td>
			<td><input type="text" name="categoryId" id="categoryId" value="${product.categoryId}"/></td>
		</tr>
		<tr bgcolor="brown">
			<td>Supplier Id</td>
			<td><input type="text" name="supplierId" id="supplierId" value="${product.supplierId}"/></td>
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

 -->

</body>
</html>