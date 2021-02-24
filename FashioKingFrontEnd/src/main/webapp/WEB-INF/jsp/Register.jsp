<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp" %>


<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">



<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<style type="text/css">
body{
	background-image:url(https://wallpapertag.com/wallpaper/full/c/a/a/157415-simplistic-wallpapers-1920x1080-lockscreen.jpg)
}
#login-name{
font-size: 30px;
font-family: "Lucida Handwriting", Arial, sans-serif;
border-bottom-style: ridge;
color:white;
}
#login{
background-color:rgba(13,13,13,0.2);
min-height:500px;
padding: 18px 70px 18px 70px;
box-shadow: -10px -10px 9px #33cc33;
}
.user{
font-size: 15px;
font-family: "Lucida Handwriting", Arial, sans-serif;
color: white;
}
#iconn{
background-color: #5cb85c;
border-color: #4cae4c;
color: white;
}
#iconn1{
background-color: #5cb85c;
border-color: #4cae4c;
color: white;
}
#text1{
border-radius: 0;
height: 40px;
}
#text2{
border-radius: 0;
height: 40px;
}
.btn{
	width: 50%;
	float: left;
	height: 40px;
	font-size: 18px;
}
.label_001{
	font-size: 18px;
	color: white;
	font-style: italic;
}
</style>
<title>ALL MART - REGISTER HERE!!</title>
</head>

<body>
	

<div class="container">

<center> <b id="login-name">SIGN-UP Here </b> </center>>
	
<div class="row">
		
<div class="col-md-6 col-md-offset-3" id="login">  

<form action="register_user" method="post">
	
<div class="form-group">
<label class="user"> UserName:  </label>
<input type="text" class="form-control" id="username" name="username" placeholder="Username">
</div>

<div class="form-group">
<label class="user"> Password: </label>
<input type="password" class="form-control" id="password" name="password" placeholder=" Enter Password">
</div>

<div class="form-group">
<label class="user">Enter Full Name: </label>
<input type="text" class="form-control" id="customerName" name="customerName" placeholder="Enter Full Name">
</div>

<div class="form-group">
<label class="user"> Email ID: </label>
<input type="email" class="form-control" id="emailId" name="emailId" placeholder=" EnterEmail Address">
</div>

<div class="form-group">
<label class="user"> Mobile No: </label>
<input type="text" class="form-control" id="mobileNo" name="mobileNo" placeholder=" Enter your mobile Number">
</div>

<div class="form-group">
<label class="user"> Address: </label>
<textarea class="form-control" id="address" cols="25" rows="2" name="address"></textarea>
</div>

<div class="form-group">
<input type="submit" class="btn btn-success btn-lg" value="Register" style="border-radius:0px;">

</div>

</form>

  </div>
 </div>
</div>

</body>
<footer>
<br><br>
</footer>
</html>



<!-- 
<tr>
<td>User Type</td>
<td><select name="role">
<option value="ROLE_ADMIN">Admin</option>
<option value="ROLE_USER">User</option>
</select></td>
</tr>
 -->

