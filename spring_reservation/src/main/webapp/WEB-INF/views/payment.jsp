<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>결제하기</title>
</head>
<body>
<h2>결제 정보 확인</h2>
<p>선택한 전시: ${selectedExhibition.exhibitionName}</p>
<p>인원 수: ${reservationNumber}명</p>
<p>총 결제 금액: ${selectedExhibition.price * reservationNumber}원</p>
</body>
</html>
