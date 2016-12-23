<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<c:if test="${data == '01' }">
			<img src="../img/travel/map_gunggido.png" width="100%">
		</c:if>
		<c:if test="${data == '02' }">
			<img src="../img/travel/map_gangwondo.png" width="100%">
		</c:if>
		<c:if test="${data == '03' }">
			<img src="../img/travel/map_chungcheongdo.png" width="100%">
		</c:if>
		<c:if test="${data == '04' }">
			<img src="../img/travel/map_Jeonlado.png" width="100%">
		</c:if>
		<c:if test="${data == '05' }">
			<img src="../img/travel/map_gyeongsang.png" width="100%">
		</c:if>
		<c:if test="${data == '06' }">
			<img src="../img/travel/map_jejudo.png" width="100%">
		</c:if>
	</div>
</div>
</body>
</html>