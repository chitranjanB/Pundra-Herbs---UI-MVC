<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
	<div class="container">
		<h2>Product Details</h2>
		<p>Details of the Product</p>
		<table>
			<tbody>

				<tr>
					<%-- <td>Prodcut Image</td>
					<td><img
						src="<c:url value="/resource/images/products/${product.productId}.jpg"/>"
						width="40%" alt="${product.productName}" /></td> --%>
				</tr>
				<tr>
					<td>Prodcut ID</td>
					<td>${product.productId }</td>
				</tr>
				<tr>
					<td>Product Name</td>
					<td>${product.productName }</td>
				</tr>
				<tr>
					<td>Product productType</td>
					<td>${product.productType}</td>
				</tr>
				<tr>
					<td>Product productSummary</td>
					<td>${product.productSummary}</td>
				</tr>
				<tr>
					<td>Product productPrice</td>
					<td>${product.productPrice}</td>
				</tr>
				<tr>
					<td>productDiscount</td>
					<td>${product.productDiscount}</td>
				</tr>
				<tr>
					<td>productImg</td>
					<td>${product.productImg}</td>
				</tr>
				<tr>
					<td>unitInStock</td>
					<td>${product.unitInStock}</td>
				</tr>
				<tr>
					<td><a
						href="${pageContext.request.contextPath}/products/${product.productId}/review">See
							product review</a></td>
				</tr>
				<tr>
					<td><a
						href="${pageContext.request.contextPath}/cart/buy/${product.productId}">Add
							to cart</a></td>
				</tr>
			</tbody>
		</table>

	</div>
</body>
</html>
<%@ include file="footer.jsp"%>
