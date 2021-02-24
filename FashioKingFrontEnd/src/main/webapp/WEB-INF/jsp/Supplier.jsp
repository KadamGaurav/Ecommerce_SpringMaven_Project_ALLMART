<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Supplier</title>
</head>
<body>
<DIV class="welcome">
Welcome : ${sessionScope.username}
<br>
We promise a memorable and hasslefree shopping experience!!
<br>
</DIV>

<div class="jumbotron text-center">
  <h1>MANAGE SUPPLIER</h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-2">
      <h3></h3>
    </div>
    <div class="col-sm-8" align="center">
      <h3></h3>
      <div class="container">
  <h2>Add  Supplier form</h2>
  <form class="form-horizontal" action="<c:url value='/insertSupplier'/>" method="post">
    <div class="form-group">
      <label class="control-label col-sm-4" for="supplierId">Supplier Id:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="supplierId" placeholder="Enter supplierId" name="supplierId">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="supplierName">Supplier Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="supplierName" placeholder="Enter supplierName" name="supplierName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="supplierAddr">Supplier Address:</label>
      <div class="col-sm-8">
        <textarea class="form-control" id="supplierAddr" rows="5" cols="20" name="supplierAddr"></textarea>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Add Supplier</button>
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
  <h1>SUPPLIER LIST</h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-2">
      <h3></h3>
    </div>
    <div class="col-sm-8">
      <h3></h3>
      <table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">Supplier Id</th>
      <th scope="col">Supplier Name</th>
      <th scope="col">Supplier Address</th>
      <th scope="col">Manage</th>
      <th scope="col">Manage</th>
    </tr>
  </thead>
  <c:forEach items="${supplierList}" var="supplier">
  <tbody>
	<tr>
		<td>${supplier.supplierId}</td>
		<td>${supplier.supplierName}</td>
		<td>${supplier.supplierAddr}</td>
		<td><a href="<c:url value='/deleteSupplier/${supplier.supplierId}'/>">Delete</a></td>
		<td><a href="<c:url value='/editSupplier/${supplier.supplierId}'/>">Update</a></td>
	</tr>
	</tbody>
</c:forEach>
  
</table>
    </div>
    <div class="col-sm-2">
      <h3></h3>
    </div>
  </div>
</div>


<!-- 
<form action="<c:url value='/insertSupplier'/>" method="post" >
	<table align="center">
		<tr bgcolor="brown">
			<td>Supplier Id</td>
			<td><input type="text" name="supplierId"/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Supplier Name</td>
			<td><input type="text" name="supplierName"/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Supplier Address</td>
			<td><textarea rows="5" cols="20" name="supplierAddr"></textarea></td>
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


<table align="center">
	<tr>
		<td>Supplier Id</td>
		<td>Supplier Name</td>
		<td>Supplier Address</td>
		<td>Manage</td>
		<td>Manage</td>
	</tr>
<c:forEach items="${supplierList}" var="supplier">
	<tr>
		<td>${supplier.supplierId}</td>
		<td>${supplier.supplierName}</td>
		<td>${supplier.supplierAddr}</td>
		<td><a href="<c:url value='/deleteSupplier/${supplier.supplierId}'/>">Delete</a></td>
		<td><a href="<c:url value='/editSupplier/${supplier.supplierId}'/>">Update</a></td>
	</tr>
</c:forEach>
 -->

</body>
</html>