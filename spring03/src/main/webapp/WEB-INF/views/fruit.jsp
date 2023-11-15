<%@page import="java.util.List"%>
<%@page import="com.multi.mvc03.TestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fruit List</title>
</head>
<body>
	<h2>과일 목록</h2>
	<ul>
		<%
			List<TestDTO> fruit = (List<TestDTO>) request.getAttribute("fruit");
		for (TestDTO dto : fruit) {
		%>
		<li><%=dto.getFruit()%></li>
		<%
			}
		%>
	</ul>
</body>
</html>
