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

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


</head>


<script type="text/javascript">

	$(document).ready(function(){
		$('#travel_li').attr("class","active");
	});//end document
	
	
	function delete_travel(travel_no){
		var params = "travel_no="+travel_no;
		 $.ajax({
	            type        : "POST" 
	          , async       : true
	          , url         : "/admin/delete_travel.do"
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
	    						alert("삭제되었습니다.");
	    						location.href="<%=cp%>/admin/get_travel_list.do";
	    					}
	          }
			});
	}
	
</script>


<body>
 
<div>
	<jsp:include page="../header.jsp"/>
</div>
<button type="button" class="btn btn-primary" style="float: right; margin-right: 10%;" onclick="location.href='/admin/write_travel.do';">등록</button>
<div class="container">
  <h2>여행지정보</h2>
 <div class="list-group">
   <c:forEach var="data" items="${list}">
   	<a class="list-group-item">
   		${data.title} 
   		<span class="label label-danger" style="float: right;" onclick="delete_travel(${data.travel_no});">삭제</span>
   		<span class="label label-success" style="float: right; margin-right: 5px;" onclick="location.href='/admin/get_update_travel.do?travel_no=${data.travel_no}';">수정</span>
   	</a>
   </c:forEach> 
    
  </div>
</div>
</body>
</html>

