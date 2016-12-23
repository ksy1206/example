<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
	String cp  = request.getContextPath();

%>
<!DOCTYPE html>
<html>
<head>

<title>어차여행 관리자</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD60rwjxUjBDRiDUUfwQvNhjiP8d8hXVD8"></script>
<script type="text/javascript" src="../js/addr.js"></script>
<script type="text/javascript" src="../js/food.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<script type="text/javascript">
	$('#food_li').attr("class","active");

</script>
</head>

<body>
<div>
	<jsp:include page="../header.jsp"/>
</div>
<div class="container">
  <h2>음식정보 등록</h2>
    <div class="form-group">
     <h2>상단 입력란</h2>
      <label for="title">제목:</label>
      <input type="hidden" id="travel_no" value="${rMap.travel_no}"/>
      <input type="hidden" id="food_no" value="${rMap.food_no}"/>
       <input type="hidden" id="fd_nm" value="${rMap.fd_nm}"/>
       <input type="hidden" id="update_yn" value="${list[0].update_yn}"/>
      <input type="text" class="form-control" id="title" placeholder="제목" value="${list[0].title}">
    </div>
     <h2>리스트 메인이미지 입력(1장)</h2>
 	 <form id="file_upload_21" name="file_upload_12" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
  		<input type="hidden" id="fileGbn_12" name="fileGbn_12" value="file_12" />
		<input type="hidden" id="fileUploadPath_12" name="fileUploadPath_12" value="" />
		<input type="hidden" id="fileNewName_12" name="fileNewName_12" value="" />
		<input type="hidden" id="destination_12" name="destination_12" value="" />
		<input type="hidden" id="file_12_fake" name="file_12_fake" value="" />
		<div class="form-group">
		 	<label for="file_12">메인 이미지:</label>
			 <input type="file" name="file_12" value="" id="file_12"  class="form-control" />
		 </div>
  </form>
     <h2>상단 이미지 입력(10장)</h2>
 	 <form id="file_upload_01" name="file_upload_01" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
  		<input type="hidden" id="fileGbn_01" name="fileGbn_01" value="file_01" />
		<input type="hidden" id="fileUploadPath_01" name="fileUploadPath_01" value="" />
		<input type="hidden" id="fileNewName_01" name="fileNewName_01" value="" />
		<input type="hidden" id="destination_01" name="destination_01" value="" />
		<input type="hidden" id="file_01_fake" name="file_01_fake" value="" />
		<div class="form-group">
		 	<label for="file_01">이미지1:</label>
			 <input type="file" name="file_01" value="" id="file_01"  class="form-control" />
		 </div>
  </form>
  <form id="file_upload_02" name="file_upload_02" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
 		 <input type="hidden" id="fileGbn_02" name="fileGbn_02" value="file_02" />
		<input type="hidden" id="fileUploadPath_02" name="fileUploadPath_02" value="" />
		<input type="hidden" id="fileNewName_02" name="fileNewName_02" value="" />
		<input type="hidden" id="destination_02" name="destination_02" value="" />
		<input type="hidden" id="file_02_fake" name="file_02_fake" value="" />
		<div class="form-group">
		 	<label for="file_02">이미지2:</label>
			<input type="file" name="file_02" value="" id="file_02"  class="form-control" />
		 </div>
  </form>
  <form id="file_upload_03" name="file_upload_03" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
 		 <input type="hidden" id="fileGbn_03" name="fileGbn_03" value="file_03" />
		<input type="hidden" id="fileUploadPath_03" name="fileUploadPath_03" value="" />
		<input type="hidden" id="fileNewName_03" name="fileNewName_03" value="" />
		<input type="hidden" id="destination_03" name="destination_03" value="" />
		<input type="hidden" id="file_03_fake" name="file_03_fake" value="" />
		<div class="form-group">
			 <label for="file_03">이미지3:</label>
			<input type="file" name="file_03" value="" id="file_03"  class="form-control" />
		 </div>
  </form>
   <form id="file_upload_04" name="file_upload_04" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
  		<input type="hidden" id="fileGbn_04" name="fileGbn_04" value="file_04" />
		<input type="hidden" id="fileUploadPath_04" name="fileUploadPath_04" value="" />
		<input type="hidden" id="fileNewName_04" name="fileNewName_04" value="" />
		<input type="hidden" id="destination_04" name="destination_04" value="" />
		<input type="hidden" id="file_04_fake" name="file_04_fake" value="" />
		<div class="form-group">
		 	<label for="file_04">이미지4:</label>
			 <input type="file" name="file_04" value="" id="file_04"  class="form-control" />
		 </div>
  </form>
  <form id="file_upload_05" name="file_upload_05" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
 		 <input type="hidden" id="fileGbn_05" name="fileGbn_05" value="file_05" />
		<input type="hidden" id="fileUploadPath_05" name="fileUploadPath_05" value="" />
		<input type="hidden" id="fileNewName_05" name="fileNewName_05" value="" />
		<input type="hidden" id="destination_05" name="destination_05" value="" />
		<input type="hidden" id="file_05_fake" name="file_05_fake" value="" />
		<div class="form-group">
		 	<label for="file_05">이미지5:</label>
			<input type="file" name="file_05" value="" id="file_05"  class="form-control" />
		 </div>
  </form>
  <button type="button" class="btn btn-primary" id="add_img_btn_1"  onclick="open_add_img(1);"><i class="fa fa-plus-square-o"></i>&nbsp; 이미지추가 열기</button>
  <button type="button" class="btn btn-primary" id="add_img_btn_0"  style="display: none;" onclick="open_add_img(0);"><i class="fa fa-minus-square-o"></i>&nbsp; 이미지추가 닫기</button>
 <div id="add_img_div" style="display: none;">
	  <form id="file_upload_06" name="file_upload_06" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_06" name="fileGbn_06" value="file_06" />
			<input type="hidden" id="fileUploadPath_06" name="fileUploadPath_06" value="" />
			<input type="hidden" id="fileNewName_06" name="fileNewName_06" value="" />
			<input type="hidden" id="destination_06" name="destination_06" value="" />
			<input type="hidden" id="file_06_fake" name="file_06_fake" value="" />
			<div class="form-group">
				 <label for="file_06">이미지6:</label>
				<input type="file" name="file_06" value="" id="file_06"  class="form-control" />
			 </div>
	  </form>
	   <form id="file_upload_07" name="file_upload_07" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	  		<input type="hidden" id="fileGbn_07" name="fileGbn_07" value="file_07" />
			<input type="hidden" id="fileUploadPath_07" name="fileUploadPath_07" value="" />
			<input type="hidden" id="fileNewName_07" name="fileNewName_07" value="" />
			<input type="hidden" id="destination_07" name="destination_07" value="" />
			<input type="hidden" id="file_07_fake" name="file_07_fake" value="" />
			<div class="form-group">
			 	<label for="file_07">이미지7:</label>
				 <input type="file" name="file_07" value="" id="file_07"  class="form-control" />
			 </div>
	  </form>
	  <form id="file_upload_08" name="file_upload_08" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_08" name="fileGbn_08" value="file_08" />
			<input type="hidden" id="fileUploadPath_08" name="fileUploadPath_08" value="" />
			<input type="hidden" id="fileNewName_08" name="fileNewName_08" value="" />
			<input type="hidden" id="destination_08" name="destination_08" value="" />
			<input type="hidden" id="file_08_fake" name="file_08_fake" value="" />
			<div class="form-group">
			 	<label for="file_08">이미지8:</label>
				<input type="file" name="file_08" value="" id="file_08"  class="form-control" />
			 </div>
	  </form>
	  <form id="file_upload_09" name="file_upload_09" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_09" name="fileGbn_09" value="file_09" />
			<input type="hidden" id="fileUploadPath_09" name="fileUploadPath_09" value="" />
			<input type="hidden" id="fileNewName_09" name="fileNewName_09" value="" />
			<input type="hidden" id="destination_09" name="destination_09" value="" />
			<input type="hidden" id="file_09_fake" name="file_09_fake" value="" />
			<div class="form-group">
				 <label for="file_09">이미지9:</label>
				<input type="file" name="file_09" value="" id="file_09"  class="form-control" />
			 </div>
	  </form>
	   <form id="file_upload_10" name="file_upload_10" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	  		<input type="hidden" id="fileGbn_10" name="fileGbn_10" value="file_10" />
			<input type="hidden" id="fileUploadPath_10" name="fileUploadPath_10" value="" />
			<input type="hidden" id="fileNewName_10" name="fileNewName_10" value="" />
			<input type="hidden" id="destination_10" name="destination_10" value="" />
			<input type="hidden" id="file_10_fake" name="file_10_fake" value="" />
			<div class="form-group">
			 	<label for="file_10">이미지10:</label>
				 <input type="file" name="file_10" value="" id="file_10"  class="form-control" />
			 </div>
	  </form>
	 
  </div>
   <h2>간판이미지(1장)</h2>
   	 <form id="file_upload_11" name="file_upload_11" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_11" name="fileGbn_11" value="file_11" />
			<input type="hidden" id="fileUploadPath_11" name="fileUploadPath_11" value="" />
			<input type="hidden" id="fileNewName_11" name="fileNewName_11" value="" />
			<input type="hidden" id="destination_11" name="destination_11" value="" />
			<input type="hidden" id="file_11_fake" name="file_11_fake" value="" />
			<div class="form-group">
			 	<label for="file_11">간판 이미지:</label>
				<input type="file" name="file_11" value="" id="file_11"  class="form-control" />
			 </div>
	  </form>
   <h2>설명</h2>
    <div class="form-group">
       <label for="sub_title">설명:</label>
       	<textarea class="form-control" rows="5" id="content_1">${list[0].content_1}</textarea>
     </div>
	 <h2>이용시간</h2>
	     <div class="form-group">
	       <label for="use_time_1">이용시간 입력란1:</label>
	 	  <input type="text" class="form-control" id="use_time_1" placeholder="이용시간1" value="${list[0].use_time_1}" >
	    </div>
	     <div class="form-group">
	       <label for="use_time_2">이용시간 입력란2:</label>
	 	  <input type="text" class="form-control" id="use_time_2" placeholder="이용시간2" value="${list[0].use_time_2}" >
	    </div>
	     <div class="form-group">
	       <label for="use_time_3">이용시간 입력란3:</label>
	 	  <input type="text" class="form-control" id="use_time_3" placeholder="이용시간3" value="${list[0].use_time_3}" >
	    </div>

 <h2>주요메뉴</h2>
  <table class="table table-bordered">
    <tbody>
      <tr>
        <td><input type="text" id="menu_nm_1" value="${list[0].menu_nm_1}" ></td>
        <td><input type="text" id="menu_nm_2" value="${list[0].menu_nm_2}"></td>
        <td><input type="text" id="menu_nm_3" value="${list[0].menu_nm_3}"></td>
         <td><input type="text" id="menu_nm_4" value="${list[0].menu_nm_4}"></td>
      </tr>
      <tr>
        <td><input type="text" id="menu_nm_5" value="${list[0].menu_nm_5}" ></td>
        <td><input type="text" id="menu_nm_6" value="${list[0].menu_nm_6}" ></td>
        <td><input type="text" id="menu_nm_7" value="${list[0].menu_nm_7}"></td>
        <td><input type="text" id="menu_nm_8" value="${list[0].menu_nm_8}"></td>
      </tr>
       <tr>
        <td><input type="text" id="menu_nm_9" value="${list[0].menu_nm_9}"></td>
        <td><input type="text" id="menu_nm_10" value="${list[0].menu_nm_10}"></td>
        <td><input type="text" id="menu_nm_11" value="${list[0].menu_nm_11}"></td>
         <td><input type="text" id="menu_nm_12" value="${list[0].menu_nm_12}"></td>
      </tr>
       <tr>
        <td><input type="text" id="menu_nm_13" value="${list[0].menu_nm_13}"></td>
        <td><input type="text" id="menu_nm_14" value="${list[0].menu_nm_14}"></td>
        <td><input type="text" id="menu_nm_15" value="${list[0].menu_nm_15}"></td>
        <td><input type="text" id="menu_nm_16" value="${list[0].menu_nm_16}"></td>
        
      </tr>
       <tr>
        <td><input type="text" id="menu_nm_17" value="${list[0].menu_nm_17}"></td>
        <td><input type="text" id="menu_nm_18" value="${list[0].menu_nm_18}"></td>
        <td><input type="text" id="menu_nm_19" value="${list[0].menu_nm_19}"></td>
        <td><input type="text" id="menu_nm_20"value="${list[0].menu_nm_20}" ></td>
      </tr>
    </tbody>
  </table>

<!--주소 -->
	
<jsp:include page="../include/address.jsp"/>


  <div style="text-align: center;">
  	<button type="button" class="btn btn-primary btn-lg"  onclick="chk_save();">등록</button>
	<c:if test="${list[0].update_yn == 'Y'}">		
		<button type="button" class="btn btn-danger btn-lg"  onclick="delete_food();">삭제</button>
	</c:if>
  
  </div>
  
</div>
	


</body>
</html>