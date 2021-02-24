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
  <h1>MANAGE CATEGORIES</h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-2">
      <h3></h3>
    </div>
    <div class="col-sm-8" align="center">
      <h3></h3>

      <div class="container">
  <h2>Add Category form</h2>
  <form class="form-horizontal" action="<c:url value='/insertCategory'/>" method="post">
    <div class="form-group">
      <label class="control-label col-sm-4" for="categoryId">Category Id:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="categoryId" placeholder="Enter categoryId" name="categoryId">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="categoryName">Category Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="categoryName" placeholder="Enter categoryName" name="categoryName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-4" for="categoryDesc">Description:</label>
      <div class="col-sm-8">
        <textarea class="form-control" id="categoryDesc" rows="5" cols="20" name="categoryDesc"></textarea>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Add Category</button>
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
  <h1>CATEGORY LIST</h1>
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
      <th scope="col">Category Id</th>
      <th scope="col">Category Name</th>
      <th scope="col">Category Description</th>
      <th scope="col">Manage</th>
      <th scope="col">Manage</th>
    </tr>
  </thead>
  <c:forEach items="${categoryList}" var="category">
  <tbody>
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td><a href="<c:url value='/deleteCategory/${category.categoryId}'/>">Delete</a></td>
		<td><a href="<c:url value='/editCategory/${category.categoryId}'/>">Update</a></td>
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
<form action="<c:url value='/insertCategory'/>" method="post" >
	<table align="center">
		<tr bgcolor="brown">
			<td>Category Id</td>
			<td><input type="text" name="categoryId"/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Category Name</td>
			<td><input type="text" name="categoryName"/></td>
		</tr>
		<tr bgcolor="cyan">
			<td>Category Description</td>
			<td><textarea rows="5" cols="20" name="categoryDesc"></textarea></td>
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
		<td>Category Id</td>
		<td>Category Name</td>
		<td>Category Description</td>
		<td>Manage</td>
		<td>Manage</td>
	</tr>
<c:forEach items="${categoryList}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td><a href="<c:url value='/deleteCategory/${category.categoryId}'/>">Delete</a></td>
		<td><a href="<c:url value='/editCategory/${category.categoryId}'/>">Update</a></td>
	</tr>
</c:forEach>
 -->

</body>
</html>