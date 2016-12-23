<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/travel_mobile.css">

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD60rwjxUjBDRiDUUfwQvNhjiP8d8hXVD8"></script>
<script src="../js/move.js"></script>

</head>
<body>
<div data-role="page">
	<div class="main_header" data-role="header" data-position="fixed">
		<img src="../img/header/header_back.png" width="12%" onclick="call_back()">
		<span style="font-size: 29px; color: #00ccff; position: absolute;">${partyVo.title}</span>
<!-- 		<img src="../img/header/menu.png" width="10%" align="right" style="margin-right: 0.2em;"> -->
	</div>
	
	<div>
		<div>
			<img src="/upload/img/PARTY/${partyVo.img_01_nm}" width="100%">
		</div>
		
		<div class="ui-grid-a">
			<div class="ui-block-a" style="border-right: 2px solid #fff;">
				<img src="/upload/img/PARTY/${partyVo.img_02_nm}" width="100%" style="height: 100px;">
			</div>
			<div class="ui-block-b" style="border-left: 2px solid #fff;">
				<img src="/upload/img/PARTY/${partyVo.img_03_nm}" width="100%" style="height: 100px;">
			</div>
		</div>
		
		<div style="margin-top: 1.5em; margin-bottom: 1.5em;">
			<img src="/upload/img/PARTY/${partyVo.img_04_nm}" width="100%" style="height: 100px;">
		</div>
		
		
		
		
		<div class="div_css">
			<img src="../img/party/party_period_banner.png" width="25%" style="margin-left: 0.5em;">
			
			<div style="margin-top: 1.5em; margin-left: 0.5em; margin-bottom: 0.5em;">
				<span>${partyVo.use_time_1}</span><br>
				<span>${partyVo.use_time_2}</span><br>
				<span>${partyVo.use_time_3}</span>
			</div>
			
		</div>
		
		<div class="div_css">
			<img src="../img/party/cost_banner.png" width="25%" style="margin-left: 0.5em;">
			
			<table style="width: 100%; height: 150px;">
				<tr>
					<td width="20%"></td>
					<td width="20%" class="td_header">${partyVo.pay_nm_1}</td>
					<td width="20%" class="td_header">${partyVo.pay_nm_2}</td>
					<td width="20%" class="td_header">${partyVo.pay_nm_3}</td>
					<td width="20%" class="td_header">${partyVo.pay_nm_4}</td>
				</tr>
				<tr>
					<td class="td_memu">${partyVo.pay_kind_1}</td>
					<td>${partyVo.pay_1_1}</td>
					<td>${partyVo.pay_2_1}</td>
					<td>${partyVo.pay_3_1}</td>
					<td>${partyVo.pay_4_1}</td>
				</tr>
				<tr>
					<td class="td_memu">${partyVo.pay_kind_2}</td>
					<td>${partyVo.pay_1_2}</td>
					<td>${partyVo.pay_2_2}</td>
					<td>${partyVo.pay_3_2}</td>
					<td>${partyVo.pay_4_2}</td>
				</tr>
				<tr>
					<td class="td_memu">${partyVo.pay_kind_3}</td>
					<td>${partyVo.pay_1_3}</td>
					<td>${partyVo.pay_2_3}</td>
					<td>${partyVo.pay_3_3}</td>
					<td>${partyVo.pay_4_3}</td>
				</tr>
			</table>
			<p><모든정보와 가격에는 변동이 있을 수 있습니다. 정확성을 위해 노력하겠습니다.></p>
		</div>
		
		<div class="div_css">
			<img src="../img/party/impo_banner.png" width="25%" style="margin-left: 0.5em;">
			
			<div style="margin-left: 0.5em; margin-bottom: 3em;">
				<span>${partyVo.info_1}</span><br>
				<span>${partyVo.info_2}</span><br>
				<span>${partyVo.info_3}</span><br>
				<span>${partyVo.info_4}</span><br>
				<span>${partyVo.info_5}</span><br>
				<span>${partyVo.info_6}</span><br>
				<span>${partyVo.info_7}</span><br>
				<span>${partyVo.info_8}</span><br>
				<span>${partyVo.info_9}</span><br>
				<span>${partyVo.info_10}</span>
			</div>
		</div>
		
		<div class="div_css">
			<img src="../img/party/party_schedule.png" width="25%" style="margin-left: 0.5em;">
			
			<div style="margin-top: 0.5em; margin-bottom: 3em;">
				<img src="/upload/img/PARTY/${partyVo.img_05_nm}" width="100%">
			</div>
		</div>
		
		<div class="div_css">
			<input type="hidden" value="${partyVo.latitude}" id="latitude">
			<input type="hidden" value="${partyVo.longitude}" id="longitude">
				
			<img src="../img/travel/map.png" width="25%" style="margin-left: 0.5em;">
			
			<div id="map-canvas" style="width: 100%; height: 250px; margin-top: 1em;"></div>
			<br>
			<img src="../img/travel/address.png" width="15%" style="margin-left: 0.5em;">
			<br>
			<span style="margin-left: 0.5em; margin-right: 0.5em;">${partyVo.addr01}<br>${partyVo.addr02}</span>
			<br><br>
		</div>
		
		<div>
			<img src="/upload/img/PARTY/${partyVo.img_06_nm}" width="100%">
		</div>
		
		<div class="ui-grid-a">
			<div class="ui-block-a" style="border-right: 2px solid #fff;">
				<img src="/upload/img/PARTY/${partyVo.img_07_nm}" width="100%" style="height: 100px;">
			</div>
			<div class="ui-block-b" style="border-left: 2px solid #fff;">
				<img src="/upload/img/PARTY/${partyVo.img_08_nm}" width="100%" style="height: 100px;">
			</div>
		</div>
		
		<div style="margin-left: 0.5em; margin-right: 0.5em;">
			<p>${partyVo.add_info_1}</p>
			<p>${partyVo.add_info_2}</p>
		</div>
		
		<div class="ui-grid-solo" style="margin-top: 2em; margin-bottom: 2em;">
			<div class="ui-block-a">
				<img src="../img/main/big_logo.png" width="100%">
			</div>
		</div>
		
	</div>
