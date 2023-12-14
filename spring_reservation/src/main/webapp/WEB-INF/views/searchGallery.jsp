<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.multi.reservation.GalleryVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Display information for multiple galleries -->
<div>
	<h2>검색된 미술관 목록</h2>

	<c:choose>
		<c:when test="${not empty searchGallery}">
			<table border="1">
				<thead>
					<tr>
						<th>미술관 이미지</th>
						<th>미술관 이름</th>
						<th>미술관 주소</th>
						<th>미술관 연락처</th>
						<th>운영 시간</th>
						<th>휴무일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="gallery" items="${searchGallery}">
						<tr>
							<td><a href="<%= request.getContextPath() %>/exhibitionSelection/${gallery.galleryID}"><img src="${gallery.galleryImg}" alt="Gallery Image"></a></td>
							<td><a href="<%= request.getContextPath() %>/exhibitionSelection/${gallery.galleryID}">${gallery.galleryName}</a></td>
							<td>${gallery.galleryAddress}</td>
							<td>${gallery.galleryNumber}</td>
							<td>${gallery.operatingHours}</td>
							<td>${gallery.closeDays}</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<p>검색된 미술관이 없습니다.</p>
		</c:otherwise>
	</c:choose>
</div>
