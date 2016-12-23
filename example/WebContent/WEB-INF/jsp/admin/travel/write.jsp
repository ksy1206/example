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
<script type="text/javascript" src="../js/travel.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<script type="text/javascript">
	$('#travel_li').attr("class","active");

</script>
</head>

<body>
<div>
	<jsp:include page="../header.jsp"/>
</div>
<div class="container">
  <h2>여행지정보 등록</h2>
    <div class="form-group">
     <h2>상단 입력란</h2>
      <label for="title">제목:</label>
      <input type="text" class="form-control" id="title" placeholder="제목">
    </div>
     <h2>리스트 메인이미지 입력(1장)</h2>
 	 <form id="file_upload_21" name="file_upload_21" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
  		<input type="hidden" id="fileGbn_21" name="fileGbn_21" value="file_21" />
		<input type="hidden" id="fileUploadPath_21" name="fileUploadPath_21" value="" />
		<input type="hidden" id="fileNewName_21" name="fileNewName_21" value="" />
		<input type="hidden" id="destination_21" name="destination_21" value="" />
		<input type="hidden" id="file_21_fake" name="file_21_fake" value="" />
		<div class="form-group">
		 	<label for="file_21">메인 이미지:</label>
			 <input type="file" name="file_21" value="" id="file_21"  class="form-control" />
		 </div>
  </form>
     <h2>상단 이미지 입력(20장)</h2>
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
	  <form id="file_upload_11" name="file_upload_11" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_11" name="fileGbn_11" value="file_11" />
			<input type="hidden" id="fileUploadPath_11" name="fileUploadPath_11" value="" />
			<input type="hidden" id="fileNewName_11" name="fileNewName_11" value="" />
			<input type="hidden" id="destination_11" name="destination_11" value="" />
			<input type="hidden" id="file_11_fake" name="file_11_fake" value="" />
			<div class="form-group">
			 	<label for="file_11">이미지11:</label>
				<input type="file" name="file_11" value="" id="file_11"  class="form-control" />
			 </div>
	  </form>
	  <form id="file_upload_12" name="file_upload_12" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_12" name="fileGbn_12" value="file_12" />
			<input type="hidden" id="fileUploadPath_12" name="fileUploadPath_12" value="" />
			<input type="hidden" id="fileNewName_12" name="fileNewName_12" value="" />
			<input type="hidden" id="destination_12" name="destination_12" value="" />
			<input type="hidden" id="file_12_fake" name="file_12_fake" value="" />
			<div class="form-group">
				 <label for="file_12">이미지12:</label>
				<input type="file" name="file_12" value="" id="file_12"  class="form-control" />
			 </div>
	  </form>
	   <form id="file_upload_13" name="file_upload_13" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	  		<input type="hidden" id="fileGbn_13" name="fileGbn_13" value="file_13" />
			<input type="hidden" id="fileUploadPath_13" name="fileUploadPath_13" value="" />
			<input type="hidden" id="fileNewName_13" name="fileNewName_13" value="" />
			<input type="hidden" id="destination_13" name="destination_13" value="" />
			<input type="hidden" id="file_13_fake" name="file_13_fake" value="" />
			<div class="form-group">
			 	<label for="file_13">이미지13:</label>
				 <input type="file" name="file_13" value="" id="file_13"  class="form-control" />
			 </div>
	  </form>
	  <form id="file_upload_14" name="file_upload_14" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_14" name="fileGbn_14" value="file_14" />
			<input type="hidden" id="fileUploadPath_14" name="fileUploadPath_14" value="" />
			<input type="hidden" id="fileNewName_14" name="fileNewName_14" value="" />
			<input type="hidden" id="destination_14" name="destination_14" value="" />
			<input type="hidden" id="file_14_fake" name="file_14_fake" value="" />
			<div class="form-group">
			 	<label for="file_14">이미지14:</label>
				<input type="file" name="file_14" value="" id="file_14"  class="form-control" />
			 </div>
	  </form>
	  <form id="file_upload_15" name="file_upload_15" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_15" name="fileGbn_15" value="file_15" />
			<input type="hidden" id="fileUploadPath_15" name="fileUploadPath_15" value="" />
			<input type="hidden" id="fileNewName_15" name="fileNewName_15" value="" />
			<input type="hidden" id="destination_15" name="destination_15" value="" />
			<input type="hidden" id="file_15_fake" name="file_15_fake" value="" />
			<div class="form-group">
				 <label for="file_15">이미지15:</label>
				<input type="file" name="file_15" value="" id="file_15"  class="form-control" />
			 </div>
	  </form>
	   <form id="file_upload_16" name="file_upload_16" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	  		<input type="hidden" id="fileGbn_16" name="fileGbn_16" value="file_16" />
			<input type="hidden" id="fileUploadPath_16" name="fileUploadPath_16" value="" />
			<input type="hidden" id="fileNewName_16" name="fileNewName_16" value="" />
			<input type="hidden" id="destination_16" name="destination_16" value="" />
			<input type="hidden" id="file_16_fake" name="file_16_fake" value="" />
			<div class="form-group">
			 	<label for="file_16">이미지16:</label>
				 <input type="file" name="file_16" value="" id="file_16"  class="form-control" />
			 </div>
	  </form>
	  <form id="file_upload_17" name="file_upload_17" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_17" name="fileGbn_17" value="file_17" />
			<input type="hidden" id="fileUploadPath_17" name="fileUploadPath_17" value="" />
			<input type="hidden" id="fileNewName_17" name="fileNewName_17" value="" />
			<input type="hidden" id="destination_17" name="destination_17" value="" />
			<input type="hidden" id="file_17_fake" name="file_17_fake" value="" />
			<div class="form-group">
			 	<label for="file_17">이미지17:</label>
				<input type="file" name="file_17" value="" id="file_17"  class="form-control" />
			 </div>
	  </form>
	    <form id="file_upload_18" name="file_upload_18" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	  		<input type="hidden" id="fileGbn_18" name="fileGbn_18" value="file_18" />
			<input type="hidden" id="fileUploadPath_18" name="fileUploadPath_18" value="" />
			<input type="hidden" id="fileNewName_18" name="fileNewName_18" value="" />
			<input type="hidden" id="destination_18" name="destination_18" value="" />
			<input type="hidden" id="file_18_fake" name="file_18_fake" value="" />
			<div class="form-group">
			 	<label for="file_18">이미지18:</label>
				 <input type="file" name="file_18" value="" id="file_18"  class="form-control" />
			 </div>
	  </form>
	  <form id="file_upload_19" name="file_upload_19" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_19" name="fileGbn_19" value="file_19" />
			<input type="hidden" id="fileUploadPath_19" name="fileUploadPath_19" value="" />
			<input type="hidden" id="fileNewName_19" name="fileNewName_19" value="" />
			<input type="hidden" id="destination_19" name="destination_19" value="" />
			<input type="hidden" id="file_19_fake" name="file_19_fake" value="" />
			<div class="form-group">
				 <label for="file_19">이미지19:</label>
				<input type="file" name="file_19" value="" id="file_19"  class="form-control" />
			 </div>
	  </form>
	 
	  <form id="file_upload_20" name="file_upload_20" method="post"  enctype="multipart/form-data" action="<%=cp%>/comm/saveFileUpload.do">
	 		 <input type="hidden" id="fileGbn_20" name="fileGbn_20" value="file_20" />
			<input type="hidden" id="fileUploadPath_20" name="fileUploadPath_20" value="" />
			<input type="hidden" id="fileNewName_20" name="fileNewName_20" value="" />
			<input type="hidden" id="destination_20" name="destination_20" value="" />
			<input type="hidden" id="file_20_fake" name="file_20_fake" value="" />
			<div class="form-group">
			 	<label for="file_20">이미지20:</label>
				<input type="file" name="file_20" value="" id="file_20"  class="form-control" />
			 </div>
	  </form>   
  </div>
   <h2>상단이미지 아래 입력란</h2>
    <div class="form-group">
       <label for="sub_title">부제목:</label>
 	  <input type="text" class="form-control" id="sub_title" placeholder="부제목">
    </div>
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

    
    <h2>추가정보</h2>
    <div class="form-group">
       <label for="add_info_1">추가정보 입력란1:</label>
 	  <input type="text" class="form-control" id="add_info_1" placeholder="추가정보 1">
    </div>
     <div class="form-group">
       <label for="add_info_2">추가정보 입력란2:</label>
 	  <input type="text" class="form-control" id="add_info_2" placeholder="추가정보 2">
    </div>
     <div class="form-group">
       <label for="add_info_3">추가정보 입력란3:</label>
 	  <input type="text" class="form-control" id="add_info_3" placeholder="추가정보 3">
    </div>
     <div class="form-group">
       <label for="add_info_4">추가정보 입력란4:</label>
 	  <input type="text" class="form-control" id="add_info_4" placeholder="추가정보 4">
    </div>
     <div class="form-group">
       <label for="add_info_5">추가정보 입력란5:</label>
 	  <input type="text" class="form-control" id="add_info_5" placeholder="추가정보 5">
    </div>
     <div class="form-group">
       <label for="add_info_6">추가정보 입력란6:</label>
 	  <input type="text" class="form-control" id="add_info_6" placeholder="추가정보 6">
    </div>
     <div class="form-group">
       <label for="add_info_7">추가정보 입력란7:</label>
 	  <input type="text" class="form-control" id="add_info_7" placeholder="추가정보 7">
    </div>
    
    
 
     
