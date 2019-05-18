<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<style>
.bg-dark {
	/* background-color: #888888 !important; */
	
}

.box-shadow {
	box-shadow: 0 0.25rem 0.75rem rgba(0, 0, 0, .05);
}

.signout {
	position: fixed;
	right: 10px;
	top: 5px;
}
</style>
</head>
<body>
	<header>
	<div class="bg-dark box-shadow">
		<div class="container d-flex justify-content-between">
			<a href="http://localhost:8080/"
				class="navbar-brand d-flex align-items-center"> image <strong>Pundra
					Herbs</strong>
			</a>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				<form action="/logout" method="post">
					<input type="submit" class="btn btn-info signout" value="Sign Out">
				</form>
			</c:if>


		</div>
	</div>
	</header>
</body>
</html>