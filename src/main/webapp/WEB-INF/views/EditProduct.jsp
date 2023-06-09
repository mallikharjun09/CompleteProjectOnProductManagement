<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:form action="update" modelAttribute="p">
	    <f:input type="hidden" path="${p.productId}" value="${p.productId}"/>
		<div>
			<f:label for="${p.productName}" path="${p.productName}">Product Name</f:label>
			<f:input type="text" placeholder="Product Name" name="${p.productName}" path="${p.productName}" value="${p.productName}"/>
		</div>
		<div>
			<f:label for="${p.productCategory}" path="${p.productCategory}">Category</f:label>
			<f:select name="${p.productCategory}" path="${p.productCategory}" selected="${p.productCategory}">
				<option value="">Select Product Category</option>
				<option value="Accessories">Accessories</option>
				<option value="Electronics">Electronics</option>
				<option value="Fashion">Fashion</option>
				<option value="Grocery">Grocery</option>
				<option value="Western Ware">Western Ware</option>
			</f:select>
		</div>
		
		<div>
			<f:label for="${p.productCost}" path="${p.productCost}">Product Cost</f:label>
			<f:input type="number" path="${p.productCost}" placeholder="Product Cost" name="${p.productCost}" value="${p.productCost}"/>
		</div>
		<div>
			<f:label for="${p.dom}" path="${p.dom}">Manufacturing Date</f:label>
			<f:input type="date" path="${p.dom}" name="${p.dom}" value="${p.dom}"/>
		</div>
		
		<div>
			<f:label for="${p.doe}" path="${p.doe}">Expiry Date</f:label>
			<f:input type="date" name="${p.doe}" path="${p.doe}" value="${p.doe}"/>
		</div>
		<div>
			<f:button type="submit">Update Details</f:button>
		</div>
	</f:form>
</body>
</html>