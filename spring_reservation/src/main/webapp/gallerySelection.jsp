<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gallery Selection</title>
    <script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
        $(function () {
            // 초기 데이터 로딩
            loadGallery("listGallery");

            // 검색 버튼 클릭 시
            $('#searchButton').click(function () {
            	var galleryId = $('#galleryIdInput').val();
                loadGallery("oneGallery/"+galleryId);
            });

            // 검색 초기화 버튼 클릭 시
            $('#resetButton').click(function () {
                loadGallery("listGallery");
            });
        });

        function loadGallery(url) {
            $.ajax({
                url: "/reservation/" + url,
                method: 'GET',
                success: function (response) {
                    $('#galleryDisplay').html(response);
                },
                error: function (xhr, status, error) {
                    console.error("AJAX Error: " + status + ", " + error);
                }
            });
        }
    </script>
</head>
<body>
<div style="text-align: center;">
    <!-- Search bar for gallery ID -->
    <input type="text" id="galleryIdInput" placeholder="Enter Gallery ID">
    <button id="searchButton">Search</button>
    <button id="resetButton">Reset Search</button>
</div>

<hr>

<!-- Display area for galleries -->
<div id="galleryDisplay">
    <!-- Initial gallery display will be loaded here -->
    <%@ include file="WEB-INF/views/listGallery.jsp" %>
</div>
</body>
</html>
