<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<link rel="stylesheet" href="../css/jquery.bxslider.css"/>
<link rel="stylesheet" href="../css/travel_mobile.css">

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="../js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD60rwjxUjBDRiDUUfwQvNhjiP8d8hXVD8"></script>
<script src="../js/move.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	
	$('.bxslider').bxSlider({
	  mode:'horizontal', //default : 'horizontal', options: 'horizontal', 'vertical', 'fade'
	  speed:100, //default:500 이미지변환 속도
	  auto: false, //default:false 자동 시작
	  captions: true, // 이미지의 title 속성이 노출된다.
	  autoControls: true, //default:false 정지,시작 콘트롤 노출, css 수정이 필요
	});
	
	$('.bxslider2').bxSlider({
	  minSlides: 2,
	  maxSlides: 2,
	  slideWidth: 360,
	  slideMargin: 10,
	  moveSlides: 1,
	  speed:100
	});
	
	//텍스트 area css
	$('#textarea_css').attr("class",'textarea_explain');
});

function food_list(){
	var travel_no = $("#travel_no").val();
	
	var params = "travel_no="+travel_no;
	$.ajax({
        type        : "POST"  
      , async       : false 
      , url         : "/travel/food_list.do"
      , data        : params
      , dataType    : "json" 
      , timeout     : 30000
      , cache       : false     
      , contentType : "application/x-www-form-urlencoded;charset=UTF-8"
      , error       : function(request, status, error) {
			alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");       
      }
      , success     : function(data) {
    	  var check = "yes";
    	  var html = "";
       	  $.each(data.food_list, function (index, food_list) {
       		if(check == 'yes'){
       			html +="	<li>";
           		html +="	  	<div class='ui-grid-a'>";
           		html +="		  	<div class='ui-block-a'>";
           		html +="				<img src='/upload/img/FOOD/"+food_list.main_img_nm+"' width='100%' onclick='move_food_details("+food_list.food_no+","+food_list.travel_no+")'>";
           		html +="			</div>";
           		check = "no";
       		} else {
           		html +="		  	<div class='ui-block-b'>";
           		html +="		  		<img src='/upload/img/FOOD/"+food_list.main_img_nm+"' width='100%' onclick='move_food_details("+food_list.food_no+","+food_list.travel_no+")'>";
           		html +="		  	</div>";
           		html +="	  	</div>";
    			html +=" 	</li>";
    			check = "yes";
       		}
       	  });
       	  $( "#food_list").html(html).trigger("create");
      }
	});
}
function move_food_details(food_no, travel_no){
	location.href="<%=cp%>/travel/food_details.do?travel_no="+travel_no+"&food_no="+food_no;
}
</script>
<title>main</title>
</head>
<body> 
<div data-role="page">
	<div class="main_header" data-role="header" data-position="fixed">
		<img src="../img/header/header_back.png" width="12%" onclick="call_back()">
		<span style="margin-top: 0.2em; font-size: 29px; color: #00ccff; position: absolute;">${foodVo.title}</span>
