<%@page import="dao.EmployeeDAO"%>
<%@page import="entities.Employee"%>
<%@page import="java.util.ArrayList"%>
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
	<h1>Employee List</h1>
	<a href="new-employee.jsp"><button type="button">Create new</button></a>
	<table border="1" cellspacing="0" cellpadding="10" width="80">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>City</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Action</th>
		</tr>
		
		<%
			ArrayList<Employee> employeeList=new EmployeeDAO().getAll();
			for(Employee element : employeeList){
				%><tr>
					<td><%=element.getId()  %></td>
					<td><%=element.getName()  %></td>
					<td><%=element.getNIC()  %></td>
					<td><%=element.getDepartment()  %></td>
					<td><%=element.getDesignation()  %></td>
					<td>
						<a href="update-employee.jsp?id=<%=element.getId()%>"><button>EDIT</button></a> &nbsp; &nbsp;
						<a href="delete-employee.jsp?id=<%=element.getId()%>"><button>DELETE</button></a> 
					</td>
					</tr>
				<%
			}
		%>
	</table>
</body>
</html>