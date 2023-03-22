<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Add new Employee</h1>
	<form action="employee-create" method="post">
		<label>Name:</label><br>
		<input type="text" name="name" id="name" required>
		<br><br>
		<label>NIC:</label><br>
		<input type="text" name="nic" id="nic" required>
		<br><br>
		<label>Department:</label><br>
		<input type="text" name="department" id="department" required>
		<br><br>
		<label>Designation:</label><br>
		<input type="text" name="designation" id="designation" required>
		<br><br>
		<button type="submit">SUBMIT</button>
	</form>
</body>
</html>