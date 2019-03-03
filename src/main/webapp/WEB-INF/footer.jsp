<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<footer>
	<div class="footer-right"></div>
	<div class="footer-left">

		<p class="footer-links">
			<a href="<c:url value="/"/>">Home</a> · <a
				href="<c:url value="/products" />">Product List</a> .
				<a href="<c:url value="/orders/users/10"/>">Orders</a> · 
				<a href="<c:url value="/contactus"/>">Contact Us</a> 
		</p>

		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<h2>
				<form action="/logout" method="post">
         			<input type="submit" value="Sign Out"/>
     			</form>
			</h2>
		</c:if>
		<p>Created by Chitranjan @PundraHerbs &copy; 2017</p>
	</div>
	</footer>
</body>
</html>