<!--     시설 -->
	<h2>시설</h2>
	<div align="center" style="z-index: 2;">
		<div class="row">
		  <div class="col-sm-3" id="fac_1_yn_div"><input type="hidden" id="fac_1_yn" value="Y"><img src="../img/travel/fac_1_y.png" width="30%"></div>
		  <div class="col-sm-3" id="fac_2_yn_div"><input type="hidden" id="fac_2_yn" value="Y"><img src="../img/travel/fac_2_y.png" width="30%"></div>
		  <div class="col-sm-3" id="fac_3_yn_div"><input type="hidden" id="fac_3_yn" value="Y"><img src="../img/travel/fac_3_y.png" width="30%"></div>
		  <div class="col-sm-3" id="fac_4_yn_div"><input type="hidden" id="fac_4_yn" value="Y"><img src="../img/travel/fac_4_y.png" width="30%"></div>
		</div>
		<br><br><br>
		<div class="row">
		  <div class="col-sm-3" id="fac_5_yn_div"><input type="hidden" id="fac_5_yn" value="Y"><img src="../img/travel/fac_5_y.png" width="30%"></div>
		  <div class="col-sm-3" id="fac_6_yn_div"><input type="hidden" id="fac_6_yn" value="Y"><img src="../img/travel/fac_6_y.png" width="30%"></div>
		  <div class="col-sm-3" id="fac_7_yn_div"><input type="hidden" id="fac_7_yn" value="Y"><img src="../img/travel/fac_7_y.png" width="30%"></div>
		  <div class="col-sm-3" id="fac_8_yn_div"><input type="hidden" id="fac_8_yn" value="Y"><img src="../img/travel/fac_8_y.png" width="30%"></div>
		</div>
	</div>	






    
