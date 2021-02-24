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
  <h1>Update Category here</h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-2">
      <h3></h3>
      
    </div>
    <div class="col-sm-8" align="center">
      <h3></h3>
      
      <div class="container">
  <h2>UPDATE CATEGORY FORM</h2>
  <form class="form-horizontal" action="<c:url value='/updateCategory'/>" method="post">
    <div class="form-group">
      <label class="control-label col-sm-4" for="categoryId">Category Id:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" name="categoryId" id="categoryId" value="${category.categoryId}" readonly>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="categoryName">Category Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" name="categoryName" id="categoryName" value="${category.categoryName}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="categoryDesc">Category Description:</label>
      <div class="col-sm-8">
        <textarea class="form-control" id="categoryDesc" rows="5" cols="20" name="categoryDesc">${category.categoryDesc}</textarea>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Update Category</button>
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

<form action="<c:url value='/updateCategory'/>" method="post" align="center">
	<table align="center">
		<tr bgcolor="brown">
			<td>Category Id</td>
			<td><input type="text" name="categoryId" id="categoryId" value="${category.categoryId}" readonly/>
		</tr>
		<tr bgcolor="cyan">
			<td>Category Name</td>
			<td><input type="text" name="categoryName" id="categoryName" value="${category.categoryName}"/>
		</tr>
		<tr bgcolor="cyan">
			<td>Category Description</td>
			<td><textarea rows="5" cols="20" name="categoryDesc" id="categoryDesc">${category.categoryDesc}</textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<center>
					<input type="submit" value="UPDATE"/>
				</center>
			</td>
		</tr>	
	</table>
</form>

 -->

</body>
</html>