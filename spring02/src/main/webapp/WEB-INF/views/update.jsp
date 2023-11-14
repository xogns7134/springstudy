<%@page import="com.multi.mvc02.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>북마크 수정 결과</title>
    <style>
        table {
            width: 50%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
    </style>
</head>
<body>
    <h4>북마크가 수정되었습니다.</h4>
    <% BookDTO dto = (BookDTO)request.getAttribute("update"); %>
    <table>
        <tr>
            <th>수정된 북마크 ID</th>
            <td><%=dto.getId() %></td>
        </tr>
        <tr>
            <th>수정된 북마크 이름</th>
            <td><%=dto.getName() %></td>
        </tr>
    </table>
    <a href="index.jsp">
        <button>첫 화면으로 돌아가기</button>
    </a>
</body>
</html>
