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
		
		
		
		$("#file_01_fake").val(file_01);
		$("#file_02_fake").val(file_02);
		$("#file_03_fake").val(file_03);
		$("#file_04_fake").val(file_04);
		$("#file_05_fake").val(file_05);
		$("#file_06_fake").val(file_06);
		$("#file_07_fake").val(file_07);
		$("#file_08_fake").val(file_08);
		$("#file_09_fake").val(file_09);
	
		
		var addr01 = $('#addr01').val();
		var addr02 = $('#addr02').val();
		


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
		}else{
			save_party();	
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
					 }
            	 }
            	 
            	 
            	 if(file_09 != "" && file_09 != 'undefined' &&  file_09 != undefined && file_09 != 'null' && file_09 != null){
            		 $("#file_09_fake").val("");
            		 $("#fileUploadPath_09").val(data.fileUploadPath);
					 $("#fileNewName_09").val(data.fileName);
					 $("#destination_09").val(data.destination);
					 
					 
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
	
		

		var fileName_01 = $("#fileNewName_01").val();
		var fileName_02 = $("#fileNewName_02").val();
		var fileName_03 = $("#fileNewName_03").val();
		var fileName_04 = $("#fileNewName_04").val();
		var fileName_05 = $("#fileNewName_05").val();
		var fileName_06 = $("#fileNewName_06").val();
		var fileName_07 = $("#fileNewName_07").val();
		var fileName_08 = $("#fileNewName_08").val();
		var fileName_09 = $("#fileNewName_09").val();
		
		
		
		
		var params = "file_title=PARTY";
	
      
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
			      		
			      		

			      		save_party();
 
	          }
    	});
                                 
 	}

    
    //음식정보 저장
	function save_party(){
		
		
		var title = $('#title').val();
		var add_info_1 = $('#add_info_1').val();
		var add_info_2 = $('#add_info_2').val();
	
		var pay_nm_1 = $('#pay_nm_1').val();
		var pay_nm_2 = $('#pay_nm_2').val();
		var pay_nm_3 = $('#pay_nm_3').val();
		var pay_nm_4 = $('#pay_nm_4').val();
		var pay_kind_1 = $('#pay_kind_1').val();
		var pay_kind_2 = $('#pay_kind_2').val();
		var pay_kind_3 = $('#pay_kind_3').val();
		var pay_1_1 = $('#pay_1_1').val();
		var pay_1_2 = $('#pay_1_2').val();
		var pay_1_3 = $('#pay_1_3').val();
		var pay_2_1 = $('#pay_2_1').val();
		var pay_2_2 = $('#pay_2_2').val();
		var pay_2_3 = $('#pay_2_3').val();
		var pay_3_1 = $('#pay_3_1').val();
		var pay_3_2 = $('#pay_3_2').val();
		var pay_3_3 = $('#pay_3_3').val();
		var pay_4_1 = $('#pay_4_1').val();
		var pay_4_2 = $('#pay_4_2').val();
		var pay_4_3 = $('#pay_4_3').val();
		
		var info_1 = $('#info_1').val();
		var info_2 = $('#info_2').val();
		var info_3 = $('#info_3').val();
		var info_4 = $('#info_4').val();
		var info_5 = $('#info_5').val();
		var info_6 = $('#info_6').val();
		var info_7 = $('#info_7').val();
		var info_8 = $('#info_8').val();
		var info_9 = $('#info_9').val();
		var info_10 = $('#info_10').val();
		
		var use_time_1 = $('#use_time_1').val();
		var use_time_2 = $('#use_time_2').val();
		var use_time_3 = $('#use_time_3').val();
		
	
		var addr01 = $('#addr01').val();
		var addr02 = $('#addr02').val();
		
		var hashtag = $('#hashtag').val();
		
		var latitude = $('#latitude').val();
		var longitude = $('#longitude').val();
		
		
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
	
		
		var params = "title="+title+"&add_info_1="+add_info_1+"&add_info_2="+add_info_2+"&info_8="+info_8+"&info_9="+info_9+"&info_10="+info_10;
		params += "&pay_3_3="+pay_3_3+"&pay_4_1="+pay_4_1+"&pay_4_2="+pay_4_2+"&pay_4_3="+pay_4_3+"&info_1="+info_1+"&info_2="+info_2;
		params += "&info_3="+info_3+"&info_4="+info_4+"&info_5="+info_5+"&info_6="+info_6+"&info_7="+info_7+"&use_time_1="+use_time_1;
		params += "&use_time_2="+use_time_2+"&use_time_3="+use_time_3;
		params += "&pay_nm_1="+pay_nm_1+"&pay_nm_2="+pay_nm_2+"&pay_nm_3="+pay_nm_3;
		params += "&pay_nm_4="+pay_nm_4+"&pay_kind_1="+pay_kind_1+"&pay_kind_2="+pay_kind_2+"&pay_kind_3="+pay_kind_3+"&pay_1_1="+pay_1_1+"&pay_1_2="+pay_1_2;
		params += "&pay_1_3="+pay_1_3+"&pay_2_1="+pay_2_1+"&pay_2_2="+pay_2_2+"&pay_2_3="+pay_2_3+"&pay_3_1="+pay_3_1+"&pay_3_2="+pay_3_2;
		params += "&addr01="+addr01+"&addr02="+addr02+"&hashtag="+hashtag+"&latitude="+latitude+"&longitude="+longitude;


		params += "&file_01_name="+file_01_name+"&file_02_name="+file_02_name+"&file_03_name="+file_03_name+"&file_01_path="+file_01_path+"&file_02_path="+file_02_path+"&file_03_path="+file_03_path;
		params += "&file_04_name="+file_04_name+"&file_05_name="+file_05_name+"&file_06_name="+file_06_name+"&file_04_path="+file_04_path+"&file_05_path="+file_05_path+"&file_06_path="+file_06_path;
		params += "&file_07_name="+file_07_name+"&file_08_name="+file_08_name+"&file_09_name="+file_09_name+"&file_07_path="+file_07_path+"&file_08_path="+file_08_path+"&file_09_path="+file_09_path;
		

	
		$.ajax({
            type        : "POST" 
          , async       : true
          , url         : "/admin/save_party.do"
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
          						location.href="/admin/get_party_list.do";
          					}
          }
		});
		
	}
	
	