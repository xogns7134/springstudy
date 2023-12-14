<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>예약 페이지</title>
    <script>
        function calculateTotal() {
            var price = ${exhibition.price}; // 전시의 가격
            var quantity = parseInt(document.getElementById("quantity").value); // 사용자 입력된 인원수

            // 최소값은 0으로 설정
            if (isNaN(quantity) || quantity < 0) {
                quantity = 0;
            }

            // 최종 결제금액 계산
            var totalAmount = price * quantity;

            // 결과를 화면에 표시
            document.getElementById("totalAmount").innerHTML = "최종 결제금액: " + totalAmount + "원";
        }
    </script>
</head>
<body>
    <h2>${exhibition.exhibitionName}</h2>
    <p>가격: ${exhibition.price}원</p>

    <label for="quantity">인원수:</label>
    <input type="number" id="quantity" name="quantity" min="0" value="0" oninput="calculateTotal()">

    <div id="totalAmount">최종 결제금액: 0원</div>

    <!-- 예약하기 버튼 -->
    <a href="#" onclick="reserve()">예약하기</a>

    <script>
        function reserve() {
            // 여기에 예약 처리 로직을 추가하면 됩니다.
            // 서버로 선택된 인원수 등을 전달하여 예약 처리를 수행할 수 있습니다.
            alert("예약이 완료되었습니다. 결제금액: " + document.getElementById("totalAmount").innerText);
        }
    </script>
</body>
</html>
