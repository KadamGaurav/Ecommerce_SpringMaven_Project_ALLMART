<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Billing</title>
</head>
<body>
<DIV class="welcome">
Welcome : ${sessionScope.username}
<br>
We promise a memorable and hasslefree shopping experience!!
<br>
</DIV>

<div class="jumbotron text-center">
  <h1>Process Checkout Here</h1>
  <h4>*Amend the Paid and Payment mode columns</h4>
</div>

<div class="container">
  <div class="row">
    <!-- <div class="col-sm-1">
      <h3></h3>
    </div> -->
    <div class="col-sm-12">
      <h3></h3>
      <form action="<c:url value='/updatecheckout/${sessionScope.username}'/>" method="post">
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
		      <th>Payment Mode</th>
		    </tr>
		  </thead>
		  <c:forEach items="${cartList}" var="cart">
		  	<c:if test="${sessionScope.username==cart.username}">
		  <tbody>
			<tr>
				<!-- <td>${cart.cartItemId}</td>
				<td>${cart.productId}</td>
				<td>${cart.productName}</td>
				<td>${cart.qnty}</td>
				<td>${cart.totalPrice}</td>
				<td>${cart.username}</td> -->
				<td><input type="text" name="cartItemId" id="cartItemId" value="${cart.cartItemId}" size="10" readonly></td>
				<td><input type="text" name="productId" id="productId" value="${cart.productId}" size="10" readonly></td>
				<td><input type="text" name="productName" id="productName" value="${cart.productName}" size="10" readonly></td>
				<td><input type="text" name="qnty" id="qnty" value="${cart.qnty}" size="10" readonly></td>
				<td><input type="text" name="totalPrice" id="totalPrice" value="${cart.totalPrice}" size="10" readonly></td>
				<td><input type="text" name="username" id="username" value="${cart.username}" size="10" readonly></td>
				<td>
				<select id="paid" name="paid">
			    <option value="N" selected>N</option>
			    <option value="Y">Y</option>
			  	</select>
				</td>
				<!-- <td>${cart.txdate}</td>-->
				<td><input type="text" name="txdate" id="txdate" value="${cart.txdate}" size="11" readonly></td>
				<td>
				<select id="payment" name="payment">
			    <option value="COD" selected>COD</option>
			    <option value="Card">Card</option>
			  	</select>
				</td>
			</tr>
			</tbody>
			</c:if>
		</c:forEach>
			<tfoot>
				<tr>
					<td colspan="9" align="center"><input type="submit" value="Checkout" class="btn btn-success"/></td>
				</tr>
			</tfoot>
</table>
</form>
    </div>
<!--     <div class="col-sm-1">
      <h3></h3>
    </div> -->
  </div>
</div>


</body>
</html>