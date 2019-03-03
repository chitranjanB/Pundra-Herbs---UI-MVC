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
		<h2>Product Reviews</h2>
		<table>
			<tbody>
				<tr>
					<td>Prodcut ID</td>
					<td>${product.productId }</td>
				</tr>
				<tr>
					<td>Product Name</td>
					<td>${product.productName }</td>
				</tr>
			</tbody>
		</table>

		<table>
			<thead>
				<tr>
					<th>Review Comments</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${product.reviewComments}" var="review">
					<tr>
						<td>${review.reviewComment}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>
