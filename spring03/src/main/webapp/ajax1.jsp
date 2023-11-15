<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	//jquery는 버튼 하나당 함수 하나, 요청 하나당 함수 하나
	//특정한 이벤트가 발생하기를 기다렸다가 이벤트가 발생하면
	//자동으로 함수를 실행시켜주는 방식의 함수 사용 - 콜백함수
	//body를 브라우저가 먼저 읽도록 하는 코드를 넣어주어야함
	$(function () {
		$('#b1').click(function() {
			$.ajax({
					url: "test",
					success: function(x) {
						alert("ajax통신결과>> " + x)
						$("#result").html(x)
				} //success
			}) //ajax
		}) //b1
	}) //$
</script>
</head>
<body>
	<button id="b1">컴퓨터 구매 항목 확인</button>
	<hr color="red">
	<div id="result">ajax 통신 결과 들어가는 곳</div>
</body>
</html>