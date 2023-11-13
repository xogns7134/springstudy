<%@page import="com.multi.mvc02.BookDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>북마크 목록</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>북마크 전체 검색 목록</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>이름</th>
                <th>URL</th>
                <th>이미지</th>
            </tr>
        </thead>
        <tbody>
            <% List<BookDTO> list = (List<BookDTO>)request.getAttribute("list");
               for (BookDTO dto : list) { %>
                <tr>
                    <td><%= dto.getId() %></td>
                    <td><%= dto.getName() %></td>
                    <td><%= dto.getUrl() %></td>
                    <td><%= dto.getImg() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
