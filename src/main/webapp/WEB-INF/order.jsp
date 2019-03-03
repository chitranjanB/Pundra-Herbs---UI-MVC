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
<title>Order</title>
</head>
<body>
	<div class="container">
		<h2>Order Details</h2>
		<p>Details of the Order</p>
		<table>
			<tbody>

				<tr>
					<td>Order ID</td>
					<td>${order.orderId }</td>
				</tr>
				<tr>
					<td>Order Status</td>
					<td>${order.orderStatus }</td>
				</tr>

			</tbody>
		</table>
		<table border="1">
			<tbody>
				<c:forEach items="${order.details}" var="orderDetail">
					<tr>
						<td>${orderDetail.product.productId}</td>
						<td>${orderDetail.product.productName}</td>
						<td>${orderDetail.product.productPrice}</td>
						<td>${orderDetail.quantity}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>
</html>
<%@ include file="footer.jsp"%>
