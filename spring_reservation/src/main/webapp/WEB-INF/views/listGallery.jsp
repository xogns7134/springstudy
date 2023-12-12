<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- List all galleries -->
<div>
    <h2>All Galleries</h2>
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
        <c:forEach var="gallery" items="${listGallery}">
            <tr>
                <td>${gallery.galleryID}</td>
                <td>${gallery.galleryName}</td>
                <td>${gallery.galleryAddress}</td>
                <td>${gallery.galleryNumber}</td>
                <td>${gallery.operatingHours}</td>
                <td>${gallery.closeDays}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
