<%@page import="ecommerceshopping.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>Food Ordering System</title>
</head>
<body>
	

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Registration</div>
			<div class="card-body">
				<form action="RegisterServlet" method="post">
				    <div class="form-group">
						<label>Name</label> 
						<input type="text" name="name" class="form-control" placeholder="Name">
					</div>
					<div class="form-group">
						<label>Email Address</label> 
						<input type="email" name="email" class="form-control" placeholder="Enter email id" required>
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="password" class="form-control" placeholder="Password" required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
					<a href="login.jsp">Already have Account?</a>
				</form>
			</div>
		</div>
	</div>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>