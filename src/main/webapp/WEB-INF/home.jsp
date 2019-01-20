<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Maven + Spring MVC</title>

</head>



<div class="jumbotron">
	<div class="container">
		<h1>Home Page</h1>
		<p></p>
		<p>
			<a class="btn btn-primary btn-lg" href="products" role="button">Products</a>
			<a class="btn btn-primary btn-lg" href="products/1" role="button">Product
				101</a>
		</p>
	</div>
</div>

<div class="container">

	<hr>
	<%@ include file="footer.jsp"%> 
</div>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>