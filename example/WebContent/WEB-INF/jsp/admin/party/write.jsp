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
<script type="text/javascript" src="../js/party.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<script type="text/javascript">
	$('#party_li').attr("class","active");

</script>
</head>

<body>
<div>
	<jsp:include page="../header.jsp"/>
</div>
<div class="container">
  <h2>축제정보 등록</h2>
    <div class="form-group">
     <h2>상단 입력란</h2>
      <label for="title">제목:</label>
      <input type="text" class="form-control" id="title" placeholder="제목">
    </div>
     <h2>리스트 메인이미지 입력(1장)</h2>
 	 <form id="file_upload_09" name="file_upload_09" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
  		<input type="hidden" id="fileGbn_09" name="fileGbn_09" value="file_09" />
		<input type="hidden" id="fileUploadPath_09" name="fileUploadPath_09" value="" />
		<input type="hidden" id="fileNewName_09" name="fileNewName_09" value="" />
		<input type="hidden" id="destination_09" name="destination_09" value="" />
		<input type="hidden" id="file_09_fake" name="file_09_fake" value="" />
		<div class="form-group">
		 	<label for="file_09">메인 이미지:</label>
			 <input type="file" name="file_09" value="" id="file_09"  class="form-control" />
		 </div>
  </form>
     <h2>상단 이미지 입력(1장)</h2>
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
  <h2>가로 이미지 입력(2장)</h2>
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
  <h2>간판 이미지 입력(1장)</h2>
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
 
 
   <h2>이용시간</h2>
     <div class="form-group">
       <label for="use_time_1">이용시간 입력란1:</label>
 	  <input type="text" class="form-control" id="use_time_1" placeholder="이용시간1">
    </div>
     <div class="form-group">
       <label for="use_time_2">이용시간 입력란2:</label>
 	  <input type="text" class="form-control" id="use_time_2" placeholder="이용시간2">
    </div>
     <div class="form-group">
       <label for="use_time_3">이용시간 입력란3:</label>
 	  <input type="text" class="form-control" id="use_time_3" placeholder="이용시간3">
    </div>
 
 <!--     이용료 -->
 <h2>이용료</h2>
  <table class="table table-bordered">
    <tbody>
      <tr>
        <td>    </td>
        <td><input type="text" id="pay_nm_1" ></td>
        <td><input type="text" id="pay_nm_2" ></td>
        <td><input type="text" id="pay_nm_3" ></td>
        <td><input type="text" id="pay_nm_4"></td>
      </tr>
      <tr>
        <td><input type="text" id="pay_kind_1" ></td>
        <td><input type="text" id="pay_1_1" ></td>
        <td><input type="text" id="pay_2_1" ></td>
        <td><input type="text" id="pay_3_1" ></td>
        <td><input type="text" id="pay_4_1"></td>
      </tr>
       <tr>
        <td><input type="text" id="pay_kind_2" ></td>
        <td><input type="text" id="pay_1_2" ></td>
        <td><input type="text" id="pay_2_2" ></td>
        <td><input type="text" id="pay_3_2" ></td>
        <td><input type="text" id="pay_4_2"></td>
      </tr>
       <tr>
        <td><input type="text" id="pay_kind_3" ></td>
        <td><input type="text" id="pay_1_3" ></td>
        <td><input type="text" id="pay_2_3" ></td>
        <td><input type="text" id="pay_3_3" ></td>
        <td><input type="text" id="pay_4_3"></td>
      </tr>
    </tbody>
  </table>
 
 
 
   <h2>정보</h2>
    <div class="form-group">
       <label for="info_1">정보 입력란1:</label>
 	  <input type="text" class="form-control" id="info_1" placeholder="정보 1">
    </div>
     <div class="form-group">
       <label for="info_2">정보 입력란2:</label>
 	  <input type="text" class="form-control" id="info_2" placeholder="정보 2">
    </div>
     <div class="form-group">
       <label for="info_3">정보 입력란3:</label>
 	  <input type="text" class="form-control" id="info_3" placeholder="정보 3">
    </div>
     <div class="form-group">
       <label for="info_4">정보 입력란4:</label>
 	  <input type="text" class="form-control" id="info_4" placeholder="정보 4">
    </div>
     <div class="form-group">
       <label for="info_5">정보 입력란5:</label>
 	  <input type="text" class="form-control" id="info_5" placeholder="정보 5">
    </div>
     <div class="form-group">
       <label for="info_6">정보 입력란6:</label>
 	  <input type="text" class="form-control" id="info_6" placeholder="정보 6">
    </div>
     <div class="form-group">
       <label for="info_7">정보 입력란7:</label>
 	  <input type="text" class="form-control" id="info_7" placeholder="정보 7">
    </div>
    <div class="form-group">
       <label for="info_7">정보 입력란8:</label>
 	  <input type="text" class="form-control" id="info_8" placeholder="정보 8">
    </div>
    
    <div class="form-group">
       <label for="info_9">정보 입력란9:</label>
 	  <input type="text" class="form-control" id="info_9" placeholder="정보 9">
    </div>
    
    <div class="form-group">
       <label for="info_10">정보 입력란10:</label>
 	  <input type="text" class="form-control" id="info_10" placeholder="정보 10">
    </div>
    

 <h2>행사일정 이미지입력(1장)</h2>
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
  
  
      
<!--주소 -->
	
<jsp:include page="../include/address.jsp"/>
  
  
  

 <h2>하단 정사각형 이미지입력(1장)</h2>
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
	  
<h2>하단 가로 이미지입력(2장)</h2> 
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
	
  

<h2>설명입력란</h2>
    <div class="form-group">
       <label for="add_info_1">설명 입력란1:</label>
 	  <input type="text" class="form-control" id="add_info_1" placeholder="설명 1">
    </div>
     <div class="form-group">
       <label for="add_info_2">설명 입력란2:</label>
 	  <input type="text" class="form-control" id="add_info_2" placeholder="설명 2">
    </div>
    
    <h2>해쉬태그</h2>
	  <div class="form-group">
       <label for="add_info_7">해쉬태그입력:</label>
 	  <input type="text" class="form-control" id="hashtag" placeholder="ex)가,나,다">
     </div>
	
    
  <div style="text-align: center;">
  	<button type="button" class="btn btn-primary btn-lg"  onclick="chk_save();">등록</button>
  </div>
  
</div>
	


</body>
</html>