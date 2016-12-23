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
function move_notice_details(notice_no){
	location.href="<%=cp%>/main/notice_details.do?notice_no="+notice_no;
}

</script>
</head>
<body>
<div data-role="page">
	<div class="main_header" data-role="header" data-position="fixed">
		<img src="../img/header/header_back.png" width="10%" onclick="call_back()">
		<img src="../img/header/notice_header.png" width="20%">
	</div>
	
	<!-- 리스트 -->	
	<c:forEach var="list" items="${list}">
		<div class="ui-grid-a notice_div_list" onclick="move_notice_details('${list.notice_no}')">
			<div class="ui-block-a" style="width: 20%; margin-left: 1em;">				
				<img src="../img/main/notice_list_header.png" width="60%" style="margin-top: 0.7em;">
			</div>
			<div class="ui-block-b" style="width: 70%;">
				<p>${list.title}</p>
			</div>
		</div>
	</c:forEach>
	


</div>
</body>
</html>