<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>구매 항목 확인</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin: 20px 0;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: center;
            padding: 8px;
        }

        thead {
            background-color: yellow;
        }

        tbody tr:nth-child(even) {
            background-color: pink;
        }

        tbody tr:nth-child(odd) {
            background-color: lightpink;
        }

        tfoot {
            background-color: lime;
        }
    </style>
</head>
<body>
    <table border="1">
        <thead>
            <tr>
                <th>항목명</th>
                <th>가격</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${vo.com}</td>
                <td>${vo.price}원</td>
            </tr>
            <tr>
                <td>${vo.mouse}</td>
                <td>${vo.price2}원</td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td>총합</td>
                <td>${total}원</td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