<!-- 		<img src="../img/header/menu.png" width="10%" align="right" style="margin-right: 0.2em;"> -->
	</div>
	
	<input type="hidden" value="${foodVo.travel_no }" id="travel_no">
	
	<div>
		<!--이미지 -->
		<div>
			<ul class="bxslider">
		  	<c:if test="${foodVo.img_01_nm != null && foodVo.img_01_nm != ''}">
		  		<li><img src="/upload/img/FOOD/${foodVo.img_01_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${foodVo.img_02_nm != null && foodVo.img_02_nm != ''}">
				<li><img src="/upload/img/FOOD/${foodVo.img_02_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${foodVo.img_03_nm != null && foodVo.img_03_nm != ''}">
				<li><img src="/upload/img/FOOD/${foodVo.img_03_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${foodVo.img_04_nm != null && foodVo.img_04_nm != ''}">
				<li><img src="/upload/img/FOOD/${foodVo.img_04_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${foodVo.img_05_nm != null && foodVo.img_05_nm != ''}">
				<li><img src="/upload/img/FOOD/${foodVo.img_05_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${foodVo.img_06_nm != null && foodVo.img_06_nm != ''}">
				<li><img src="/upload/img/FOOD/${foodVo.img_06_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${foodVo.img_07_nm != null && foodVo.img_07_nm != ''}">
				<li><img src="/upload/img/FOOD/${foodVo.img_07_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${foodVo.img_08_nm != null && foodVo.img_08_nm != ''}">
				<li><img src="/upload/img/FOOD/${foodVo.img_08_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${foodVo.img_09_nm != null && foodVo.img_09_nm != ''}">
				<li><img src="/upload/img/FOOD/${foodVo.img_09_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${foodVo.img_10_nm != null && foodVo.img_10_nm != ''}">
				<li><img src="/upload/img/FOOD/${foodVo.img_10_nm}" width="100%" ></li>
			</c:if>
			</ul>
		</div>
		
		<div style="margin-bottom: 1em; margin-top: -3.5em;">
			<img src="/upload/img/FOOD/${foodVo.sub_img_nm}" width="100%" style="height: 120px;">
		</div>
		
		<div class="div_css">
			<img src="../img/food/explain_banner.png" width="25%" style="margin-left: 0.5em;">
			
			<div style="margin-left: 0.5em; margin-right: 0.5em;">
				<textarea id="textarea_css" readonly="readonly">${foodVo.content_1}</textarea>
			</div>
		</div>
		
		<div class="div_css">
			<img src="../img/travel/using_time.png" width="25%" style="margin-left: 0.5em;">
			
			<div style="margin-left: 0.5em; margin-right: 0.5em;">
				<br>
				<span>${foodVo.use_time_1}</span><br>
				<span>${foodVo.use_time_2}</span><br>
				<span>${foodVo.use_time_3}</span>
				<br>
				<br>
			</div>
		</div>
		
		<div class="div_css" style="margin-top: 1em;">
			<img src="../img/food/memu_banner.png" width="25%" style="margin-left: 0.5em;">
			
			<div style="margin-top:1em; margin-bottom: 1em;">
				<table border="1" style="width: 100%;">
					<tr>
						<td width="20%">${foodVo.menu_nm_1}</td>
						<td width="20%">${foodVo.menu_nm_2}</td>
						<td width="20%">${foodVo.menu_nm_3}</td>
						<td width="20%">${foodVo.menu_nm_4}</td>
					</tr>
					<tr>
						<td>${foodVo.menu_nm_5}</td>
						<td>${foodVo.menu_nm_6}</td>
						<td>${foodVo.menu_nm_7}</td>
						<td>${foodVo.menu_nm_8}</td>
					</tr>
					<tr>
						<td>${foodVo.menu_nm_9}</td>
						<td>${foodVo.menu_nm_10}</td>
						<td>${foodVo.menu_nm_11}</td>
						<td>${foodVo.menu_nm_12}</td>
					</tr>
					<tr>
						<td>${foodVo.menu_nm_13}</td>
						<td>${foodVo.menu_nm_14}</td>
						<td>${foodVo.menu_nm_15}</td>
						<td>${foodVo.menu_nm_16}</td>
					</tr>
					<tr>
						<td>${foodVo.menu_nm_17}</td>
						<td>${foodVo.menu_nm_18}</td>
						<td>${foodVo.menu_nm_19}</td>
						<td>${foodVo.menu_nm_20}</td>
					</tr>
				</table>
			</div>
			<p>모든정보, 시간정보의 변동이 있을수 있으며 메뉴, 가격은 싯가에 따라 자주 변동 될수있습니다.</p>
			<p><유의하시어 본 내용은 참고만 해주세요!></p>
		</div>
		
		<div class="div_css">
			<input type="hidden" value="${foodVo.latitude}" id="latitude">
			<input type="hidden" value="${foodVo.longitude}" id="longitude">
				
			<img src="../img/travel/map.png" width="25%" style="margin-left: 0.5em;">
			
			<div id="map-canvas" style="width: 100%; height: 250px; margin-top: 1em;"></div>
			<br>
			<img src="../img/travel/address.png" width="15%" style="margin-left: 0.5em;">
			<br>
			<span style="margin-left: 0.5em; margin-right: 0.5em;">${foodVo.addr01}</span><br>
			<span style="margin-left: 0.5em; margin-right: 0.5em;">${foodVo.addr02}</span>
			<br><br>
		</div>
		
		<div>
			<img src="../img/travel/food_banner.png" width="25%" style="margin-bottom: 1em; margin-left: 0.5em;">
 			
			<c:set var="list_size" value="${food_list}"/>
			<c:set var="list_num" value="${fn:length(list_size)}"/>
			
			<ul class="bxslider2">
				<c:if test="${list_num < 2 }">
					<c:forEach var="food_list" items="${food_list}">
						<li>
							<img src="/upload/img/FOOD/${food_list.main_img_nm}" width='50%' onclick='move_food_details("${food_list.food_no}","${food_list.travel_no}")'>
						</li>
					</c:forEach>
				</c:if>
				<c:if test="${list_num >= 2 }">
					<c:forEach var="food_list" items="${food_list}">
						<li>
							<img src="/upload/img/FOOD/${food_list.main_img_nm}" width='100%' onclick='move_food_details("${food_list.food_no}","${food_list.travel_no}")'>
						</li>
					</c:forEach>
				</c:if>
			</ul>
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