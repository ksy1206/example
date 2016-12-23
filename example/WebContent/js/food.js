	$(document).ready(function(){
   		
	});//end document
	
	//저장전 유효성검사 및 파일업로드
	function chk_save(){
		
		var title = $('#title').val();
		
		var file_01 = $('#file_01').val();
		var file_02 = $('#file_02').val();
		var file_03 = $('#file_03').val();
		var file_04 = $('#file_04').val();
		var file_05 = $('#file_05').val();
		var file_06 = $('#file_06').val();
		var file_07 = $('#file_07').val();
		var file_08 = $('#file_08').val();
		var file_09 = $('#file_09').val();
		var file_10 = $('#file_10').val();
		var file_11 = $('#file_11').val();
		var file_12 = $('#file_12').val();
		
		
		$("#file_01_fake").val(file_01);
		$("#file_02_fake").val(file_02);
		$("#file_03_fake").val(file_03);
		$("#file_04_fake").val(file_04);
		$("#file_05_fake").val(file_05);
		$("#file_06_fake").val(file_06);
		$("#file_07_fake").val(file_07);
		$("#file_08_fake").val(file_08);
		$("#file_09_fake").val(file_09);
		$("#file_10_fake").val(file_10);
		$("#file_11_fake").val(file_11);
		$("#file_12_fake").val(file_12);

		var content_1 = $('#content_1').val();
		var addr01 = $('#addr01').val();
		var addr02 = $('#addr02').val();
		var menu_nm_1 = $('#menu_nm_1').val();
		var menu_nm_2 = $('#menu_nm_2').val();
		var menu_nm_3 = $('#menu_nm_3').val();
		var menu_nm_4 = $('#menu_nm_4').val();
		var menu_nm_5 = $('#menu_nm_5').val();
		var menu_nm_6 = $('#menu_nm_6').val();
		var menu_nm_7 = $('#menu_nm_7').val();
		var menu_nm_8 = $('#menu_nm_8').val();
		var menu_nm_9 = $('#menu_nm_9').val();
		var menu_nm_10 = $('#menu_nm_10').val();
		var menu_nm_11 = $('#menu_nm_11').val();
		var menu_nm_12 = $('#menu_nm_12').val();
		var menu_nm_13 = $('#menu_nm_13').val();
		var menu_nm_14 = $('#menu_nm_14').val();
		var menu_nm_15 = $('#menu_nm_15').val();
		var menu_nm_16 = $('#menu_nm_16').val();
		var menu_nm_17 = $('#menu_nm_17').val();
		var menu_nm_18 = $('#menu_nm_18').val();
		var menu_nm_19 = $('#menu_nm_19').val();
		var menu_nm_20 = $('#menu_nm_20').val();
		var use_time_1 = $('#use_time_1').val();
		var use_time_2 = $('#use_time_2').val();
		var use_time_3 = $('#use_time_3').val();
		var travel_no = $('#travel_no').val();
		var food_no = $('#food_no').val();
		var fd_nm = $('#fd_nm').val();


		


		if(title == '' || title == 'null' || title == null){
			alert("제목을 입력하세요!");
			return false;
		}
		if(addr01 == '' || addr01 == 'null' || addr01 == null){
			alert("주소를 입력하세요!");
			return false;
		}else{
			
			var latitude = $('#latitude').val();
			if(latitude=="N"){
				alert("정확한 주소를 입력해주세요!");
				return false;
			}
			
		}

		if(file_01 != '' && file_01 != 'undefined' &&  file_01 != undefined && file_01 != 'null' && file_01 != null){			
			
			save_file("01");
			return false;
		}else if(file_02 != ''&& file_02 != 'undefined' &&  file_02 != undefined && file_02 != 'null' && file_02 != null){
			
			save_file("02");
			return false;
		}else if(file_03 != ''&& file_03 != 'undefined' &&  file_03 != undefined && file_03 != 'null' && file_03 != null){
			
			save_file("03");
			return false;
		}else if(file_04 != '' && file_04 != 'undefined' &&  file_04 != undefined && file_04 != 'null' && file_04 != null){
			
			save_file("04" );
			return false;
		}else if(file_05 != ''&& file_05 != 'undefined' &&  file_05 != undefined && file_05 != 'null' && file_05 != null){
			
			save_file("05");
			return false;
		}else if(file_06 != '' && file_06 != 'undefined' &&  file_06 != undefined && file_06 != 'null' && file_06 != null){
			
			save_file("06" );
			return false;
		}else if(file_07 != '' && file_07 != 'undefined' &&  file_07 != undefined && file_07 != 'null' && file_07 != null){
			
			save_file("07");
			return false;
		}else if(file_08 != '' && file_08 != 'undefined' &&  file_08 != undefined && file_08 != 'null' && file_08 != null){
			
			save_file("08");
			return false;
		}else if(file_09 != '' && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
			
			save_file("09");
			return false;
			
		}else if(file_10 != '' && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null){
			
			save_file("10");
			return false;
		}else if(file_11 != ''&& file_11 != 'undefined' &&  file_11 != undefined && file_11 != 'null' && file_11 != null){
			
			save_file("11");
			return false;
		}else if(file_12 != ''&& file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
			
			save_file("12");
			return false;
		}else{
			save_food();	
		}
		
		
	
	}
	

	//temp 폴더에 이미지 업로드
	function save_file(frm_no){
		
		var file_01 = $("#file_01_fake").val();
		var file_02 = $("#file_02_fake").val();
		var file_03 = $("#file_03_fake").val();
		var file_04 = $("#file_04_fake").val();
		var file_05 = $("#file_05_fake").val();
		var file_06 = $("#file_06_fake").val();
		var file_07 = $("#file_07_fake").val();
		var file_08 = $("#file_08_fake").val();
		var file_09 = $("#file_09_fake").val();
		var file_10 = $("#file_10_fake").val();
		var file_11 = $("#file_11_fake").val();
		var file_12 = $("#file_12_fake").val();
	
		
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
            	
            	 if(file_01 != ""  && file_01 != 'undefined' &&  file_01 != undefined && file_01 != 'null' && file_01 != null){
            		 $("#file_01_fake").val("");
            		 $("#fileUploadPath_01").val(data.fileUploadPath);
					 $("#fileNewName_01").val(data.fileName);
					 $("#destination_01").val(data.destination);
					 
					 if(file_02 != "" && file_02 != 'undefined' &&  file_02 != undefined && file_02 != 'null' && file_02 != null){
						 frm_no = "02";	 
						 save_file(frm_no);
						 return false;
					 }else if(file_03 != "" && file_03 != 'undefined' &&  file_03 != undefined && file_03 != 'null' && file_03 != null){
						 frm_no = "03";	 
						 save_file(frm_no);
						 return false;
					 }else  if(file_04 != "" && file_04 != 'undefined' &&  file_04 != undefined && file_04 != 'null' && file_04 != null){
						 frm_no = "04";
						 save_file(frm_no);
						 return false;
					 }else if(file_05 != "" && file_05 != 'undefined' &&  file_05 != undefined && file_05 != 'null' && file_05 != null){
						 frm_no = "05";
						 save_file(frm_no);
						 return false;
					 }else if(file_06 != "" && file_06 != 'undefined' &&  file_06 != undefined && file_06 != 'null' && file_06 != null){
						 frm_no = "06";
						 save_file(frm_no);
						 return false;
					 }else if(file_07 != "" && file_07 != 'undefined' &&  file_07 != undefined && file_07 != 'null' && file_07 != null){
						 frm_no = "07";
						 save_file(frm_no);
						 return false;
					 }else  if(file_08 != "" && file_08 != 'undefined' &&  file_08 != undefined && file_08 != 'null' && file_08 != null){
						 frm_no = "08";
						 save_file(frm_no);
						 return false;
					 }else if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
						 frm_no = "09";
						 save_file(frm_no);
						 return false;
					 }else  if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
						 frm_no = "10";
						 save_file(frm_no);
						 return false;
					 }else if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }

					 
            	 }
            	 
            	 if(file_02 != "" && file_02 != 'undefined' &&  file_02 != undefined && file_02 != 'null' && file_02 != null){
            		 $("#file_02_fake").val("");
            		 $("#fileUploadPath_02").val(data.fileUploadPath);
					 $("#fileNewName_02").val(data.fileName);
					 $("#destination_02").val(data.destination);
            	 
					 if(file_03 != "" && file_03 != 'undefined' &&  file_03 != undefined && file_03 != 'null' && file_03 != null){
						 frm_no = "03";	 
						 save_file(frm_no);
						 return false;
					 }else  if(file_04 != "" && file_04 != 'undefined' &&  file_04 != undefined && file_04 != 'null' && file_04 != null){
						 frm_no = "04";
						 save_file(frm_no);
						 return false;
					 }else if(file_05 != "" && file_05 != 'undefined' &&  file_05 != undefined && file_05 != 'null' && file_05 != null){
						 frm_no = "05";
						 save_file(frm_no);
						 return false;
					 }else if(file_06 != "" && file_06 != 'undefined' &&  file_06 != undefined && file_06 != 'null' && file_06 != null){
						 frm_no = "06";
						 save_file(frm_no);
						 return false;
					 }else if(file_07 != "" && file_07 != 'undefined' &&  file_07 != undefined && file_07 != 'null' && file_07 != null){
						 frm_no = "07";
						 save_file(frm_no);
						 return false;
					 }else  if(file_08 != "" && file_08 != 'undefined' &&  file_08 != undefined && file_08 != 'null' && file_08 != null){
						 frm_no = "08";
						 save_file(frm_no);
						 return false;
					 }else if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
						 frm_no = "09";
						 save_file(frm_no);
						 return false;
					 }else  if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
						 frm_no = "10";
						 save_file(frm_no);
						 return false;
					 }else if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
					 
					 
            	 }
            	 
            	 if(file_03 != "" && file_03 != 'undefined' &&  file_03 != undefined && file_03 != 'null' && file_03 != null){
            		 $("#file_03_fake").val("");
            		 $("#fileUploadPath_03").val(data.fileUploadPath);
					 $("#fileNewName_03").val(data.fileName);
					 $("#destination_03").val(data.destination);
					 
					 if(file_04 != "" && file_04 != 'undefined' &&  file_04 != undefined && file_04 != 'null' && file_04 != null){
						 frm_no = "04";
						 save_file(frm_no);
						 return false;
					 }else if(file_05 != "" && file_05 != 'undefined' &&  file_05 != undefined && file_05 != 'null' && file_05 != null){
						 frm_no = "05";
						 save_file(frm_no);
						 return false;
					 }else if(file_06 != "" && file_06 != 'undefined' &&  file_06 != undefined && file_06 != 'null' && file_06 != null){
						 frm_no = "06";
						 save_file(frm_no);
						 return false;
					 }else if(file_07 != "" && file_07 != 'undefined' &&  file_07 != undefined && file_07 != 'null' && file_07 != null){
						 frm_no = "07";
						 save_file(frm_no);
						 return false;
					 }else  if(file_08 != "" && file_08 != 'undefined' &&  file_08 != undefined && file_08 != 'null' && file_08 != null){
						 frm_no = "08";
						 save_file(frm_no);
						 return false;
					 }else if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
						 frm_no = "09";
						 save_file(frm_no);
						 return false;
					 }else  if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
						 frm_no = "10";
						 save_file(frm_no);
						 return false;
					 }else if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
      
            	 
            	 
            	 if(file_04 != "" && file_04 != 'undefined' &&  file_04 != undefined && file_04 != 'null' && file_04 != null){
            		 $("#file_04_fake").val("");
            		 $("#fileUploadPath_04").val(data.fileUploadPath);
					 $("#fileNewName_04").val(data.fileName);
					 $("#destination_04").val(data.destination);
					 
					if(file_05 != "" && file_05 != 'undefined' &&  file_05 != undefined && file_05 != 'null' && file_05 != null){
						 frm_no = "05";
						 save_file(frm_no);
						 return false;
					 }else if(file_06 != "" && file_06 != 'undefined' &&  file_06 != undefined && file_06 != 'null' && file_06 != null){
						 frm_no = "06";
						 save_file(frm_no);
						 return false;
					 }else if(file_07 != "" && file_07 != 'undefined' &&  file_07 != undefined && file_07 != 'null' && file_07 != null){
						 frm_no = "07";
						 save_file(frm_no);
						 return false;
					 }else  if(file_08 != "" && file_08 != 'undefined' &&  file_08 != undefined && file_08 != 'null' && file_08 != null){
						 frm_no = "08";
						 save_file(frm_no);
						 return false;
					 }else if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
						 frm_no = "09";
						 save_file(frm_no);
						 return false;
					 }else  if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
						 frm_no = "10";
						 save_file(frm_no);
						 return false;
					 }else if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_05 != ""){
            		 $("#file_05_fake").val("");
            		 $("#fileUploadPath_05").val(data.fileUploadPath);
					 $("#fileNewName_05").val(data.fileName);
					 $("#destination_05").val(data.destination);
					 
					 if(file_06 != "" && file_06 != 'undefined' &&  file_06 != undefined && file_06 != 'null' && file_06 != null){
						 frm_no = "06";
						 save_file(frm_no);
						 return false;
					 }else if(file_07 != "" && file_07 != 'undefined' &&  file_07 != undefined && file_07 != 'null' && file_07 != null){
						 frm_no = "07";
						 save_file(frm_no);
						 return false;
					 }else  if(file_08 != "" && file_08 != 'undefined' &&  file_08 != undefined && file_08 != 'null' && file_08 != null){
						 frm_no = "08";
						 save_file(frm_no);
						 return false;
					 }else if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
						 frm_no = "09";
						 save_file(frm_no);
						 return false;
					 }else  if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
						 frm_no = "10";
						 save_file(frm_no);
						 return false;
					 }else if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_06 != "" && file_06 != 'undefined' &&  file_06 != undefined && file_06 != 'null' && file_06 != null){
            		 $("#file_06_fake").val("");
            		 $("#fileUploadPath_06").val(data.fileUploadPath);
					 $("#fileNewName_06").val(data.fileName);
					 $("#destination_06").val(data.destination);
					 
					 if(file_07 != "" && file_07 != 'undefined' &&  file_07 != undefined && file_07 != 'null' && file_07 != null){
						 frm_no = "07";
						 save_file(frm_no);
						 return false;
					 }else  if(file_08 != "" && file_08 != 'undefined' &&  file_08 != undefined && file_08 != 'null' && file_08 != null){
						 frm_no = "08";
						 save_file(frm_no);
						 return false;
					 }else if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
						 frm_no = "09";
						 save_file(frm_no);
						 return false;
					 }else  if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
						 frm_no = "10";
						 save_file(frm_no);
						 return false;
					 }else if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_07 != "" && file_07 != 'undefined' &&  file_07 != undefined && file_07 != 'null' && file_07 != null){
            		 $("#file_07_fake").val("");
            		 $("#fileUploadPath_07").val(data.fileUploadPath);
					 $("#fileNewName_07").val(data.fileName);
					 $("#destination_07").val(data.destination);
					 
					 if(file_08 != "" && file_08 != 'undefined' &&  file_08 != undefined && file_08 != 'null' && file_08 != null){
						 frm_no = "08";
						 save_file(frm_no);
						 return false;
					 }else if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
						 frm_no = "09";
						 save_file(frm_no);
						 return false;
					 }else  if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
						 frm_no = "10";
						 save_file(frm_no);
						 return false;
					 }else if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_08 != "" && file_08 != 'undefined' &&  file_08 != undefined && file_08 != 'null' && file_08 != null){
            		 $("#file_08_fake").val("");
            		 $("#fileUploadPath_08").val(data.fileUploadPath);
					 $("#fileNewName_08").val(data.fileName);
					 $("#destination_08").val(data.destination);
					
					 if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
						 frm_no = "09";
						 save_file(frm_no);
						 return false;
					 }else  if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
						 frm_no = "10";
						 save_file(frm_no);
						 return false;
					 }else if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
            		 $("#file_09_fake").val("");
            		 $("#fileUploadPath_09").val(data.fileUploadPath);
					 $("#fileNewName_09").val(data.fileName);
					 $("#destination_09").val(data.destination);
					 
					 if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
						 frm_no = "10";
						 save_file(frm_no);
						 return false;
					 }else if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
					 
					 
            	 }
            	 
            	 
            	 if(file_10 != "" && file_10 != 'undefined' &&  file_10 != undefined && file_10 != 'null' && file_10 != null ){
            		 $("#file_10_fake").val("");
            		 $("#fileUploadPath_10").val(data.fileUploadPath);
					 $("#fileNewName_10").val(data.fileName);
					 $("#destination_10").val(data.destination);
					 
					 if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
						 frm_no = "11";
						 save_file(frm_no);
						 return false;
					 }else if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_11 != "" && file_11 != 'undefined' &&  file_11 != undefined && file_11!= 'null' && file_11 != null){
            		 $("#file_11_fake").val("");
            		 $("#fileUploadPath_11").val(data.fileUploadPath);
					 $("#fileNewName_11").val(data.fileName);
					 $("#destination_11").val(data.destination);
					 
					 if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
						 frm_no = "12";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
            		 $("#file_12_fake").val("");
            		 $("#fileUploadPath_12").val(data.fileUploadPath);
					 $("#fileNewName_12").val(data.fileName);
					 $("#destination_12").val(data.destination);
					 
					
            	 }

            	 saveCompanyFile();
             }
         });
	}
	

	//이미지 저장
    function saveCompanyFile(){
        
		var file_cnt = 0;
		var file_stat = "";
		
		var file_01 = $("#file_01").val();
		var file_02 = $("#file_02").val();
		var file_03 = $("#file_03").val();
		var file_04 = $("#file_04").val();
		var file_05 = $("#file_05").val();
		var file_06 = $("#file_06").val();
		var file_07 = $("#file_07").val();
		var file_08 = $("#file_08").val();
		var file_09 = $("#file_09").val();
		var file_10 = $("#file_10").val();
		var file_11 = $("#file_11").val();
		var file_12 = $("#file_12").val();
		

		var fileName_01 = $("#fileNewName_01").val();
		var fileName_02 = $("#fileNewName_02").val();
		var fileName_03 = $("#fileNewName_03").val();
		var fileName_04 = $("#fileNewName_04").val();
		var fileName_05 = $("#fileNewName_05").val();
		var fileName_06 = $("#fileNewName_06").val();
		var fileName_07 = $("#fileNewName_07").val();
		var fileName_08 = $("#fileNewName_08").val();
		var fileName_09 = $("#fileNewName_09").val();
		var fileName_10 = $("#fileNewName_10").val();
		var fileName_11 = $("#fileNewName_11").val();
		var fileName_12 = $("#fileNewName_12").val();
		
		
		
		var params = "file_title=FOOD";
	
      
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
			if(file_04 != null && file_04 != "" && file_04 != undefined){
				file_cnt += 1;
				file_stat +=",04";
				params += "&fileNewName_04=" + jQuery("#fileNewName_04").val() + "&fileUploadPath_04=" + jQuery("#fileUploadPath_04").val() +
				"&destination_04=" + jQuery("#destination_04").val(); 
			}
			if(file_05 != null && file_05 != "" && file_05 != undefined){
				file_cnt += 1;
				file_stat +=",05";
				params += "&fileNewName_05=" + jQuery("#fileNewName_05").val() + "&fileUploadPath_05=" + jQuery("#fileUploadPath_05").val() +
				"&destination_05=" + jQuery("#destination_05").val(); 
			}
			if(file_06 != null && file_06 != "" && file_06 != undefined){
				file_cnt += 1;
				file_stat +=",06";
				params += "&fileNewName_06=" + jQuery("#fileNewName_06").val() + "&fileUploadPath_06=" + jQuery("#fileUploadPath_06").val() +
				"&destination_06=" + jQuery("#destination_06").val(); 
			}
			if(file_07 != null && file_07 != "" && file_07 != undefined){
				file_cnt += 1;
				file_stat +=",07";
				params += "&fileNewName_07=" + jQuery("#fileNewName_07").val() + "&fileUploadPath_07=" + jQuery("#fileUploadPath_07").val() +
				"&destination_07=" + jQuery("#destination_07").val(); 
			}
			if(file_08 != null && file_08 != "" && file_08 != undefined){
				file_cnt += 1;
				file_stat +=",08";
				params += "&fileNewName_08=" + jQuery("#fileNewName_08").val() + "&fileUploadPath_08=" + jQuery("#fileUploadPath_08").val() +
				"&destination_08=" + jQuery("#destination_08").val(); 
			}
			if(file_09 != null && file_09 != "" && file_09 != undefined){
				file_cnt += 1;
				file_stat +=",09";
				params += "&fileNewName_09=" + jQuery("#fileNewName_09").val() + "&fileUploadPath_09=" + jQuery("#fileUploadPath_09").val() +
				"&destination_09=" + jQuery("#destination_09").val(); 
			}
			if(file_10 != null && file_10 != "" && file_10 != undefined){
				file_cnt += 1;
				file_stat +=",10";
				params += "&fileNewName_10=" + jQuery("#fileNewName_10").val() + "&fileUploadPath_10=" + jQuery("#fileUploadPath_10").val() +
				"&destination_10=" + jQuery("#destination_10").val(); 
			}
			if(file_11 != null && file_11 != "" && file_11 != undefined){
				file_cnt += 1;
				file_stat +=",11";
				params += "&fileNewName_11=" + jQuery("#fileNewName_11").val() + "&fileUploadPath_11=" + jQuery("#fileUploadPath_11").val() +
				"&destination_11=" + jQuery("#destination_11").val(); 
			}
			if(file_12 != null && file_12 != "" && file_12 != undefined){
				file_cnt += 1;
				file_stat +=",12";
				params += "&fileNewName_12=" + jQuery("#fileNewName_12").val() + "&fileUploadPath_12=" + jQuery("#fileUploadPath_12").val() +
				"&destination_12=" + jQuery("#destination_12").val(); 
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
			      		if(file_04 != null && file_04 != "" && file_04 != undefined){
			      			$("#fileUploadPath_04").val(data.fileUploadPath_04);
							 $("#fileNewName_04").val(data.fileNewName_04);
			      		}
			      		if(file_05 != null && file_05 != "" && file_05 != undefined){
			      			$("#fileUploadPath_05").val(data.fileUploadPath_05);
							 $("#fileNewName_05").val(data.fileNewName_05);
			      		}
			      		if(file_06 != null && file_06 != "" && file_06 != undefined){
			      			$("#fileUploadPath_06").val(data.fileUploadPath_06);
							 $("#fileNewName_06").val(data.fileNewName_06);
			      		}
			      		if(file_07 != null && file_07 != "" && file_07 != undefined){
			      			$("#fileUploadPath_07").val(data.fileUploadPath_07);
							 $("#fileNewName_07").val(data.fileNewName_07);
			      		}
			      		if(file_08 != null && file_08 != "" && file_08 != undefined){
			      			$("#fileUploadPath_08").val(data.fileUploadPath_08);
							 $("#fileNewName_08").val(data.fileNewName_08);
			      		}
			      		if(file_09 != null && file_09 != "" && file_09 != undefined){
			      			$("#fileUploadPath_09").val(data.fileUploadPath_09);
							 $("#fileNewName_09").val(data.fileNewName_09);
			      		}
			      		if(file_10 != null && file_10 != "" && file_10 != undefined){
			      			$("#fileUploadPath_10").val(data.fileUploadPath_10);
							 $("#fileNewName_10").val(data.fileNewName_10);
			      		}
			      		if(file_11 != null && file_11 != "" && file_11 != undefined){
			      			$("#fileUploadPath_11").val(data.fileUploadPath_11);
							 $("#fileNewName_11").val(data.fileNewName_11);
			      		}
			      		if(file_12 != null && file_12 != "" && file_12 != undefined){
			      			$("#fileUploadPath_12").val(data.fileUploadPath_12);
							 $("#fileNewName_12").val(data.fileNewName_12);
			      		}
			      		

			      		save_food();
 
	          }
    	});
                                 
 	}

    
    //음식정보 저장
	function save_food(){
		
		
		var title = $('#title').val();
		var content_1 = $('#content_1').val();
		var addr01 = $('#addr01').val();
		var addr02 = $('#addr02').val();
		var menu_nm_1 = $('#menu_nm_1').val();
		var menu_nm_2 = $('#menu_nm_2').val();
		var menu_nm_3 = $('#menu_nm_3').val();
		var menu_nm_4 = $('#menu_nm_4').val();
		var menu_nm_5 = $('#menu_nm_5').val();
		var menu_nm_6 = $('#menu_nm_6').val();
		var menu_nm_7 = $('#menu_nm_7').val();
		var menu_nm_8 = $('#menu_nm_8').val();
		var menu_nm_9 = $('#menu_nm_9').val();
		var menu_nm_10 = $('#menu_nm_10').val();
		var menu_nm_11 = $('#menu_nm_11').val();
		var menu_nm_12 = $('#menu_nm_12').val();
		var menu_nm_13 = $('#menu_nm_13').val();
		var menu_nm_14 = $('#menu_nm_14').val();
		var menu_nm_15 = $('#menu_nm_15').val();
		var menu_nm_16 = $('#menu_nm_16').val();
		var menu_nm_17 = $('#menu_nm_17').val();
		var menu_nm_18 = $('#menu_nm_18').val();
		var menu_nm_19 = $('#menu_nm_19').val();
		var menu_nm_20 = $('#menu_nm_20').val();
		
		var latitude = $('#latitude').val();
		var longitude = $('#longitude').val();
		
		var travel_no = $('#travel_no').val();
		var food_no = $('#food_no').val();
		var fd_nm = $('#fd_nm').val();
		
		
		var file_01_name = $('#fileNewName_01').val();
		var file_01_path = $('#fileUploadPath_01').val();
		var file_02_name = $('#fileNewName_02').val();
		var file_02_path = $('#fileUploadPath_02').val();
		var file_03_name = $('#fileNewName_03').val();
		var file_03_path = $('#fileUploadPath_03').val();
		var file_04_name = $('#fileNewName_04').val();
		var file_04_path = $('#fileUploadPath_04').val();
		var file_05_name = $('#fileNewName_05').val();
		var file_05_path = $('#fileUploadPath_05').val();
		var file_06_name = $('#fileNewName_06').val();
		var file_06_path = $('#fileUploadPath_06').val();
		var file_07_name = $('#fileNewName_07').val();
		var file_07_path = $('#fileUploadPath_07').val();
		var file_08_name = $('#fileNewName_08').val();
		var file_08_path = $('#fileUploadPath_08').val();
		var file_09_name = $('#fileNewName_09').val();
		var file_09_path = $('#fileUploadPath_09').val();
		var file_10_name = $('#fileNewName_10').val();
		var file_10_path = $('#fileUploadPath_10').val();
		var file_11_name = $('#fileNewName_11').val();
		var file_11_path = $('#fileUploadPath_11').val();
		var file_12_name = $('#fileNewName_12').val();
		var file_12_path = $('#fileUploadPath_12').val();
		var update_yn = $('#update_yn').val();
		var use_time_1 = $('#use_time_1').val();
		var use_time_2 = $('#use_time_2').val();
		var use_time_3 = $('#use_time_3').val();
		
		if(update_yn != 'Y'){
			update_yn = "N";
		}
		
		
		
		var params = "title="+title+"&content_1="+content_1+"&addr01="+addr01+"&addr02="+addr02+"&travel_no="+travel_no+"&food_no="+food_no+"&fd_nm="+fd_nm;
		params += "&menu_nm_1="+menu_nm_1+"&menu_nm_2="+menu_nm_2+"&menu_nm_3="+menu_nm_3+"&menu_nm_4="+menu_nm_4+"&menu_nm_5="+menu_nm_5+"&menu_nm_6="+menu_nm_6;
		params += "&menu_nm_7="+menu_nm_7+"&menu_nm_8="+menu_nm_8+"&menu_nm_9="+menu_nm_9+"&menu_nm_10="+menu_nm_10+"&menu_nm_11="+menu_nm_11+"&menu_nm_12="+menu_nm_12;
		params += "&menu_nm_13="+menu_nm_13+"&menu_nm_14="+menu_nm_14+"&menu_nm_15="+menu_nm_15+"&menu_nm_16="+menu_nm_16+"&menu_nm_17="+menu_nm_17+"&menu_nm_18="+menu_nm_18;
		params += "&menu_nm_19="+menu_nm_19+"&menu_nm_20="+menu_nm_20+"&latitude="+latitude+"&longitude="+longitude+"&update_yn="+update_yn+"&use_time_1="+use_time_1+"&use_time_2="+use_time_2+"&use_time_3="+use_time_3;
		params += "&file_01_name="+file_01_name+"&file_02_name="+file_02_name+"&file_03_name="+file_03_name+"&file_01_path="+file_01_path+"&file_02_path="+file_02_path+"&file_03_path="+file_03_path;
		params += "&file_04_name="+file_04_name+"&file_05_name="+file_05_name+"&file_06_name="+file_06_name+"&file_04_path="+file_04_path+"&file_05_path="+file_05_path+"&file_06_path="+file_06_path;
		params += "&file_07_name="+file_07_name+"&file_08_name="+file_08_name+"&file_09_name="+file_09_name+"&file_07_path="+file_07_path+"&file_08_path="+file_08_path+"&file_09_path="+file_09_path;
		params += "&file_10_name="+file_10_name+"&file_11_name="+file_11_name+"&file_12_name="+file_12_name+"&file_10_path="+file_10_path+"&file_11_path="+file_11_path+"&file_12_path="+file_12_path;

	
		$.ajax({
            type        : "POST" 
          , async       : true
          , url         : "/admin/save_food.do"
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
          						alert("정보가 등록되었습니다.");
          						location.href="/admin/get_food_list.do";
          					}
          }
		});
		
	}
	
	function open_add_img(chk){
		if(chk == "1"){
			$('#add_img_div').css('display','');	
			$('#add_img_btn_1').css('display','none');	
			$('#add_img_btn_0').css('display','');	
		}else{
			$('#add_img_div').css('display','none');
			$('#add_img_btn_1').css('display','');	
			$('#add_img_btn_0').css('display','none');	
		}
		
	}

	function delete_food(){
		var travel_no = $('#travel_no').val();
		var food_no = $('#food_no').val();
		var params = "travel_no="+travel_no+"&food_no="+food_no;
		
		 $.ajax({
	            type        : "POST" 
	          , async       : true
	          , url         : "/admin/delete_food.do"
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
	    						location.href="/admin/get_food_list.do";
	    					}
	          }
			});
	}