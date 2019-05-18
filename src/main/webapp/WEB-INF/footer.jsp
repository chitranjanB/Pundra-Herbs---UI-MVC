<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.footer {
	bottom: 0;
	width: 100%;
	/* background-color: #A9A9A9 !important; */
	/* Set the fixed height of the footer here */
	height: 60px;
	line-height: 60px; /* Vertically center the text there */
}
</style>
</head>
<body>
	<div class="container">
		<div class="footer">

			<a href="<c:url value="/"/>">Home</a> · <a
				href="<c:url value="/products" />">Product List</a> . <a
				href="<c:url value="/orders/users/10"/>">Orders</a> · <a
				href="<c:url value="/contactus"/>">Contact Us</a> <span
				class="text-muted"> </span>
			<p>Created by Chitranjan @PundraHerbs &copy; 2017</p>
		</div>
	</div>
</body>
</html>