</div>
</body>
<script type="text/javascript">
      function initialize() {
		var latitude = $("#latitude").val();
		var longitude = $("#longitude").val();
        var mapLocation = new google.maps.LatLng(latitude, longitude); // 지도에서 가운데로 위치할 위도와 경도 
        var markLocation = new google.maps.LatLng(latitude, longitude); // 마커가 위치할 위도와 경도         

        var mapOptions = {
          center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
          zoom: 18, // 지도 zoom단계
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("map-canvas"), // id: map-canvas, body에 있는 div태그의 id와 같아야 함
            mapOptions);
        var size_x = 60; // 마커로 사용할 이미지의 가로 크기
        var size_y = 60; // 마커로 사용할 이미지의 세로 크기         

        // 마커로 사용할 이미지 주소
        var image = new google.maps.MarkerImage( 'http://www.larva.re.kr/home/img/boximage3.png',
                            new google.maps.Size(size_x, size_y),
                            '',
                            '',
                            new google.maps.Size(size_x, size_y));
        var marker = "";
        marker = new google.maps.Marker({ 
               position: markLocation, // 마커가 위치할 위도와 경도(변수)
               map: map,
               icon: image, // 마커로 사용할 이미지(변수)
            info: '바로 여기~!',
//             title: '' // 마커에 마우스 포인트를 갖다댔을 때 뜨는 타이틀
        });        

//         var content = ""; // 말풍선 안에 들어갈 내용         

        // 마커를 클릭했을 때의 이벤트. 말풍선 뿅~
//         var infowindow = new google.maps.InfoWindow({ content: content});
//         google.maps.event.addListener(marker, "click", function() {
//             infowindow.open(map,marker);
//         });
      }
      google.maps.event.addDomListener(window, 'load', initialize);
</script>
</html>