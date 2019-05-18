<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="../webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="../webjars/jquery/1.9.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product list</title>
</head>
<style>
.badge {
	position: fixed;
	right: 10px;
	top: 50px;
}
</style>
<body>
	<div class="container" id="productTable"
		style="width: 1145px; margin-bottom: 180px;">

		<%@ include file="header.jsp"%>

		<div class="page-header">
			<h1 id="banner">Products</h1>
			<p>Ayurvedic medicines by Pundra Herbs</p>
		</div>


		<c:forEach items="${productList}" var="prod">
			<div class="col-md-4">
				<div class="card mb-4 box-shadow">
					<img class="card-img-top"
						data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
						alt="${prod.productName}"
						style="height: 225px; width: 100%; display: block;" src=""
						data-holder-rendered="true">
					<div class="card-body">
						<p class="card-text">${prod.productSummary}</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<a href="products/${prod.productId}">
									<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
								</a> <a
									href="${pageContext.request.contextPath }/cart/buy/${prod.productId}"><button
										type="button" class="btn btn-sm btn-outline-secondary">Add
										to Cart</button></a>

							</div>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

	</div>
</body>
</html>
<%@ include file="footer.jsp"%>