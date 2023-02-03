<%@page import="ecommerceshopping.connection.DbCon"%>
<%@page import="ecommerceshopping.dao.ProductDao"%>
<%@page import="ecommerceshopping.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>Food Ordering System</title>
</head>
<body>
	<%@include file="/includes/navbar.jsp"%>
	<div class="container">
		<div class="card-header my-3">All Fooditems</div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : products) {%>
			
			<div class="col-md-4 my-4">
				<div class="card w-100">
					<img class="card-img-top" src="images/<%=p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName() %></h5>
						<h6 class="price">Price: Rs <%=p.getPrice() %></h6>
						<h6 class="category">Category: <%=p.getCategory() %></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="AddToCartServlet?id=<%=p.getId()%>">Add to Cart</a> 
							<a class="btn btn-primary" href="OrderNowServlet?quantity=1&id=<%=p.getId()%>">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} else {
			out.println("There is no proucts");
			}
			%>

		</div>
	</div>
	<footer>
	     Copyright © 2022-2023 OnlineFoodShop.All Rights are reserved
	     <br>
         Contact us: <a href="https://www.facebook.com/">Facebook</a> <a href="https://www.instagram.com/">Instagram</a> <a href="https://www.whatsapp.com/">Whatsapp</a> 
         </br>
          
     </footer>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>