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
  <h1>Update Supplier here</h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-md-2">
      <h3></h3>
     
    </div>
    <div class="col-md-8" align="center">
      <h3></h3>
      <div class="container">
  <h2>UPDATE SUPPLIER FORM</h2>
  <form class="form-horizontal" action="<c:url value='/updateSupplier'/>" method="post">
    <div class="form-group">
      <label class="control-label col-sm-4" for="supplierId">Supplier Id:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" name="supplierId" id="supplierId" value="${supplier.supplierId}" readonly>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="supplierName">Supplier Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" name="supplierName" id="supplierName" value="${supplier.supplierName}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="supplierAddr">Supplier Description:</label>
      <div class="col-sm-8">
        <textarea class="form-control" id="supplierAddr" rows="5" cols="20" name="supplierAddr">${supplier.supplierAddr}</textarea>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Update Supplier</button>
      </div>
    </div>
  </form>
</div>
      
    </div>
    <div class="col-md-2">
      <h3></h3>
     
    </div>
  </div>
</div>



<!-- 
<form action="<c:url value='/updateSupplier'/>" method="post" align="center">
	<table align="center">
		<tr bgcolor="brown">
			<td>Supplier Id</td>
			<td><input type="text" name="supplierId" id="supplierId" value="${supplier.supplierId}" readonly/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Supplier Name</td>
			<td><input type="text" name="supplierName" id="supplierName" value="${supplier.supplierName}"/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Supplier Address</td>
			<td><textarea rows="5" cols="20" name="supplierAddr" id="supplierAddr">${supplier.supplierAddr}</textarea></td>
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