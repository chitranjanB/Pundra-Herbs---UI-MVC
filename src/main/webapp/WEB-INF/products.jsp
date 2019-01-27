<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product list</title>
</head>
<body>
	<div class="container" id="productTable"
		style="width: 1145px; margin-bottom: 180px;">
		<h2>Product Management</h2>
		<p>The List of Products in our Database</p>
		<table class="table table-hover" id="productList">
			<thead>
				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Product Type</th>
					<th>Product Summary</th>
					<th>Product Price</th>
					<th>Product Discount</th>
					<th>Product Image</th>
					<th>Unit in stock</th>
					<th>Product Price</th>
					<th>Add to cart</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${productList}" var="prod">
					<tr>

						<td><a href="products/${prod.productId}">${prod.productId}</a></td>
						<td>${prod.productName}</td>
						<td>${prod.productType}</td>
						<td>${prod.productSummary}</td>
						<td>${prod.productPrice}</td>
						<td>${prod.productDiscount}</td>
						<td>${prod.productImg}</td>
						<td>${prod.unitInStock}</td>
						<td>${prod.productPrice}</td>
						<td><a href="getProductById/${prod.productId}" role="button">
						</a> <a href="#" style="margin-left: 5px"> <span></span></a></td>
						<td align="center"><a
							href="${pageContext.request.contextPath }/cart/buy/${prod.productId}">Add
								to cart</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>