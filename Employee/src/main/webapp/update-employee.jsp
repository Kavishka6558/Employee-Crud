<%@page import="entities.Employee"%>
<%@page import="dao.EmployeeDAO"%>
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
	<%
	int id=Integer.parseInt(request.getParameter("id"));
	Employee obj=new EmployeeDAO().getEmployee(id);
%>
	<h1>Update Employee<%=id %></h1>
	<form action="employee-update" method="post">
		<input type="hidden" name="id" value="<%=obj.getId() %>"/>
		<label>Name:</label><br>
		<input type="text" name="name" id="name" value="<%=obj.getName() %>" required>
		<br><br>
		<label>NIC:</label><br>
		<input type="text" name="nic" id="nic" value="<%=obj.getNIC() %>" required>
		<br><br>
		<label>Department:</label><br>
		<input type="text" name="department" id="department" value="<%=obj.getDepartment() %>" required>
		<br><br>
		<label>Designation:</label><br>
		<input type="text" name="designation" id="designation" value="<%=obj.getDesignation() %>" required>
		<br><br>
		<button type="submit">UPDATE</button>
	</form>
</body>
</html>