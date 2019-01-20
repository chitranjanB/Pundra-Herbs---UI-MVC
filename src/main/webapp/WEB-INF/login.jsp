<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
	<c:if test="${not empty error}">
		<h1 style="color: red">${error}</h1>
	</c:if>

	<c:if test="${not empty logout}">
		<h1 style="color: blue">Logged out.</h1>
	</c:if>

	<h1 id="banner">Login to Pundra Herbs</h1>
	<form action="/login" method="post">
		<div>
			<label> User Name : <input type="text" name="username" />
			</label>
		</div>
		<div>
			<label> Password: <input type="password" name="password" />
			</label>
		</div>
		<div>
			<input type="submit" value="Sign In" />
		</div>
	</form>
	
	<%@ include file="footer.jsp"%> 
</body>
</html>