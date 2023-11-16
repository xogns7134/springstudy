<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url : "string",
				success : function(string) {
					alert(string)
					$("#result").text(string)
					let img = "<img src = 'resources/img/no.png'>"
					if (string == 'winner') {
						img = "<img src = 'resources/img/yes.png'>"
					}
					$("#result").append(img)
				} //success
			}) //$ajax
		}) //$b1
		$('#b2').click(
				function() {
					$.ajax({
						url : "json1",
						success : function(json) {
							// json 프린트할 때는 브라우저의 console을 사용하는 것이 더 편하다
							console.log(json);
							console.log(json.writer);
							id_value = json.id;
							title_value = json.title;
							content_value = json.content;
							writer_value = json.writer;
							data = id_value + " " + title_value + " "
									+ content_value + " " + writer_value;
							$("#result").append(data + "<br>");
						} //success
					}) //$ajax
				}) //$b2
		$('#b3').click(
				function() {
					$.ajax({
						url : "json2",
						success : function(array) {
							// json 프린트할 때는 브라우저의 console을 사용하는 것이 더 편하다
							console.log(array);
							for (var i = 0; i < array.length; i++) {
								console.log(array[i]);
								id_value = array[i].id;
								title_value = array[i].title;
								content_value = array[i].content;
								writer_value = array[i].writer;
								data = id_value + " " + title_value + " "
										+ content_value + " " + writer_value;
								$("#result").append(data + "<br>");
							} //for
						} //success
					}) //$ajax
				}) //$b3
		$('#b4').click(
				function() {
					$.ajax({
						url : "jsonbbs",
						success : function(array) {
							// json 프린트할 때는 브라우저의 console을 사용하는 것이 더 편하다
							console.log(array);
							// 테이블 헤더 생성
							header = "<table border='1'><tr><th>ID</th><th>Title</th><th>Content</th><th>Writer</th></tr>";

							// 각 데이터를 행으로 추가
							$(array).each(function(i, json) {
								id_value = json.id;
								title_value = json.title;
								content_value = json.content;
								writer_value = json.writer;
								data = "<tr><td>" + id_value + "</td><td>" + title_value + "</td><td>"
										+ content_value + "</td><td>" + writer_value + "</td></tr>";
								header += data;
							}); //for

							// 테이블 닫기
							header += "</table>";

							// 결과 출력
							$("#result").append(header);
						} //success
					}) //$ajax
				}) //$b4
	}) //$function
</script>
</head>
<body>
	<button id="b1">JSON 받아오기(string)</button>
	<button id="b2">JSON2 받아오기(json)</button>
	<button id="b3">JSON2 받아오기(array)</button>
	<button id="b4">JSON2 받아오기(jsonbbs)</button>
	<hr color="red">
	<div id="result"
		style="background: yellow; width: 800px; height: 800px;">
		ajax통신 결과들어가는 곳.
		<hr>
	</div>
</body>
</html>