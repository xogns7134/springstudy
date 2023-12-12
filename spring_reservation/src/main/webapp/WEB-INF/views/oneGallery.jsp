<%@page import="com.multi.reservation.GalleryVO"%>
<%@page import="com.multi.reservation.GalleryDAO"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!-- Display information for a single gallery -->
<div>
	<h2>Gallery Information</h2>
	<%
		GalleryVO galleryVO = (GalleryVO) request.getAttribute("galleryVO");
	%>
	<table border="1">
		<thead>
			<tr>
				<th>Gallery ID</th>
				<th>Gallery Name</th>
				<th>Gallery Address</th>
				<th>Gallery Number</th>
				<th>Operating Hours</th>
				<th>Close Days</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%= galleryVO.getGalleryID() %></td>
				<td><%= galleryVO.getGalleryName() %></td>
				<td><%= galleryVO.getGalleryAddress() %></td>
				<td><%= galleryVO.getGalleryNumber() %></td>
				<td><%= galleryVO.getOperatingHours() %></td>
				<td><%= galleryVO.getCloseDays() %></td>
			</tr>
		</tbody>
	</table>
</div>
