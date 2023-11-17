<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>마커 생성하기</title>

</head>
<body>
	<button style="background: red; color: white;" id="b1">검색어 입력해서 마커찍기</button>
	<div id="map" style="width: 100%; height: 350px;"></div>
	<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5675f8f4dffbfd2b726b7b6393fd2b78"></script>
	<script>
		$(function() {
			$("#b1").click(function() {
				$.ajax({
					url: "map2",
					data: {
						location: prompt("검색어 입력(coex, park)")
					},
					success: function(json) {
						console.log(json);
						var mapContainer = document.getElementById('map');
						var mapOption = {
							center: new kakao.maps.LatLng(json.lat, json.lon),
							level: 3
						};
						var map = new kakao.maps.Map(mapContainer, mapOption);
						var markerPosition = new kakao.maps.LatLng(json.lat, json.lon);
						var marker = new kakao.maps.Marker({
							position: markerPosition
						});
						marker.setMap(map);
					} // success
				}); // $.ajax
			}); // $b1
		}); // $function
	</script>
</body>
</html>
