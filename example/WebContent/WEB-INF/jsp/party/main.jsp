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

function move_party_list(check_value){
	location.href="<%=cp%>/party/move_list.do?check_value="+check_value;
}


</script>
<title>main</title>
</head>
<body>
<div data-role="page">
	<div class="main_header" data-role="header" data-position="fixed">
		<jsp:include page="../header_memu.jsp"></jsp:include>
		<img src="../img/header/header_back.png" width="12%" onclick="call_back()">
		<img src="../img/header/party_logo.png" width="47%" style="margin-left: -1em;">
		<img src="../img/header/menu.png" width="12%" align="right" style="margin-right: 0.2em;" onclick="modal_header()">
		<img src="../img/header/search.png" align="right" width="13.5%" style="margin-right: 0.2em;" onclick="move_search()">
	</div>
	
	<div align="center" style="margin-top: 3em;">
	
		<div class="ui-grid-a div_main">
			<div class="ui-block-a">
				<img src="../img/party/seoul_gungi.png" width="85%" onclick="move_party_list('서울,경기')">
			</div>
			<div class="ui-block-b">
				<img src="../img/party/gangwon.png" width="85%" onclick="move_party_list('강원')">
			</div>
		</div>
		
		<div class="ui-grid-a div_main">
			<div class="ui-block-a">
				<img src="../img/party/dageon.png" width="85%" onclick="move_party_list('충청,대전')">
			</div>
			<div class="ui-block-b">
				<img src="../img/party/busan_dagu_ulsan.png" width="85%" onclick="move_party_list('경상,울산,부산,대구')">
			</div>
		</div>
		
		<div class="ui-grid-a div_main">
			<div class="ui-block-a">
				<img src="../img/party/junla.png" width="85%" onclick="move_party_list('전라,광주')">
			</div>
			<div class="ui-block-b">
				<img src="../img/party/jeju.png" width="85%" onclick="move_party_list('제주')">
			</div>
		</div>
		
		
		
		<div class="ui-grid-solo" style="margin-top: -1.5em;">
			<div class="ui-block-a">
				<img src="../img/main/big_logo.png" width="100%">
			</div>
		</div>
		
		
		
	</div>
</div>

</body>
</html>