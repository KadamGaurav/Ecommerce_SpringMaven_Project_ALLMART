<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<style type="text/css">
body 
{
background-color: #F0F8FF;
}
</style>
</head>
<body>

<DIV class="welcome">
Welcome : ${sessionScope.username}
<br>
You are in the Admin mode 
<br>
</DIV>
<div class="container1">
<h4>You can manage all the activities through the links provided above</h4>
<center><img alt="admin" src="<c:url value='/images/admin.png'/>" width="37%" height="37%"></center>
</div>

</body>
</html>