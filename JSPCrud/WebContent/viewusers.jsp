<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User,java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
List<User> list=UserDao.getAllRecords();
pageContext.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>Edit</th><th>Delete</th></tr>

<c:forEach items="${list}" var="uw">
	<tr><td>${uw.id}</td><td><a href="editform.jsp?id=${uw}">Edit</a></td><td><a href="deleteuser.jsp?id=${uw}">Delete</a></td></tr>
</c:forEach>

</table>
<br/><a href="adduserform.jsp">Add New User</a>

</body>
</html> 