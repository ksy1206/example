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



<body>

<div class="container-fluid" style="background-color:#2196F3;color:#fff;height:200px;">
  <h1>어차여행 관리자</h1>
</div>

<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197" style="z-index: 1;">
  <ul class="nav navbar-nav">
    <li id="travel_li"><a href="<%=cp%>/admin/get_travel_list.do">여행지정보</a></li>
    <li id="food_li"><a href="<%=cp%>/admin/get_food_list.do">먹거리정보</a></li>
    <li id="party_li"><a href="<%=cp%>/admin/get_party_list.do">축제정보</a></li>
    <li id="notice_li"><a href="<%=cp%>/admin/get_notice_list.do">공지사항</a></li>
    <li id="add_info_li"><a href="<%=cp%>/admin/get_add_info_list.do">추가정보</a></li>
  </ul>
</nav>



</body>
</html>

