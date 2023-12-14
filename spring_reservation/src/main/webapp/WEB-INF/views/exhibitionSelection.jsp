<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.multi.reservation.ExhibitionVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css">
</head>
<body>

<div style = "position: relative;">
    <h2>전시 목록</h2>

    <c:choose>
        <c:when test="${not empty listExhibition}">
            <table border="1">
                <thead>
                    <tr>
                        <th>전시 이름</th>
                        <th>전시 기간</th>
                        <th>전시 장소</th>
                        <th>가격</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="exhibition" items="${listExhibition}">
                        <tr>
                            <td>${exhibition.exhibitionName}</td>
                            <td>${exhibition.exhibitionPeriod}</td>
                            <td>${exhibition.exhibitionRoom}</td>
                            <td>${exhibition.price}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <a href="<%= request.getContextPath() %>/reservation/${gallery.galleryID}" class="reservation-button">예약하기</a>
        </c:when>
        <c:otherwise>
            <p>해당 갤러리에 대한 전시가 없습니다.</p>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
