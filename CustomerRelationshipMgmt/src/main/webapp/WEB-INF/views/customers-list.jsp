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
.action-btn{
padding:0;
}
</Style>

<body>
<div class="container p-3 my-3 bg-success text-black">
  <h2><b>CUSTOMER RELATIONSHIP MANAGEMENT</b></h2>
</div>
<div class="container">
  <button type="button" class="btn btn-outline-secondary"><a href = "showFormForAdd" style="color: black">Add Customer</a></button>
</div>

<div class="container">
		<p></p>	
		<table class="table table-striped">
			<thead>
				<tr class="bg-success">
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach var="customer" items="${customer}" varStatus="c">
				<tbody>
					<tr>
						<td>${customer.firstName}</td>
						<td>${customer.lastName}</td>
						<td>${customer.email}</td>
						<td><a class = "action-btn btn btn-link" href ="showFormForUpdate?id=${customer.id}">Update |</a>
						    <a class = "action-btn btn btn-link" href ="delete?id=${customer.id}" onclick ="return confirm('Are you sure you want to delete?')">Delete</a></td>
				</tbody>
			</c:forEach>
		</table>
	</div>
</body>
</html>