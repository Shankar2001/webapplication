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
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="LoginServlet" method="post">
					<div class="form-group">
						<label>Email address</label> 
						<input type="email" name="login-email" class="form-control" placeholder="Enter email" required>
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="login-password" class="form-control" placeholder="Password" required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
                    <a href="register.jsp">Create New Account</a>
				</form>
			</div>
		</div>
	</div>
     
	<%@include file="/includes/footer.jsp"%>
</body>
</html>