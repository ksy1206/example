<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

</head>


<script type="text/javascript">

	$(document).ready(function(){
		$('#add_info_li').attr("class","active");
	});//end document
	
	
	function update_add_info(){
		var tel = $('#tel').val();
		var sms = $('#sms').val();
		var fax = $('#fax').val();
		var biz_no = $('#biz_no').val();
		
		var params = "tel="+tel+"&sms="+sms+"&fax="+fax+"&biz_no="+biz_no;
		
		 $.ajax({
	            type        : "POST" 
	          , async       : true
	          , url         : "/admin/update_add_info.do"
	          , data        : params
	          , dataType    : "json"
	          , timeout     : 30000  
	          , cache       : false    
	          //, contentType : "application/x-www-form- urlencoded;charset=UTF-8"
	          , error       : function(request, status, error) {
	             alert( "작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오." );    
	          }
	          , success     : function(data) {
	          					if(data.result=="Y"){
	          						alert("변경되었습니다.");
	          						location.href="<%=cp%>/admin/get_add_info_list.do";
	          					}
	          }
			});
	}
	
</script>


<body>
 
<div>
	<jsp:include page="../header.jsp"/>
</div>
<button type="button" class="btn btn-primary" style="float: right; margin-right: 10%;" onclick="update_add_info();">변경</button>
<div class="container">
  <h2>추가정보</h2>
 	<div class="form-group">
      <label for="tel">전화번호:</label>
      <input type="text" class="form-control" id="tel" value="${list[0].tel}">
    </div>
    <div class="form-group">
      <label for="sms">문자:</label>
      <input type="text" class="form-control" id="sms" value="${list[0].sms}">
    </div>
    <div class="form-group">
      <label for="fax">팩스:</label>
      <input type="text" class="form-control" id="fax" value="${list[0].fax}">
    </div>
     <div class="form-group">
      <label for="fax">사업자번호:</label>
      <input type="text" class="form-control" id="biz_no" value="${list[0].biz_no}">
    </div>
</div>
</body>
</html>

