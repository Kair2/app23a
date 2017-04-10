<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>save product</title>
</head>
<body>
<div>
	<h4>the product has been saved</h4>
	<p>
		<h5>details:</h5>
		name:${product.name}<br/>
		description:${product.description}<br/>
		price:$${product.price}
		<p>following files are uploaded successfully</p>
		<ol>
		<c:forEach items = "${product.images}" var="image">
			<li>${image.originalFilename}
			<img width="100" src="<c:url value="/image/"/> ${image.originalFilename}"/>
			</li>
		</c:forEach>
		</ol>
	</p>
</div>
</body>
</html>