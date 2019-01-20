<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Products</title>
</head>


<div class="container">
	<form action="/logout" method="post">
		<input type="submit" value="Sign Out" />
	</form>
	<c:forEach items="${productList}" var="prod">
		<tr>
			<td>${prod.productId}</td>
			<td>${prod.productName}</td>
		</tr>
	</c:forEach>
	<hr>
	<footer>
		<p>&copy; Mkyong.com 2015</p>
	</footer>
</div>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>