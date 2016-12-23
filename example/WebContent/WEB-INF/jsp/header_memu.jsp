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

<script type="text/javascript">
$(document).ready(function(){
	
});

function modal_header(){
	document.getElementById('memu').style.display = '';
	document.getElementById('page').style.display = 'block';
	$('#page').attr("class",'mask');
}

function close_memu(){
	document.getElementById('memu').style.display = 'none';
	$('#page').attr("class",'');
}

function move_notice(){
	location.href="<%=cp%>/main/notice_list.do";
}

function move_inquire(){
	location.href="<%=cp%>/main/inquire.do";
}
function move_clause(){
	location.href="<%=cp%>/main/clause.do";
}
</script>

</head>
<body style="">

	<div id="memu" data-dismissible="true" data-role="header" class="background_img" data-position="fixed" style="background-color: rgba( 255, 255, 255, 0.5 );
	 display: none; background-image: url(../img/header/memu_background_img.png);">

		<div class="ui-grid-c" style="margin: 1em 1em 1em 1em;">
			<div class="ui-block-a" align="left"><img src="../img/header/memu_notice.png" width="85%" onclick="move_notice()"></div>
			<div class="ui-block-b" align="center"><a href="https://www.facebook.com/achchatravel"><img src="../img/header/memu_facebook.png" width="85%"></a></div>
			<div class="ui-block-c" align="right"><a href="http://cafe.naver.com/achchatravel"><img src="../img/header/memu_cafe.png" width="85%"></a></div>
			<div class="ui-block-d">
				<img src="../img/header/header_x_icon.png" width="100%" style="position: absolute; width: 10%; top: 10px; right: 10px;" onclick="close_memu()">
			</div>
		</div>
	
		<div class="ui-grid-b">
			<div class="ui-block-a" style="width: 70%; text-align: center;">
				<span style="font-size: 18px;">회사사업자명</span><br>
				<span style="font-size: 12px;">사업자번호....</span>
			</div>
			<div class="ui-block-b" style="width: 15%;">
				<img src="../img/header/memu_clause.png" style="position: absolute; width: 13%; top: 120px;" onclick="move_clause()">
			</div>
			<div class="ui-block-c" style="width: 15%;">
				<img src="../img/header/memu_inquiry.png" style="position: absolute; width: 13%; top: 120px;" onclick="move_inquire()">
			</div>
		</div>	
		<div style="height: 100%;" onclick="close_memu();"></div>
	</div>
	
	
</body>
</html>