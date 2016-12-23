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


</script>
<title>main</title>
</head>
<body>
<div data-role="page">

	<input type="hidden" value="main_page" id="what_page">
	
	<div data-role="header" class="main_header" data-position="fixed" >
		<jsp:include page="../header_memu.jsp"></jsp:include>
		&nbsp;&nbsp;<img src="../img/header/header_logo.png" width="30%">
		<img src="../img/header/menu.png" width="12%" align="right" onclick="modal_header()">
		<img src="../img/header/search.png" align="right" width="13.5%" onclick="move_search()">
	</div>
	
	<div id="page" style="margin-top: 1.5em;">
		<img src="../img/main/main_party.png" width="100%" onclick="move_party_main()">
		<img src="../img/main/main_travel.png" width="100%" onclick="move_travel_main()">
		<div align="center">
		<img src="../img/main/big_logo.png" width="90%">
		</div>
	</div>
	
</div>

</body>
</html>