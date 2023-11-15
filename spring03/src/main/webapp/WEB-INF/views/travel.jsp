<%@page import="com.multi.mvc03.TestDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Travel List</title>
</head>
<body>
	<h2>여행지 목록</h2>
	<ul>
		<%
			List<TestDTO> travel = (List<TestDTO>) request.getAttribute("travel");
		for (TestDTO dto : travel) {
		%>
		<li><%=dto.getTravel()%></li>
		<%
			}
		%>
	</ul>
</body>
</html>
