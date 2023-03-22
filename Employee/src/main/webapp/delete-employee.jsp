<%@page import="org.apache.catalina.connector.Response"%>
<%@page import="org.apache.catalina.startup.ClassLoaderFactory.Repository"%>
<%@page import="dao.EmployeeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int id=Integer.parseInt(request.getParameter("id"));
		boolean result=new EmployeeDAO().delete(id);
		if(result){
			response.sendRedirect("employee-list.jsp");
		}else{
			%>
			
			<script type="text/javascript">
				alert("Somthing went wrong!!!");
			</script>
			<%
			response.sendRedirect("employee-list.jsp");
		}
	%>
</body>
</html>