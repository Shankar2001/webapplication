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
			<div class="card-header text-center">Payment Page</div>
			<form action="PaymentServlet" method="get">
			<div class="card-body">
					<div class="form-group">
						<label>Card Holder Name</label> 
						<input type="text" class="form-control" placeholder="" required>
					</div>
					<div class="form-group">
						<label>Card Number</label> 
						<input type="text" name="card-number" class="form-control" data-mask="0000 0000 0000 0000" placeholder="0000 0000 0000 0000" required>
					</div>
					<div class="form-group">
						<label>Expiry Date</label> 
						<input type="text" name="expiry-data" class="form-control" data-mask="00 / 00" placeholder="00 / 00" required >
					</div>
					<div class="form-group">
						<label>CVV</label> 
						 <input type="text" name="cvv" class="form-control" data-mask="000" placeholder="000" required>
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Pay</button>
					</div>
			</div>
			</form>
		</div>
	</div>

	<%@include file="/includes/footer.jsp"%>
	
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
</body>
</html>