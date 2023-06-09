<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="save">
		<div>
			<label for="pname">Product Name</label>
			<input type="text" placeholder="Product Name" name="pname"/>
		</div>
		<div>
			<label for="pcat">Category</label>
			<select name="pcat">
				<option value="">Select Product Category</option>
				<option value="Accessories">Accessories</option>
				<option value="Electronics">Electronics</option>
				<option value="Fashion">Fashion</option>
				<option value="Grocery">Grocery</option>
				<option value="Western Ware">Western Ware</option>
			</select>
		</div>
		
		<div>
			<label for="pcost">Product Cost</label>
			<input type="number" placeholder="Product Cost" name="pcost"/>
		</div>
		<div>
			<label for="pdom">Manufacturing Date</label>
			<input type="date" name="pdom"/>
		</div>
		
		<div>
			<label for="pdoe">Expiry Date</label>
			<input type="date" name="pdoe"/>
		</div>
		<div>
			<button type="submit">Save Details</button>
		</div>
	</form>
</body>
</html>