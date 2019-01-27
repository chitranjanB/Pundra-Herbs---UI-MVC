<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Page</title>
</head>
<body>

	<h3>Cart Page</h3>
	<c:choose>
		<c:when test="${!empty sessionScope.cart}">
			<table cellpadding="2" cellspacing="2" border="1">
				<tr>
					<th>Option</th>
					<th>Id</th>
					<th>Name</th>
					<th>Photo</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Sub Total</th>
				</tr>
				<c:set var="total" value="0"></c:set>
				<c:forEach var="item" items="${sessionScope.cart }">
					<c:set var="total"
						value="${total + item.product.productPrice * item.quantity }"></c:set>
					<tr>
						<td align="center"><a
							href="${pageContext.request.contextPath }/cart/remove/${item.product.productId }"
							onclick="return confirm('Are you sure?')">Remove</a></td>
						<td>${item.product.productId }</td>
						<td>${item.product.productName }</td>
						<td>
							<%-- <img src="${pageContext.request.contextPath }/resources/http://learningprogramming.net/wp-content/uploads/java/spring_mvc/${item.product.photo }"
					width="50"> --%>
						</td>
						<td>${item.product.productPrice }</td>
						<td>${item.quantity }</td>
						<td>${item.product.productPrice * item.quantity }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="6" align="right">Sum</td>
					<td>${total }</td>
				</tr>
			</table>
		</c:when>
		<c:otherwise>
			<h1>Cart is empty</h1>
		</c:otherwise>
	</c:choose>
	<br>
	<a href="${pageContext.request.contextPath }/products">Continue
		Shopping</a>


</body>
</html>