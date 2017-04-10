<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>add book form</title>
</head>
<body>
<div>
<form:form commandName = "product" action ="product_save" method = "post">
	<fieldset>
		<legend>add a product</legend>
		<p>
			<label for="name">product name :</label>
			<form:input id = "name" path="name" cssErrorClass="error" />
			<form:errors path="name" cssClass="error"/>
		</p>
		<p>
			<label for="description">description:</label>
			<form:input id = "description" path="description" />
		</p>
		<p>
			<label for="price">price:</label>
			<form:input id = "price" path="price" cssErrorClass="error"/>
		</p>
		<p>
			<label for="image">image:</label>
			<input type="file" name="images[0]" />
		</p>
		<p>
			<input type="reset" tabindex="4">
			<input type="submit" tabindex="5" value="add product">
		</p>
	</fieldset>
</form:form>
</div>
</body>
</html>