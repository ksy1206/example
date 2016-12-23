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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/travel_mobile.css">

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="../js/move.js"></script>
<script type="text/javascript">
function move_party_details(party_no){
	location.href="<%=cp%>/party/party_details.do?party_no="+party_no;
}

</script>
<title>main</title>
</head>
<body>
<div data-role="page">
	<div class="main_header" data-role="header" data-position="fixed">
		<jsp:include page="../header_memu.jsp"></jsp:include>
		<img src="../img/header/header_back.png" width="12%" onclick="call_back()">
		<span style="margin-top:0.5em; font-size: 22px; color: #6d6558; position: absolute;">${title}</span>
		<img src="../img/header/menu.png" width="12%" align="right" style="margin-right: 0.2em;" onclick="modal_header()">
		<img src="../img/header/search.png" align="right" width="13.5%" style="margin-right: 0.2em;" onclick="move_search()">
	</div>
	
	<div>
		<c:forEach var="list" items="${list}">
			<div style="margin-top: 1.5em; margin-left: 1em; margin-right: 1em;">
				<img src="/upload/img/PARTY/${list.main_img_nm}" width="100%;" height="270px" onclick="move_party_details('${list.party_no}')">
			</div>
		</c:forEach>
	</div>
</div>

</body>
</html>