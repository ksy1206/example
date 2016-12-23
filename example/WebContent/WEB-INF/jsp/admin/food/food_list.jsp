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
		$('#food_li').attr("class","active");
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

<div class="container">
  <h2>먹거리정보</h2>
	<div class="list-group">
	   <c:forEach var="data" items="${list}">
	   		
			  <a href="#" class="list-group-item">${data.title} &nbsp;
			  	<c:if test="${data.fd_nm_1 != ''}">		
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_1}&fd_nm=${data.fd_nm_1}';">${data.fd_nm_1}</button>
			  	</c:if>
			  	<c:if test="${data.fd_nm_2 != ''}">	
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_2}&fd_nm=${data.fd_nm_2}';">${data.fd_nm_2}</button>
			  	</c:if>
			  	<c:if test="${data.fd_nm_3 != ''}">	
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_3}&fd_nm=${data.fd_nm_3}';">${data.fd_nm_3}</button>
			  	</c:if>
			  	<c:if test="${data.fd_nm_4 != ''}">	
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_4}&fd_nm=${data.fd_nm_4}';">${data.fd_nm_4}</button>
			  	</c:if>
			  	<c:if test="${data.fd_nm_5 != ''}">	
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_5}&fd_nm=${data.fd_nm_5}';">${data.fd_nm_5}</button>
			  	</c:if>
			  	<c:if test="${data.fd_nm_6 != ''}">	
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_6}&fd_nm=${data.fd_nm_6}';">${data.fd_nm_6}</button>
			  	</c:if>
			  	<c:if test="${data.fd_nm_7 != ''}">	
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_7}&fd_nm=${data.fd_nm_7}';">${data.fd_nm_7}</button>
			  	</c:if>
			  	<c:if test="${data.fd_nm_8 != ''}">	
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_8}&fd_nm=${data.fd_nm_8}';">${data.fd_nm_8}</button>
			  	</c:if>
			  	<c:if test="${data.fd_nm_9 != ''}">
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_9}&fd_nm=${data.fd_nm_9}';">${data.fd_nm_9}</button>
			  	</c:if>
			  	<c:if test="${data.fd_nm_10 != ''}">	
			  		<button type="button" class="btn btn-default" onclick="location.href='/admin/write_food.do?travel_no=${data.travel_no}&food_no=${data.fd_no_10}&fd_nm=${data.fd_nm_10}';">${data.fd_nm_10}</button>
			  	</c:if>
				
	   		</a>
	   </c:forEach> 
	</div>

</div>


</body>
</html>

