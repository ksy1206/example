<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%  
	String cp = request.getContextPath();
	
%>
<!DOCTYPE html>
<html>
<head>
  <title>어차여행 관리자</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  </style>
</head>


<script type="text/javascript">

	$(document).ready(function(){
		$('#pwd').keyup(function(e) {
		    if (e.keyCode == 13){
		    	login_btn();
			
		    }      
		});
	});//end document
	
	function login_btn(){
		
		
		var pwd = $("#pwd").val();
		
		if(pwd != "admin"){
			alert("관리자가 아닙니다.");
			return false;
		}
		
		location.href="<%=cp%>/admin/get_travel_list.do";
		
	}
	


</script>


<body>

<div class="container-fluid" style="background-color:#2196F3;color:#fff;height:200px;">
  <h1>어차여행 관리자</h1>
</div>

<div style="margin-left: 15em; margin-right: 15em; margin-top: 3em;">
	<div align="center">
		<img src="../img/main/big_logo.png" width="50%">
	</div>
	
	<div style="margin-top: 3em;">
		<div class="form-group">
		  <label for="pwd">관리자비밀번호를 입력 하세요.</label>
		  <input type="password" class="form-control" value="" id="pwd">
		</div>
	</div>
	<div align="center">
		<button class="btn btn-success" onclick="login_btn()" >로그인</button>
	</div>
</div>		


</body>
</html>

