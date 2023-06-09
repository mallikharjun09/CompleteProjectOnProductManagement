<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
  <div class="container">
	<h2 class="bg-danger text-white text-center">List of Books</h2>
	
	<table class="table-bordered border-danger ">
		<thead class="text-danger">
		   <tr>
			<th class="text-center p-2">Product Id</th>
			<th class="text-center p-2">Product Name</th>
			<th class="text-center p-2">Category</th>
			<th class="text-center p-2">Date of Manufacturing</th>
			<th class="text-center p-2">Date of Expiry</th>
			<th class="text-center p-2">Product Cost</th>
			<th class="text-center p-2"></th>
			</tr>
		</thead>
		<tbody class="table-striped">
	<c:forEach var="p" items="${pros}">
		<tr>
			<td class="text-center p-2">${p.productId}</td>
			<td class="p-2">${p.productName}</td>
			<td class="p-2">${p.productCategory}</td>
			<td class="text-center p-2">${p.dom}</td>
			<td class="text-center p-2">${p.doe}</td>
			<td class="text-center p-2">${p.productCost}</td>
			<td class="text-center">
				<a href="edit/${p.productId}"><i class="fa-solid fa-user-pen"></i></a>
				<a href="delete/${p.productId}"><i class="fa-solid fa-trash"></i></a>
			</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
	<a class="btn btn-danger" href="newProduct">Add New Product</a>
	</div>
</body>
</html>