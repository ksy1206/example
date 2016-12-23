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


<script type="text/javascript">

	$(document).ready(function(){
		$('#notice_li').attr("class","active");
	});//end document
	
	//저장전 유효성검사 및 파일업로드
	function chk_save(){
		
		var title = $('#title').val();
		var content = $('#content').val();
		var file_01 = $('#file_01').val();
		var file_02 = $('#file_02').val();
		var file_03 = $('#file_03').val();
		
		$("#file_01_fake").val(file_01);
		$("#file_02_fake").val(file_02);
		$("#file_03_fake").val(file_03);
		
		if(title == '' || title == 'null' || title == null){
			alert("제목을 입력하세요!");
			return false;
		}
		
		if(file_01 != '' ){
			
			save_file("01");
			return false;
		}else if(file_02 != ''){
			
			save_file("02");
			return false;
		}else if(file_03 != ''){
			
			save_file("03");
			return false;
		}else{
			save_notice();	
		}
		
		
	
	}
	

	
	function save_file(frm_no){
		
		var file_01 = $("#file_01_fake").val();
		var file_02 = $("#file_02_fake").val();
		var file_03 = $("#file_03_fake").val();
		
		var formData = new FormData();
		
		formData.append("fileGbn", $("input[name=fileGbn_"+frm_no+"]").val());
		formData.append("file", $("input[name=file_"+frm_no+"]")[0].files[0]);

		 $.ajax({
             url: "/comm/saveFileUpload.do"
             ,processData: false
             ,contentType: false
             ,data: formData
             ,type: 'POST'
             ,success: function(data){
            	
            	 if(file_01 != ""){
            		 $("#file_01_fake").val("");
            		 $("#fileUploadPath_01").val(data.fileUploadPath);
					 $("#fileNewName_01").val(data.fileName);
					 $("#destination_01").val(data.destination);
					 
					 if(file_02 != ""){
						 frm_no = "02";	 
						 save_file(frm_no);
						 return false;
					 }else if(file_03 != ""){
						 frm_no = "03";
						 save_file(frm_no);
						 return false;
					 }

					 
            	 }
            	 
            	 if(file_02 != ""){
            		 $("#file_02_fake").val("");
            		 $("#fileUploadPath_02").val(data.fileUploadPath);
					 $("#fileNewName_02").val(data.fileName);
					 $("#destination_02").val(data.destination);
            	 
					 if(file_03 != ""){
						 frm_no = "03";	 
						 save_file(frm_no);
						 return false;
					 }
					 
					 
            	 }
            	 
            	 if(file_03 != ""){
            		 $("#file_03_fake").val("");
            		 $("#fileUploadPath_03").val(data.fileUploadPath);
					 $("#fileNewName_03").val(data.fileName);
					 $("#destination_03").val(data.destination);
            	 }
            	 
            	 saveCompanyFile();
             }
         });
	}
	

	
    function saveCompanyFile(){
        
		var file_cnt = 0;
		var file_stat = "";
		
		var file_01 = $("#file_01").val();
		var file_02 = $("#file_02").val();
		var file_03 = $("#file_03").val();
		
		
		var fileName_01 = $("#fileNewName_01").val();
		var fileName_02 = $("#fileNewName_02").val();
		var fileName_03 = $("#fileNewName_03").val();
		
		var params = "file_title=NOTICE";
	
      
			if(file_01 != null && file_01 != "" && file_01 != undefined){
				file_cnt += 1;
				file_stat = ",01";
				
				params += "&fileNewName_01=" + jQuery("#fileNewName_01").val() + "&fileUploadPath_01=" + jQuery("#fileUploadPath_01").val() +
				"&destination_01=" + jQuery("#destination_01").val(); 
			}
			if(file_02 != null && file_02 != "" && file_02 != undefined){
				file_cnt += 1;
				file_stat +=",02";
	
				params += "&fileNewName_02=" + jQuery("#fileNewName_02").val() + "&fileUploadPath_02=" + jQuery("#fileUploadPath_02").val() +
				"&destination_02=" + jQuery("#destination_02").val(); 
			}
			if(file_03 != null && file_03 != "" && file_03 != undefined){
				file_cnt += 1;
				file_stat +=",03";
				params += "&fileNewName_03=" + jQuery("#fileNewName_03").val() + "&fileUploadPath_03=" + jQuery("#fileUploadPath_03").val() +
				"&destination_03=" + jQuery("#destination_03").val(); 
			}
			


		file_stat  = file_stat.substring(1, file_stat.length);
		params += "&file_cnt="+file_cnt+"&file_stat="+file_stat;
	
		$.ajax({
	            type        : "POST"  
	          , async       : true 
	          , url         : "/comm/saveCompanyFile.do"
	          , data        : params
	          , dataType    : "json" 
	          , timeout     : 30000   
	          , cache       : false     
	          //, contentType : "application/x-www-form-urlencoded;charset=UTF-8"
	          , error       : function(request, status, error) {
	      	  				alert("작업 도중 오류가 발생하였습니다. 자세한 사항은 고객센터에 문의하십시오.");
				
	          }
	          , success     : function(data) {
	        	  
	       

	            	  if(file_01 != null && file_01 != "" && file_01 != undefined){
		        		  $("#fileUploadPath_01").val(data.fileUploadPath_01);
						  $("#fileNewName_01").val(data.fileNewName_01);
			      		}
			      		if(file_02 != null && file_02 != "" && file_02 != undefined){
			      			 $("#fileUploadPath_02").val(data.fileUploadPath_02);
							 $("#fileNewName_02").val(data.fileNewName_02);
			      		}
			      		if(file_03 != null && file_03 != "" && file_03 != undefined){
			      			$("#fileUploadPath_03").val(data.fileUploadPath_03);
							 $("#fileNewName_03").val(data.fileNewName_03);
			      		}
			      		

			      		save_notice();
 
	          }
    	});
                                 
 	}

    
    
	function save_notice(){
		
		
		var title = $('#title').val();
		var content = $('#content').val();
		
		var file_01_name = $('#fileNewName_01').val();
		var file_01_path = $('#fileUploadPath_01').val();
		var file_02_name = $('#fileNewName_02').val();
		var file_02_path = $('#fileUploadPath_02').val();
		var file_03_name = $('#fileNewName_03').val();
		var file_03_path = $('#fileUploadPath_03').val();
		
		var params = "title="+title+"&content="+content+"&file_01_name="+file_01_name+"&file_02_name="+file_02_name+"&file_03_name="+file_03_name+"&file_01_path="+file_01_path+"&file_02_path="+file_02_path+"&file_03_path="+file_03_path;
		
        $.ajax({
            type        : "POST" 
          , async       : true
          , url         : "/admin/save_notice.do"
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
          						alert("공지가 등록되었습니다.");
          						location.href="<%=cp%>/admin/get_notice_list.do";
          					}
          }
		});
		
	}
	
	
</script>
</head>

<body>
<div>
	<jsp:include page="../header.jsp"/>
</div>
<div class="container">
  <h2>공지사항등록</h2>
  <form>
    <div class="form-group">
      <label for="title">제목:</label>
      <input type="text" class="form-control" id="title" placeholder="제목">
    </div>
    <div class="form-group">
       <label for="content">내용:</label>
 	   <textarea class="form-control" rows="5" id="content"></textarea>
    </div>
  </form>
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
  <div style="text-align: center;">
  	<button type="button" class="btn btn-primary"  onclick="chk_save();">등록</button>
  </div>
  
</div>
	


</body>
</html>