<!--주소 -->
	
<jsp:include page="../include/address.jsp"/>


	<h2>해쉬태그</h2>
	  <div class="form-group">
       <label for="add_info_7">해쉬태그입력:</label>
 	  <input type="text" class="form-control" id="hashtag" placeholder="ex)가,나,다">
     </div>
	<h2>먹거리 활성화</h2>
	<div class="radio">
	  <label><input type="radio" name="fd_yn" id="fd_yn" value="Y" >활성화</label>
	  <label><input type="radio" name="fd_yn" id="fd_yn" value="N" checked="checked">비활성화</label>
	</div>
		
	<div id="fd_div" style="display: none;">	
 	 <div class="form-group">
      <label for="fd_nm_1">음식 이름1:</label>
 	  <input type="hidden" id="fd_no_1" value="1">
 	  <input type="text" class="form-control" id="fd_nm_1" placeholder="음식1">
    </div>
    <div class="form-group">
      <label for="fd_nm_2">음식 이름2:</label>
 	  <input type="hidden" id="fd_no_2" value="2">
 	  <input type="text" class="form-control" id="fd_nm_2" placeholder="음식2">
    </div>
    <div class="form-group">
      <label for="fd_nm_3">음식 이름3:</label>
 	  <input type="hidden" id="fd_no_3" value="3">
 	  <input type="text" class="form-control" id="fd_nm_3" placeholder="음식3">
    </div>
    <div class="form-group">
      <label for="fd_nm_4">음식 이름4:</label>
 	  <input type="hidden" id="fd_no_4" value="4">
 	  <input type="text" class="form-control" id="fd_nm_4" placeholder="음식4">
    </div>
    <div class="form-group">
      <label for="fd_nm_5">음식 이름5:</label>
 	  <input type="hidden" id="fd_no_5" value="5">
 	  <input type="text" class="form-control" id="fd_nm_5" placeholder="음식5">
    </div>
    <div class="form-group">
      <label for="fd_nm_6">음식 이름6:</label>
 	  <input type="hidden" id="fd_no_6" value="6">
 	  <input type="text" class="form-control" id="fd_nm_6" placeholder="음식6">
    </div>
    <div class="form-group">
      <label for="fd_nm_7">음식 이름7:</label>
 	  <input type="hidden" id="fd_no_7" value="7">
 	  <input type="text" class="form-control" id="fd_nm_7" placeholder="음식7">
    </div>
    <div class="form-group">
      <label for="fd_nm_8">음식 이름8:</label>
 	  <input type="hidden" id="fd_no_8" value="8">
 	  <input type="text" class="form-control" id="fd_nm_8" placeholder="음식8">
    </div>
    <div class="form-group">
      <label for="fd_nm_9">음식 이름9:</label>
 	  <input type="hidden" id="fd_no_9" value="9">
 	  <input type="text" class="form-control" id="fd_nm_9" placeholder="음식9">
    </div>
    <div class="form-group">
      <label for="fd_nm_10">음식 이름10:</label>
 	  <input type="hidden" id="fd_no_10" value="10">
 	  <input type="text" class="form-control" id="fd_nm_10" placeholder="음식10">
    </div>
    </div>
    
  <div style="text-align: center;">
  	<button type="button" class="btn btn-primary btn-lg"  onclick="chk_save();">등록</button>
  </div>
  
</div>
	


</body>
</html>