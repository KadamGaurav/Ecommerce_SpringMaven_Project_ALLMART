<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Receipt</title>
</head>
<body>
<DIV class="welcome">
Welcome : ${sessionScope.username}
<br>
We promise a memorable and hasslefree shopping experience!!
<br>
</DIV>

<div>
	
	<table class= "table table-bordered table-dark">
		  <thead style="font-size: 30px">
		  	<th colspan="9"><center>TRANSACTION RECEIPT</center></th>
		  </thead>
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
				<!-- <td><input type="text" name="cartItemId" id="cartItemId" value="${cart.cartItemId}" readonly></td>
				<td><input type="text" name="productId" id="productId" value="${cart.productId}" readonly></td>
				<td><input type="text" name="productName" id="productName" value="${cart.productName}" readonly></td>
				<td><input type="text" name="qnty" id="qnty" value="${cart.qnty}" readonly></td>
				<td><input type="text" name="totalPrice" id="totalPrice" value="${cart.totalPrice}" readonly></td>
				<td><input type="text" name="username" id="username" value="${cart.username}" readonly></td>  -->
				<td>${cart.paid}</td>
				<td>${cart.txdate}</td>
				<!-- <td><input type="text" name="txdate" id="txdate" value="${cart.txdate}" readonly></td> -->
				<td>${cart.payment}</td>
			</tr>
			</tbody>
			</c:if>
		</c:forEach>
			<tfoot>
				<tr>
					<td colspan="9" align="center"><input type="submit" value="Print" class="btn btn-success"/></td>
				</tr>
			</tfoot>
</table>

</div>
