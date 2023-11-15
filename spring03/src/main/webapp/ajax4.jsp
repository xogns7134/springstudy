<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
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

    button {
      padding: 10px;
      cursor: pointer;
    }

    #result {
      margin-top: 10px;
    }
  </style>
  <script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
  <script type="text/javascript">
    $(function () {
      $('#b1').click(function() {
        $.ajax({
          url: "movie",
          data: {
            title : $('#title').val(),
            price : $('#price').val(),
          },
          success: function(x) {
            $("#result").html(x)
          }
        });
      });
    });
  </script>
</head>
<body>
  <table>
    <tr>
      <th>영화 제목</th>
      <th>영화 가격</th>
    </tr>
    <tr>
      <td><input id="title" value="테넷"></td>
      <td><input id="price" value="10000">원</td>
    </tr>
  </table>
  <button id="b1">영화 관람 확인</button>
  <hr color="red">
  <div id="result">AJAX 통신 결과 들어가는 곳</div>
</body>
</html>
