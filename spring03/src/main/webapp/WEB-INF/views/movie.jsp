<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Movie Details</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }

    table, th, td {
      border: 1px solid black;
    }

    th, td {
      padding: 10px;
      text-align: left;
    }
  </style>
</head>
<body>
  <table>
    <tr>
      <th>영화 제목</th>
      <th>영화 가격</th>
    </tr>
    <tr>
      <td>${vo.title}</td>
      <td>${vo.price}원</td>
    </tr>
  </table>
</body>
</html>
