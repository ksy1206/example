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
<script src="../js/move.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
});
</script>

</head>
<body>
<div data-role="page">
	<div class="main_header" data-role="header" data-position="fixed">
		<img src="../img/header/header_back.png" width="10%" onclick="call_back()">
		<img src="../img/header/inquire_header.png" width="14%">
	</div>

	<div align="center" data-role="content">
		<div class="ui-grid-a" style="margin-top: 3em;">
			<div class="ui-block-a" style="width: 30%">
				<img src="../img/main/insert_banner.png" width="70%">
			</div>
			<div align="right" class="ui-block-b" style="width: 70%; font-size: 10px;">
				<p>[업무시간 am 09:00 - p.m 18:00]</p>
			</div>
		</div>
	
		<div style="border: 2px solid #00bfef; margin-top: 1em;">
			<div class="ui-grid-a" style="margin-top: 0.3em; margin-bottom: 0.1em;">
				<div class="ui-block-a" style="width: 30%">
					<img src="../img/main/phone.png" width="50%">
				</div>
				<div class="ui-block-b" style="width: 70%">
					<p>${result.tel}</p>
				</div>
			</div>
		</div>	
		
		<div style="border: 2px solid #00bfef; margin-top: 2em;">
			<div class="ui-grid-a" style="margin-top: 0.3em; margin-bottom: 0.1em;">
				<div class="ui-block-a" style="width: 30%">
					<img src="../img/main/mail.png" width="50%">
				</div>
				<div class="ui-block-b" style="width: 70%">
					<p>${result.sms}</p>
				</div>
			</div>
		</div>
		
		<div style="border: 2px solid #00bfef; margin-top: 2em;">
			<div class="ui-grid-a" style="margin-top: 0.3em; margin-bottom: 0.1em;">
				<div class="ui-block-a" style="width: 30%">
					<img src="../img/main/pax.png" width="50%">
				</div>
				<div class="ui-block-b" style="width: 70%">
					<p>${result.fax}</p>
				</div>
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