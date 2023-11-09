<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<h3>update 성공/실패 결과</h3>
	<%
	int result = (int) request.getAttribute("result");
	if (result == 1) {
		out.print("<h3>수정 성공</h3>");
	} else {
		out.print("<h3>수정 실패</h3>");
	}
	%>
</body>
</html>