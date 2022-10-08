<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Customer Relationship Management</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<Style>
h2{
text-align :center;
font-family :verdana;
}
.btn{
button-align  : center;
}
</Style>

<body>
 <div class="container p-3 my-3 bg-success text-black">
  <h2><b>CUSTOMER RELATIONSHIP MANAGEMENT</b></h2>
</div>

	<div class="container">
		<p></p>
		<h3>Save Customer</h3> 

		<form action="save" method="post">
			
			<div class="form-group">
				<input type="hidden" class="form-control"
					placeholder="Enter Id" name="id"
					value="${customer.id}">
			</div><br>
			<div class="form-inline">
			<label for="firstName">First Name: &nbsp;&nbsp;&nbsp;</label>
				<input type="text" class="form-control"
					placeholder="Enter First Name" name="firstName"
					value="${customer.firstName}">
			</div><br>
			<div class="form-inline">
			<label for="lastName">Last Name: &nbsp;&nbsp;&nbsp;</label>
				<input type="text" class="form-control"
					placeholder="Enter Last Name" name="lastName" 
					value="${customer.lastName}">
			</div><br>
			<div class="form-inline">
			<label for="email">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Email: &nbsp;&nbsp;&nbsp;</label>
				<input type="text" class="form-control" 
					placeholder="Enter Email"
					name="email" value="${customer.email}">
			</div><br>
			<button type="submit" class="btn btn-outline-warning btn-lg"
				class=" btn btn-primary">Save</button>
		</form>
	</div>
	<br>
	<br>
	<div class="container">
	<a href="list">Back to List</a>
	</div>

</body>
</html>