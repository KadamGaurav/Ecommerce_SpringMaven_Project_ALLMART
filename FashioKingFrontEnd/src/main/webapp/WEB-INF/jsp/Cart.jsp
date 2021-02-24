<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Shopping Cart</title>
</head>
<body>

<DIV class="welcome">
Welcome : ${sessionScope.username}
<br>
We promise a memorable and hasslefree shopping experience!!
<br>
</DIV>

<div class="jumbotron text-center">
  <h1>Shopping Cart</h1>
</div>

<div class="container">
  <div class="row">
    <div class="col-sm-1">
      <h3></h3>
    </div>
    <div class="col-sm-10">
      <h3></h3>
      <form action="<c:url value='/checkout/${sessionScope.username}'/>" method="post">
      <table class= "table table-bordered table-dark">
		  <thead>
		    <tr>
		      <th>Cart Item Id</th>
		      <th>Product Id</th>
		      <th>Product Name</th>
		      <th>Quantity</th>
		      <th>Total Price</th>
		      <th>User Name</th>
		      <th>Paid</th>
		      <th>Transaction Date</th>
		      <th>Delete</th>
		    </tr>
		  </thead>
		  <c:forEach items="${cartList}" var="cart">
		  	<c:if test="${sessionScope.username==cart.username}">
		  <tbody>
			<tr>
				<td>${cart.cartItemId}</td>
				<td>${cart.productId}</td>
				<td>${cart.productName}</td>
				<td>${cart.qnty}</td>
				<td>${cart.totalPrice}</td>
				<td>${cart.username}</td>
				<td>${cart.paid}</td>
				<td>${cart.txdate}</td>
				<td><a href="<c:url value='/deleteCart/${cart.cartItemId}'/>">Delete</a></td>
			</tr>
			</tbody>
			</c:if>
		</c:forEach>
			<tfoot>
				<tr>
					<td colspan="9" align="center"><input type="submit" value="Proceed to Checkout" class="btn btn-success"/></td>
				</tr>
			</tfoot>
</table>
</form>
    </div>
    <div class="col-sm-1">
      <h3></h3>
    </div>
  </div>
</div>


</body>
</html>