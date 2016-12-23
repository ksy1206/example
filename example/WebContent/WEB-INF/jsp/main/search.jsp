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
	//텍스트 박스 css
	$('#search_input > div' ).attr("class",'ui-input-text');
});

function search_list(){
	var hashtag = $("#hashtag").val();
	var params = "hashtag="+hashtag;
	$.ajax({
        type        : "POST"  
      , async       : false 
      , url         : "/main/search_list.do"
      , data        : params
      , dataType    : "json" 
      , timeout     : 30000
      , cache       : false     
      , contentType : "application/x-www-form-urlencoded;charset=UTF-8"
      , error       : function(request, status, error) {
			alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");       
      }
      , success     : function(data) {
    	  var html_party = "";
    	  var html_travel = "";
    	  
       	  $.each(data.party_list, function (index, party_list) {
       		html_party += "<div style='margin-top: 1.5em;'>";
       		html_party += "<img src='/upload/img/PARTY/"+party_list.main_img_nm+"' width='100%;' onclick='move_party_details("+party_list.party_no+")'>";
       		html_party += "</div>";
       	  });
       	  $("#party_list_count").html
       	  $( "#party_list").html(html_party).trigger("create");
          
       	  $.each(data.travel_list, function (index, travel_list) {
       		html_travel += "<div style='margin-top: 1.5em;'>";
       		html_travel += "<img src='/upload/img/TRAVEL/"+travel_list.main_img_nm+"' width='100%;' onclick='move_travel_details("+travel_list.travel_no+")'>";
       		html_travel += "</div>";
     	  });
       	  
     	  $( "#travel_list").html(html_travel).trigger("create");
     	  
     	  var t_count = data.travel_list.length;
     	  var p_count = data.party_list.length;
     	  
     	  if(t_count == 0){
     		 document.getElementById('travel_count').innerHTML = "&nbsp;검색결과가 없습니다.";
     	  } else {
     		 document.getElementById('travel_count').innerHTML = "&nbsp;검색결과"+t_count+"건";
     	  }
     	  
     	  if(p_count == 0){
     		 document.getElementById('party_count').innerHTML = "&nbsp;검색결과가 없습니다.";
     	  } else {
     		 document.getElementById('party_count').innerHTML = "&nbsp;검색결과"+p_count+"건";
     	  }
     	  
     	  
     	  
     	  
     	  document.getElementById('search_page').style.display = "none";
     	  document.getElementById('search_result_page').style.display = "";
      }
	});
}

function move_party_details(party_no){
	location.href="<%=cp%>/party/party_details.do?party_no="+party_no;
}

function move_travel_details(travel_no){
	location.href="<%=cp%>/travel/travel_details.do?travel_no="+travel_no;
}
</script>

</head>
<body>
<div data-role="page">
	<div class="main_header" data-role="header" data-position="fixed">
		<div class="ui-grid-a" style="margin-top:0.3em; margin-bottom: 0.3em;">
			<div class="ui-block-a" style="width: 80%; border: 1px solid #00bfef; margin-left: 0.5em;">
				<div class="ui-grid-a">
					<div class="ui-block-a" style="width: 80%;" id="search_input">
						<input type="text" value="" id=hashtag placeholder="검색어를 입력하세요.">
					</div>
					<div class="ui-block-b" align="center" style="width: 20%;">
						<img src="../img/header/search.png" width="95%" onclick="search_list()">
					</div>
				</div>
			</div>
			<div class="ui-block-b" align="right" style="width: 15%;">
				<img src="../img/header/header_x_icon.png" width="100%" onclick="call_back()">
			</div>
		</div>	

	</div>
	
	<div style="font-size: 20px; display: none;" id="search_result_page">
		<div class="ui-grid-a" style="border-top: 2px solid #00bfef; border-bottom: 2px solid #00bfef; margin-top: 2em;">
			<div class="ui-block-a" style="width: 30%; background-color: #00bfef; color: #fff; text-align: center;">
				<p>축제<p>
			</div>
			<div class="ui-block-b" style="width: 70%;">
				<p id="party_count"><p>
			</div>
		</div>
	
		<div data-role="content" align="center" id="party_list"></div>
		
		<div class="ui-grid-a" style="border-top: 2px solid #00bfef; border-bottom: 2px solid #00bfef; margin-top: 2em;">
			<div class="ui-block-a" style="width: 30%; background-color: #00bfef; color: #fff; text-align: center;">
				<p>여행지<p>
			</div>
			<div class="ui-block-b" style="width: 70%;">
				<p id="travel_count"><p>
			</div>
		</div>
	
		<div data-role="content" align="center" id="travel_list"></div>
	</div>
	
	<div data-role="content" id="search_page">
		<p>검색 버튼을 이용하여, 축제와 여행지의 정보를 검색해 보세요.</p>
	</div>
</div>
</body>
</html>