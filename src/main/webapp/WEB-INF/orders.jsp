<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Orders list</title>
</head>
<body>
	<div class="container" id="productTable">
		<h2>Order Management</h2>
		<p>The List of Order in our Database</p>
		<c:choose>
		<c:when test="${!empty orders}">
		<table>
			<thead>
				<tr>
					<th>orderId</th>
					<th>orderStatus</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orders}" var="order">
					<tr>
						<td><a
							href="${pageContext.request.contextPath}/orders/${order.orderId}/user/${userId}">${order.orderId}</a></td>
						<td>${order.orderStatus}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</c:when>
		<c:otherwise>
			<h1>There are no orders</h1>
		</c:otherwise>
		</c:choose>
		
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>