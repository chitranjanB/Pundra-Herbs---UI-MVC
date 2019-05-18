<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<%@ include file="header.jsp"%>

		<c:if test="${not empty error}">
			<div class="alert alert-danger alert-dismissible fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Please authorize yourself.
			</div>
		</c:if>

		<c:if test="${not empty logout}">
			<div class="alert alert-success alert-dismissible fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				You have been successfully logged out.
			</div>
		</c:if>

		<div class="page-header">
			<h1 id="banner">Login to Pundra Herbs</h1>
		</div>
		<form action="/login" method="post">
			<div class="form-group">
				<label for="userName">Name:</label> <input type="text"
					class="form-control" name="username" id="userName" />
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" name="password" id="pwd" />
			</div>
			<div>
				<input type="submit" class="btn btn-info" value="Sign In">
			</div>
		</form>

		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>