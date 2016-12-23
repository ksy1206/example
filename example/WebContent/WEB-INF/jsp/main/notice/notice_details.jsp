<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
$(document).ready(function(){
	//텍스트 area css
	$('#textarea_css').attr("class",'textarea_notice_details');
});
</script>

</head>
<body>
<div data-role="page">
	<div class="main_header" data-role="header" data-position="fixed">
		<img src="../img/header/header_back.png" width="10%" onclick="call_back()">
		<img src="../img/header/notice_header.png" width="20%">
	</div>

	<div>
		<c:set var="insert_date" value="${noticeVo.insert_date}"/>
		<span class="span_date">${fn:substring(insert_date, 0, 10)}</span>
		<textarea id="textarea_css" readonly="readonly">${noticeVo.content}</textarea>
		
		<div align="center">
			<c:if test="${noticeVo.img_01_nm != null && noticeVo.img_01_nm != ''}">
				<img src="/upload/img/NOTICE/${noticeVo.img_01_nm}" width="100%">
			</c:if>
			<c:if test="${noticeVo.img_02_nm != null && noticeVo.img_02_nm != ''}">
				<img src="/upload/img/NOTICE/${noticeVo.img_02_nm}" width="100%">
			</c:if>	
			<c:if test="${noticeVo.img_03_nm != null && noticeVo.img_03_nm != ''}">
				<img src="/upload/img/NOTICE/${noticeVo.img_03_nm}" width="100%">
			</c:if>		
		</div>
	</div>

</div>
</body>
</html>