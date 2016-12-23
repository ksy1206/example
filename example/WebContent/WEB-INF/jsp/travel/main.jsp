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
<link rel="stylesheet" href="../css/travel_mobile.css">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="../js/move.js"></script>

<script type="text/javascript">

$(document).ready(function(){

});

function move_travel_list(check_value){
	location.href="<%=cp%>/travel/move_list.do?check_value="+check_value;
}

function move_map(data){
	location.href="<%=cp%>/travel/move_map.do?data="+data;
}

</script>
<title>main</title>
</head>
<body>
<div data-role="page">
	<div class="main_header" data-role="header" data-position="fixed">
		<jsp:include page="../header_memu.jsp"></jsp:include>
		<img src="../img/header/header_back.png" width="12%" onclick="call_back()">
		<img src="../img/header/travel_logo.png" width="47%" style="margin-left: -1em; margin-bottom: 0.3em;">
		<img src="../img/header/menu.png" width="12%" align="right" style="margin-right: 0.2em;" onclick="modal_header()">
		<img src="../img/header/search.png" align="right" width="13.5%" style="margin-right: 0.2em;" onclick="move_search()">
	</div>
	
	<div align="center">
		<div class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="../img/travel/map_button.png" width="10%" class="div_map_button" onclick="move_map('01')">
				<img src="../img/travel/seoul_incheon_gunggi.png" width="100%" style="z-index: 2;">
			</div>
		</div>
		
		<div class="background_img" style="background-image: url(../img/travel/background_seoul.png);">
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('강남,강동,강북')">강남, 강동, 강북</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('강서,관악,광진')">강서, 관악, 광진</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('구로,금천,노원')">구로, 금천, 노원</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('도봉,동대문,동작')">도봉, 동대문, 동작</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('마포,서대문,서초')">마포, 서대문, 서초</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('성동,성북,송파')">성동, 성북, 송파</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('양천,영등포,용산')">양천, 영등포, 용산</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('은평,종로')">은평 ,종로</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_b">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('중구,중랑')">중구, 중랑</p>
			</div>
			<div class="ui-block-b">
				<p></p>
			</div>
		</div>
		</div>
		
		
		<div class="background_img" style="background-image: url(../img/travel/background_gunggi.png);">
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('인천')">인천</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('가평,고양,과천')">가평, 고양, 과천</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('광명,광주,군포')">광명, 광주, 군포</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('구리,김포,남양주')">구리, 김포, 남양주</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('동두천,부천,성남')">동두천, 부천, 성남</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('수원,시흥,안산')">수원, 시흥, 안산</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('안성,안양,양주')">안성, 안양, 양주</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('여주,연천,양평')">여주, 연천, 양평</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('오산,용인,의왕')">오산, 용인, 의왕</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('의정부,이천,파주')">의정부, 이천, 파주</p>
			</div>
		</div>
		
		<div class="ui-grid-a" align="center">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('평택,포천')">평택, 포천</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('하남,화성')">하남, 화성</p>
			</div>
		</div>
		</div>
		
		<div class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="../img/travel/map_button.png" width="10%" class="div_map_button" onclick="move_map('02')">
				<img src="../img/travel/gangwon.png" width="100%" style="z-index: 2;">
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('강릉,고성,동해')">강릉, 고성, 동해</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('삼척,속초,양구')">삼척, 속초, 양구</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('양양,영월,원주')">양양, 영월, 원주</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('인제,정선,철원')">인제, 정선, 철원</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('춘천,태백,평창')">춘천, 태백, 평창</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('화천,홍청,횡성')">화천, 홍천, 횡성</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p>&nbsp;</p>
			</div>
			<div class="ui-block-b">
				<p>&nbsp;</p>
			</div>
		</div>
		
		<div class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="../img/travel/map_button.png" width="10%" class="div_map_button" onclick="move_map('03')">
				<img src="../img/travel/dajeon_chungcheong.png" width="100%" style="z-index: 2;">
			</div>
		</div>

		<div class="background_img" style="background-image: url(../img/travel/background_buk.png);">
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('대전')">대전</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('괴산,단양,보은')">괴산, 단양, 보은</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('영동,옥천,음성')">영동, 옥천, 음성</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('제천,충주,증평')">제천, 충주, 증평</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_b">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('진천,청주')">진천, 청주</p>
			</div>
			<div class="ui-block-b">
				<p></p>
			</div>
		</div>
		</div>
		
		<div class="background_img" style="background-image: url(../img/travel/background_nam.png);">
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('계룡,공주,금산')">계룡, 공주, 금산</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('논산,당진,보령')">논산, 당진, 보령</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('부여,서산,서천')">부여, 서산, 서천</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('세종,아산,예산')">세종, 아산, 예산</p>
			</div>
		</div>
		
		<div class="ui-grid-a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('천안,청양')">천안, 청양</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('태안,홍성')">태안, 홍성</p>
			</div>
		</div>
		</div>
		
		<div class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="../img/travel/map_button.png" width="10%" class="div_map_button" onclick="move_map('04')">
				<img src="../img/travel/Jeonla_Gwangju.png" width="100%" style="z-index: 2;">
			</div>
		</div>
		
		<div class="background_img" style="background-image: url(../img/travel/background_buk.png);">
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('고창,군산,김제')">고창, 군산, 김제</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('남원,무주,부안')">남원, 무주, 부안</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('순창,완주,익산')">순창, 완주, 익산</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('임실,장수,전주')">임실, 장수, 전주</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_b">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('정읍,진안')">정읍, 진안</p>
			</div>
			<div class="ui-block-b">
				<p></p>
			</div>
		</div>
		</div>
		
		<div class="background_img" style="background-image: url(../img/travel/background_nam2.png);">
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('광주')">광주</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('강진,고흥,곡성')">강진, 고흥, 곡성</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('과양,구례,나주')">광양, 구례, 나주</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('담양,목포,무안')">담양, 목포, 무안</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('보성,순천,신안')">보성, 순천, 신안</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('영광,영암,여수')">영광, 영암, 여수</p>
			</div>
		</div>
		
		<div class="ui-grid-a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('완도,장성,장흥')">완도, 장성, 장흥</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('진도,함평,해남,화순')">진도, 함평, 해남, 화순</p>
			</div>
		</div>		
		</div>
		
		<div class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="../img/travel/map_button.png" width="10%" class="div_map_button" onclick="move_map('05')">
				<img src="../img/travel/Gyeongsang_busan_ulsan_dagu.png" width="100%" style="z-index: 2;">
			</div>
		</div>
		
		<div  class="background_img" style="background-image: url(../img/travel/background_buk2.png);">
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('울산')">울산</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('대구')">대구</p>
			</div>
		</div>		

		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('경산,경주,고령')">경산, 경주, 고령</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('구미,군위,김천')">구미, 군위, 김천</p>
			</div>
		</div>

		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('문경,봉화,상주')">문경, 봉화, 상주</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('성주,안동,영덕')">성주, 안동, 영덕</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('영양,영주,영천')">영양, 영주, 영천</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('예천,울릉,울진')">예천, 울릉, 울진</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_b">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('의성,청도,청송')">의성, 청도, 청송</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('칠곡,포항')">칠곡, 포항</p>
			</div>
		</div>
		</div>
		
		<div class="background_img" style="background-image: url(../img/travel/background_nam2.png);">
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('부산')">부산</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('거제,거창,고성')">거제, 거창, 고성</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('김해,남해,밀양')">김해, 남해, 밀양</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('사천,산청,양산')">사천, 산청, 양산</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('의령,진주,창녕')">의령, 진주, 창녕</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('창원,통영,하동')">창원, 통영, 하동</p>
			</div>
		</div>
		
		<div class="ui-grid-a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('함안,함양,합천')">함안, 함양, 합천</p>
			</div>
			<div class="ui-block-b">
				<p></p>
			</div>
		</div>
		</div>
		
		<div class="ui-grid-solo">
			<div class="ui-block-a">
				<img src="../img/travel/map_button.png" width="10%" class="div_map_button" onclick="move_map('06')">
				<img src="../img/travel/jeju.png" width="100%" style="z-index: 2;">
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('구좌,남원,대정')">구좌, 남원, 대정</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('서귀포,성산')">서귀포, 성산</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('안덕,애월,우도')">안덕, 애월, 우도</p>
			</div>
			<div class="ui-block-b">
				<p onclick="move_travel_list('제주,조천,중문')">제주, 조천, 중문</p>
			</div>
		</div>
		
		<div class="ui-grid-a travel_main_a">
			<div class="ui-block-a travel_main_c">
				<p onclick="move_travel_list('표선,한경,한림')">표선, 한경, 한림</p>
			</div>
			<div class="ui-block-b">
				<p></p>
			</div>
		</div>
		
		<div class="ui-grid-solo" style="margin-top: 2em; margin-bottom: 2em;">
			<div class="ui-block-a">
				<img src="../img/main/big_logo.png" width="100%">
			</div>
		</div>
	</div>
</div>
</body>
</html>