<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="../webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Confirmation</title>
</head>
<body>
	<div class="container" id="productTable">

		<div class="jumbotron text-xs-center">
			<h1 class="display-3">Thank You!</h1>
			<p class="lead">
				<strong>Your order has been placed. Please check your email</strong>
				for further instructions
			</p>
			<hr>
			<p>
				Having trouble? <a href="">Contact us</a>
			</p>
			<p class="lead">
				<a class="btn btn-primary btn-sm"
					href="https://bootstrapcreative.com/" role="button">Continue to
					homepage</a>
			</p>
		</div>


		<c:choose>
			<c:when test="${!empty cartOrder}">
				<table border="1" class="table">
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Sub Total</th>
					</tr>
					<c:set var="total" value="0"></c:set>
					<c:forEach var="item" items="${cartOrder}">
						<c:set var="total"
							value="${total + item.product.productPrice * item.quantity }"></c:set>
						<tr>
							<td>${item.product.productId }</td>
							<td>${item.product.productName }</td>
							<td>${item.product.productPrice }</td>
							<td>${item.quantity }</td>
							<td>${item.product.productPrice * item.quantity }</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="4" align="right">Sum</td>
						<td>${total }</td>
					</tr>
					<tr>
						<td><a
							href="${pageContext.request.contextPath}/orders/pending/users/10">View
								all pending orders</a></td>
						<td><a
							href="${pageContext.request.contextPath}/orders/users/10">View
								all orders</a></td>
					</tr>
				</table>
			</c:when>
			<c:otherwise>
			</c:otherwise>
		</c:choose>

	</div>

</body>
</html>
