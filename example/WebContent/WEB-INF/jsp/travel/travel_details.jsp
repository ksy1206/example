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
<link rel="stylesheet" href="../css/travel_mobile.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/jquery.bxslider.css"/>


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
	  //infiniteLoop: false,
	});	
	
	$('.bxslider2').bxSlider({
	  minSlides: 2,
	  maxSlides: 2,
	  slideWidth: 360,
	  slideMargin: 10,
	  moveSlides: 1,
	  speed:100
	});
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
           		html +="				<img src='/upload/img/FOOD/"+food_list.main_img_nm+"' width='100%' height='150px' onclick='move_food_details("+food_list.food_no+","+food_list.travel_no+")'>";
           		html +="			</div>";
           		check = "no";
       		} else {
           		html +="		  	<div class='ui-block-b'>";
           		html +="		  		<img src='/upload/img/FOOD/"+food_list.main_img_nm+"' width='100%' height='150px' onclick='move_food_details("+food_list.food_no+","+food_list.travel_no+")'>";
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
		<span style="margin-top: 0.2em; font-size: 29px; color: #00ccff; position: absolute;">${travelVo.title}</span>
<!-- 		<img src="../img/header/menu.png" width="10%" align="right" style="margin-right: 0.2em;"> -->
	</div>
	
	<input type="hidden" value="${travelVo.travel_no }" id="travel_no">
	
	<div>
		<!--이미지 -->
		<div>
			<ul class="bxslider">
		  	<c:if test="${travelVo.img_01_nm != null && travelVo.img_01_nm != ''}">
		  		<li><img src="/upload/img/TRAVEL/${travelVo.img_01_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_02_nm != null && travelVo.img_02_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_02_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_03_nm != null && travelVo.img_03_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_03_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_04_nm != null && travelVo.img_04_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_04_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_05_nm != null && travelVo.img_05_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_05_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_06_nm != null && travelVo.img_06_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_06_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_07_nm != null && travelVo.img_07_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_07_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_08_nm != null && travelVo.img_08_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_08_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_09_nm != null && travelVo.img_09_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_09_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_10_nm != null && travelVo.img_10_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_10_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_11_nm != null && travelVo.img_11_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_11_nm}" width="100%" ></li>
			</c:if>			
			<c:if test="${travelVo.img_12_nm != null && travelVo.img_12_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_12_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_13_nm != null && travelVo.img_13_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_13_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_14_nm != null && travelVo.img_14_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_14_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_15_nm != null && travelVo.img_15_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_15_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_16_nm != null && travelVo.img_16_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_16_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_17_nm != null && travelVo.img_17_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_17_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_18_nm != null && travelVo.img_18_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_18_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_19_nm != null && travelVo.img_19_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_19_nm}" width="100%" ></li>
			</c:if>
			<c:if test="${travelVo.img_20_nm != null && travelVo.img_20_nm != ''}">
				<li><img src="/upload/img/TRAVEL/${travelVo.img_20_nm}" width="100%" ></li>
			</c:if>
			</ul>
		</div>
		
		<div class="div_css">
			<div style="margin-bottom: 1em; font-size: 18px;">
				<span style="margin-left: 0.5em; margin-right: 0.5em;"><b>${travelVo.sub_title}</b></span>
			</div>
		</div>
		
		<div class="div_css">
			<img src="../img/travel/using_time.png" width="25%" style="margin-left: 0.5em;">
			
			<div style="margin-left: 0.5em; margin-right: 0.5em;">
				<span>${travelVo.use_time_1}</span><br>
				<span>${travelVo.use_time_2}</span><br>
				<span>${travelVo.use_time_3}</span>
				<p><시간, 모든정보 및 이용료에는 잦은 변동이 있습니다. 꼭! 유의하시기 바랍니다.></p>
			</div>
		</div>
		
		<div class="div_css">
			<img src="../img/travel/imformation.png" width="25%" style="margin-left: 0.5em;">
			
			<div style="margin-left: 0.5em; margin-right: 0.5em; margin-bottom: 3em;">
				<span>${travelVo.info_1}</span><br>
				<span>${travelVo.info_2}</span><br>
				<span>${travelVo.info_3}</span><br>
				<span>${travelVo.info_4}</span><br>
				<span>${travelVo.info_5}</span><br>
				<span>${travelVo.info_6}</span><br>
				<span>${travelVo.info_7}</span>
			</div>
		</div>
		
		<div class="div_css">
			<img src="../img/travel/cost.png" width="25%" style="margin-left: 0.5em;">
			
			<table style="width: 100%; height: 150px;">
				<tr>
					<td width="20%"></td>
					<td width="20%" class="td_header">${travelVo.pay_nm_1}</td>
					<td width="20%" class="td_header">${travelVo.pay_nm_2}</td>
					<td width="20%" class="td_header">${travelVo.pay_nm_3}</td>
					<td width="20%" class="td_header">${travelVo.pay_nm_4}</td>
				</tr>
				<tr>
					<td class="td_memu">${travelVo.pay_kind_1}</td>
					<td>${travelVo.pay_1_1}</td>
					<td>${travelVo.pay_2_1}</td>
					<td>${travelVo.pay_3_1}</td>
					<td>${travelVo.pay_4_1}</td>
				</tr>
				<tr>
					<td class="td_memu">${travelVo.pay_kind_2}</td>
					<td>${travelVo.pay_1_2}</td>
					<td>${travelVo.pay_2_2}</td>
					<td>${travelVo.pay_3_2}</td>
					<td>${travelVo.pay_4_2}</td>
				</tr>
				<tr>
					<td class="td_memu">${travelVo.pay_kind_3}</td>
					<td>${travelVo.pay_1_3}</td>
					<td>${travelVo.pay_2_3}</td>
					<td>${travelVo.pay_3_3}</td>
					<td>${travelVo.pay_4_3}</td>
				</tr>
			</table>
			<p><시간, 모든정보 및 이용료에는 잦은 변동이 있습니다. 꼭! 유의하시기 바랍니다.></p>		
		</div>
		
		<div class="div_css">
			<img src="../img/travel/add_info.png" width="25%" style="margin-left: 0.5em;">
			
			<div style="margin-left: 0.5em; margin-right: 0.5em; margin-bottom: 3em;">
				<span>${travelVo.add_info_1}</span><br>
				<span>${travelVo.add_info_2}</span><br>
				<span>${travelVo.add_info_3}</span><br>
				<span>${travelVo.add_info_4}</span><br>
				<span>${travelVo.add_info_5}</span><br>
				<span>${travelVo.add_info_6}</span><br>
				<span>${travelVo.add_info_7}</span>
			</div>
		</div>
		
		
		<div class="div_css">
			<img src="../img/travel/facilities.png" width="25%" style="margin-left: 0.5em;">
			
			<div align="center" style="margin-top: 1em; margin-bottom: 1em;">
				<div class="ui-grid-c">
					<c:if test="${travelVo.fac_1_yn == 'Y'}">
						<div class="ui-block-a"><img src="../img/travel/fac_1_y.png" width="80%"></div>
					</c:if>
					<c:if test="${travelVo.fac_1_yn == 'N'}">
						<div class="ui-block-a"><img src="../img/travel/fac_1_n.png" width="80%"></div>
					</c:if>
					<c:if test="${travelVo.fac_2_yn == 'Y'}">
						<div class="ui-block-b"><img src="../img/travel/fac_2_y.png" width="80%"></div>
					</c:if>
					<c:if test="${travelVo.fac_2_yn == 'N'}">
						<div class="ui-block-b"><img src="../img/travel/fac_2_n.png" width="80%"></div>
					</c:if>
					<c:if test="${travelVo.fac_3_yn == 'Y'}">
						<div class="ui-block-c"><img src="../img/travel/fac_3_y.png" width="79%"></div>
					</c:if>
					<c:if test="${travelVo.fac_3_yn == 'N'}">
						<div class="ui-block-c"><img src="../img/travel/fac_3_n.png" width="79%"></div>
					</c:if>
					<c:if test="${travelVo.fac_4_yn == 'Y'}">
						<div class="ui-block-d"><img src="../img/travel/fac_4_y.png" width="80%"></div>
					</c:if>
					<c:if test="${travelVo.fac_4_yn == 'N'}">
						<div class="ui-block-d"><img src="../img/travel/fac_4_n.png" width="80%"></div>
					</c:if>
				</div>
				<div class="ui-grid-c">
					<c:if test="${travelVo.fac_5_yn == 'Y'}">
						<div class="ui-block-a"><img src="../img/travel/fac_5_y.png" width="80%"></div>
					</c:if>
					<c:if test="${travelVo.fac_5_yn == 'N'}">
						<div class="ui-block-a"><img src="../img/travel/fac_5_n.png" width="80%"></div>
					</c:if>
					<c:if test="${travelVo.fac_6_yn == 'Y'}">
						<div class="ui-block-b"><img src="../img/travel/fac_6_y.png" width="92%"></div>
					</c:if>
					<c:if test="${travelVo.fac_6_yn == 'N'}">
						<div class="ui-block-b"><img src="../img/travel/fac_6_n.png" width="92%"></div>
					</c:if>
					<c:if test="${travelVo.fac_7_yn == 'Y'}">
						<div class="ui-block-c"><img src="../img/travel/fac_7_y.png" width="81%"></div>
					</c:if>
					<c:if test="${travelVo.fac_7_yn == 'N'}">
						<div class="ui-block-c"><img src="../img/travel/fac_7_n.png" width="81%"></div>
					</c:if>
					<c:if test="${travelVo.fac_8_yn == 'Y'}">
						<div class="ui-block-d"><img src="../img/travel/fac_8_y.png" width="80%"></div>
					</c:if>
					<c:if test="${travelVo.fac_8_yn == 'N'}">
						<div class="ui-block-d"><img src="../img/travel/fac_8_n.png" width="80%"></div>
					</c:if>
				</div>
			</div>
		</div>
		
		<div class="div_css">
			<input type="hidden" value="${travelVo.latitude}" id="latitude">
			<input type="hidden" value="${travelVo.longitude}" id="longitude">
				
			<img src="../img/travel/map.png" width="25%" style="margin-left: 0.5em;">
			
			<div id="map-canvas" style="width: 100%; height: 250px; margin-top: 1em;"></div>
			<br>
			<img src="../img/travel/address.png" width="15%" style="margin-left: 0.5em;">
			<br>
			<span style="margin-left: 0.5em; margin-right: 0.5em;">${travelVo.addr01}</span><br>
			<span style="margin-left: 0.5em; margin-right: 0.5em;">${travelVo.addr02}</span>
			<br><br>
		</div>
		
		<c:if test="${travelVo.fd_yn == 'Y'}">
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
		</c:if>
		
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