<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="../webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/1.9.1/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Page</title>
</head>
<body>
	<div class="container">
		<c:choose>
			<c:when test="${!empty sessionScope.cart}">
				<table class="table table-hover table-condensed">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Photo</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Sub Total</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:set var="total" value="0"></c:set>
						<c:forEach var="item" items="${sessionScope.cart }">
							<c:set var="total"
								value="${total + item.product.productPrice * item.quantity }"></c:set>
							<tr>
								<td>${item.product.productId }</td>
								<td>${item.product.productName }</td>
								<td>
									<%-- <img src="${pageContext.request.contextPath }/resources/http://learningprogramming.net/wp-content/uploads/java/spring_mvc/${item.product.photo }"
					width="50"> --%>
								</td>
								<td>${item.product.productPrice }</td>
								<td>${item.quantity }</td>
								<td>${item.product.productPrice * item.quantity }</td>
								<td align="center"><a
									href="${pageContext.request.contextPath }/cart/modify/${item.product.productId }/increase"><button
											class="btn btn-info btn-sm">
											<i class="fa fa-refresh" style="width: 36%; margin: 0.3em 0;"><b>+</b></i>
										</button> </a> <a
									href="${pageContext.request.contextPath }/cart/modify/${item.product.productId }/decrease"><button
											class="btn btn-info btn-sm">
											<i class="fa fa-trash-o" style="width: 36%; margin: 0.3em 0;"><b>-</b></i>
										</button></a> <a
									href="${pageContext.request.contextPath }/cart/remove/${item.product.productId }"
									onclick="return confirm('Are you sure?')"><button
											class="btn btn-danger btn-sm">
											<i class="fa fa-trash-o" style="width: 36%; margin: 0.3em 0;"><b>Remove</b></i>
										</button></a></td>
							</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr>
							<td><a href="#" class="btn btn-warning"><i
									class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="4" class="hidden-xs"></td>
							<td class="text-center"><strong>Total ${total }</strong></td>
							<td><a
								href="${pageContext.request.contextPath }/orders/create"
								class="btn btn-success btn-block">Checkout <i
									class="fa fa-angle-right"></i>
							</a></td>
						</tr>
					</tfoot>
				</table>
				order</a>
			</c:when>
			<c:otherwise>
				<div class="jumbotron text-xs-center">
			<h1 class="display-3">Your Cart is empty!</h1>
			<p class="lead">
				<strong>Add items to your cart</strong>
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
			</c:otherwise>
		</c:choose>
		<br>
	</div>

</body>
</html>