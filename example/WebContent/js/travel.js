	$(document).ready(function(){
   		$('#fac_1_yn_div').click(function(){
   			var fac_1_yn = $('#fac_1_yn').val();
   			if(fac_1_yn == "Y"){
   				$('#fac_1_yn').val("N");
   				$('#fac_1_yn_div > img').attr("src","../img/travel/fac_1_n.png");
   				
   			}else{
   				$('#fac_1_yn').val("Y");
   				$('#fac_1_yn_div > img').attr("src","../img/travel/fac_1_y.png");
   			}
   		});
   		$('#fac_2_yn_div').click(function(){
   			var fac_2_yn = $('#fac_2_yn').val();
   			if(fac_2_yn == "Y"){
   				$('#fac_2_yn').val("N");
   				$('#fac_2_yn_div > img').attr("src","../img/travel/fac_2_n.png");
   				
   			}else{
   				$('#fac_2_yn').val("Y");
   				$('#fac_2_yn_div > img').attr("src","../img/travel/fac_2_y.png");
   			}
   		});
   		$('#fac_3_yn_div').click(function(){
   			var fac_3_yn = $('#fac_3_yn').val();
   			if(fac_3_yn == "Y"){
   				$('#fac_3_yn').val("N");
   				$('#fac_3_yn_div > img').attr("src","../img/travel/fac_3_n.png");
   				
   			}else{
   				$('#fac_3_yn').val("Y");
   				$('#fac_3_yn_div > img').attr("src","../img/travel/fac_3_y.png");
   			}
   		});
   		$('#fac_4_yn_div').click(function(){
   			var fac_4_yn = $('#fac_4_yn').val();
   			if(fac_4_yn == "Y"){
   				$('#fac_4_yn').val("N");
   				$('#fac_4_yn_div > img').attr("src","../img/travel/fac_4_n.png");
   				
   			}else{
   				$('#fac_4_yn').val("Y");
   				$('#fac_4_yn_div > img').attr("src","../img/travel/fac_4_y.png");
   			}
   		});
   		$('#fac_5_yn_div').click(function(){
   			var fac_5_yn = $('#fac_5_yn').val();
   			if(fac_5_yn == "Y"){
   				$('#fac_5_yn').val("N");
   				$('#fac_5_yn_div > img').attr("src","../img/travel/fac_5_n.png");
   				
   			}else{
   				$('#fac_5_yn').val("Y");
   				$('#fac_5_yn_div > img').attr("src","../img/travel/fac_5_y.png");
   			}
   		});
   		$('#fac_6_yn_div').click(function(){
   			var fac_6_yn = $('#fac_6_yn').val();
   			if(fac_6_yn == "Y"){
   				$('#fac_6_yn').val("N");
   				$('#fac_6_yn_div > img').attr("src","../img/travel/fac_6_n.png");
   				
   			}else{
   				$('#fac_6_yn').val("Y");
   				$('#fac_6_yn_div > img').attr("src","../img/travel/fac_6_y.png");
   			}
   		});
   		$('#fac_7_yn_div').click(function(){
   			var fac_7_yn = $('#fac_7_yn').val();
   			if(fac_7_yn == "Y"){
   				$('#fac_7_yn').val("N");
   				$('#fac_7_yn_div > img').attr("src","../img/travel/fac_7_n.png");
   				
   			}else{
   				$('#fac_7_yn').val("Y");
   				$('#fac_7_yn_div > img').attr("src","../img/travel/fac_7_y.png");
   			}
   		});
   		$('#fac_8_yn_div').click(function(){
   			var fac_8_yn = $('#fac_8_yn').val();
   			if(fac_8_yn == "Y"){
   				$('#fac_8_yn').val("N");
   				$('#fac_8_yn_div > img').attr("src","../img/travel/fac_8_n.png");
   				
   			}else{
   				$('#fac_8_yn').val("Y");
   				$('#fac_8_yn_div > img').attr("src","../img/travel/fac_8_y.png");
   			}
   		});
   		
   		$('input:radio[name=fd_yn]').click(function(){
   			var fd_yn = $("input:radio[name=fd_yn]:checked").val();
   			
   			if(fd_yn == "Y"){
   				$('#fd_div').css("display","");
   			}else{
   				$('#fd_div').css("display","none");
   			}
   			
   		});
   		
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
		var file_13 = $('#file_13').val();
		var file_14 = $('#file_14').val();
		var file_15 = $('#file_15').val();
		var file_16 = $('#file_16').val();
		var file_17 = $('#file_17').val();
		var file_18 = $('#file_18').val();
		var file_19 = $('#file_19').val();
		var file_20 = $('#file_20').val();
		var file_21 = $('#file_21').val();
		
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
		$("#file_13_fake").val(file_13);
		$("#file_14_fake").val(file_14);
		$("#file_15_fake").val(file_15);
		$("#file_16_fake").val(file_16);
		$("#file_17_fake").val(file_17);
		$("#file_18_fake").val(file_18);
		$("#file_19_fake").val(file_19);
		$("#file_20_fake").val(file_20);
		$("#file_21_fake").val(file_21);
		
		
		var sub_title = $('#sub_title').val();
		var add_info_1 = $('#add_info_1').val();
		var add_info_2 = $('#add_info_2').val();
		var add_info_3 = $('#add_info_3').val();
		var add_info_4 = $('#add_info_4').val();
		var add_info_5 = $('#add_info_5').val();
		var add_info_6 = $('#add_info_6').val();
		var add_info_7 = $('#add_info_7').val();
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
		var use_time_1 = $('#use_time_1').val();
		var use_time_2 = $('#use_time_2').val();
		var use_time_3 = $('#use_time_3').val();
		var fac_1_yn = $('#fac_1_yn').val();
		var fac_2_yn = $('#fac_2_yn').val();
		var fac_3_yn = $('#fac_3_yn').val();
		var fac_4_yn = $('#fac_4_yn').val();
		var fac_5_yn = $('#fac_5_yn').val();
		var fac_6_yn = $('#fac_6_yn').val();
		var fac_7_yn = $('#fac_7_yn').val();
		var fac_8_yn = $('#fac_8_yn').val();
		var addr01 = $('#addr01').val();
		var addr02 = $('#addr02').val();
		var fd_nm_1 = $('#fd_nm_1').val();
		var fd_nm_2 = $('#fd_nm_2').val();
		var fd_nm_3 = $('#fd_nm_3').val();
		var fd_nm_4 = $('#fd_nm_4').val();
		var fd_nm_5 = $('#fd_nm_5').val();
		var fd_nm_6 = $('#fd_nm_6').val();
		var fd_nm_7 = $('#fd_nm_7').val();
		var fd_nm_8 = $('#fd_nm_8').val();
		var fd_nm_9 = $('#fd_nm_9').val();
		var fd_nm_10 = $('#fd_nm_10').val();
		var fd_no_1 = $('#fd_no_1').val();
		var fd_no_2 = $('#fd_no_2').val();
		var fd_no_3 = $('#fd_no_3').val();
		var fd_no_4 = $('#fd_no_4').val();
		var fd_no_5 = $('#fd_no_5').val();
		var fd_no_6 = $('#fd_no_6').val();
		var fd_no_7 = $('#fd_no_7').val();
		var fd_no_8 = $('#fd_no_8').val();
		var fd_no_9 = $('#fd_no_9').val();
		var fd_no_10 = $('#fd_no_10').val();

		var fd_yn = $("input:radio[name=fd_yn]:checked").val();
		var hashtag = $('#hashtag').val();



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
		}else if(file_13 != ''&& file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
			
			save_file("13");
			return false;
		}else if(file_14 != ''&& file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
			
			save_file("14");
			return false;
		}else if(file_15 != ''&& file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
			
			save_file("15");
			return false;
		}else if(file_16 != ''&& file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
			
			save_file("16");
			return false;
		}else if(file_17 != ''&& file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
			
			save_file("17");
			return false;
		}else if(file_18 != ''&& file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
			
			save_file("18");
			return false;
		}else if(file_19 != ''&& file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
			
			save_file("19");
			return false;
		}else if(file_20 != ''&& file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
			
			save_file("20");
			return false;
		}else if(file_21 != ''&& file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
			
			save_file("21");
			return false;
		}else{
			save_travel();	
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
		var file_13 = $("#file_13_fake").val();
		var file_14 = $("#file_14_fake").val();
		var file_15 = $("#file_15_fake").val();
		var file_16 = $("#file_16_fake").val();
		var file_17 = $("#file_17_fake").val();
		var file_18 = $("#file_18_fake").val();
		var file_19 = $("#file_19_fake").val();
		var file_20 = $("#file_20_fake").val();
		var file_21 = $("#file_21_fake").val();
		
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
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
					 }else if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_12 != "" && file_12 != 'undefined' &&  file_12 != undefined && file_12 != 'null' && file_12 != null){
            		 $("#file_12_fake").val("");
            		 $("#fileUploadPath_12").val(data.fileUploadPath);
					 $("#fileNewName_12").val(data.fileName);
					 $("#destination_12").val(data.destination);
					 
					 if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
						 frm_no = "13";
						 save_file(frm_no);
						 return false;
					 }else if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
					
            	 }
            	 
            	
            	 
            	 
            	 if(file_13 != "" && file_13 != 'undefined' &&  file_13 != undefined && file_13 != 'null' && file_13 != null){
            		 $("#file_13_fake").val("");
            		 $("#fileUploadPath_13").val(data.fileUploadPath);
					 $("#fileNewName_13").val(data.fileName);
					 $("#destination_13").val(data.destination);
					 
					 if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
						 frm_no = "14";
						 save_file(frm_no);
						 return false;
					 }else if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_14 != "" && file_14 != 'undefined' &&  file_14 != undefined && file_14 != 'null' && file_14 != null){
            		 $("#file_14_fake").val("");
            		 $("#fileUploadPath_14").val(data.fileUploadPath);
					 $("#fileNewName_14").val(data.fileName);
					 $("#destination_14").val(data.destination);
					 
					 if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
						 frm_no = "15";
						 save_file(frm_no);
						 return false;
					 }else if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_15 != "" && file_15 != 'undefined' &&  file_15 != undefined && file_15 != 'null' && file_15 != null){
            		 $("#file_15_fake").val("");
            		 $("#fileUploadPath_15").val(data.fileUploadPath);
					 $("#fileNewName_15").val(data.fileName);
					 $("#destination_15").val(data.destination);
					 
					 if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
						 frm_no = "16";
						 save_file(frm_no);
						 return false;
					 }else if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_16 != "" && file_16 != 'undefined' &&  file_16 != undefined && file_16 != 'null' && file_16 != null){
            		 $("#file_16_fake").val("");
            		 $("#fileUploadPath_16").val(data.fileUploadPath);
					 $("#fileNewName_16").val(data.fileName);
					 $("#destination_16").val(data.destination);
					 
					 if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
						 frm_no = "17";
						 save_file(frm_no);
						 return false;
					 }else if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_17 != "" && file_17 != 'undefined' &&  file_17 != undefined && file_17 != 'null' && file_17 != null){
            		 $("#file_17_fake").val("");
            		 $("#fileUploadPath_17").val(data.fileUploadPath);
					 $("#fileNewName_17").val(data.fileName);
					 $("#destination_17").val(data.destination);
					 
					 if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
						 frm_no = "18";
						 save_file(frm_no);
						 return false;
					 }else if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_18 != "" && file_18 != 'undefined' &&  file_18 != undefined && file_18 != 'null' && file_18 != null){
            		 $("#file_18_fake").val("");
            		 $("#fileUploadPath_18").val(data.fileUploadPath);
					 $("#fileNewName_18").val(data.fileName);
					 $("#destination_18").val(data.destination);
					 
					 if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
						 frm_no = "19";
						 save_file(frm_no);
						 return false;
					 }else if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
              	 
            	 if(file_19 != "" && file_19 != 'undefined' &&  file_19 != undefined && file_19 != 'null' && file_19 != null){
            		 $("#file_19_fake").val("");
            		 $("#fileUploadPath_19").val(data.fileUploadPath);
					 $("#fileNewName_19").val(data.fileName);
					 $("#destination_19").val(data.destination);
					 
					 if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
						 frm_no = "20";
						 save_file(frm_no);
						 return false;
					 }else if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 
            	 if(file_20 != "" && file_20 != 'undefined' &&  file_20 != undefined && file_20 != 'null' && file_20 != null){
            		 $("#file_20_fake").val("");
            		 $("#fileUploadPath_20").val(data.fileUploadPath);
					 $("#fileNewName_20").val(data.fileName);
					 $("#destination_20").val(data.destination);
					 
					 if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
						 frm_no = "21";
						 save_file(frm_no);
						 return false;
					 }
            	 }
            	 
            	 if(file_21 != "" && file_21 != 'undefined' &&  file_21 != undefined && file_21 != 'null' && file_21 != null){
            		 $("#file_21_fake").val("");
            		 $("#fileUploadPath_21").val(data.fileUploadPath);
					 $("#fileNewName_21").val(data.fileName);
					 $("#destination_21").val(data.destination);
					 
		
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
		var file_13 = $("#file_13").val();
		var file_14 = $("#file_14").val();
		var file_15 = $("#file_15").val();
		var file_16 = $("#file_16").val();
		var file_17 = $("#file_17").val();
		var file_18 = $("#file_18").val();
		var file_19 = $("#file_19").val();
		var file_20 = $("#file_20").val();
		var file_21 = $("#file_21").val();

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
		var fileName_13 = $("#fileNewName_13").val();
		var fileName_14 = $("#fileNewName_14").val();
		var fileName_15 = $("#fileNewName_15").val();
		var fileName_16 = $("#fileNewName_16").val();
		var fileName_17 = $("#fileNewName_17").val();
		var fileName_18 = $("#fileNewName_18").val();
		var fileName_19 = $("#fileNewName_19").val();
		var fileName_20 = $("#fileNewName_20").val();
		var fileName_21 = $("#fileNewName_21").val();
		
		
		var params = "file_title=TRAVEL";
	
      
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
			if(file_13 != null && file_13 != "" && file_13 != undefined){
				file_cnt += 1;
				file_stat +=",13";
				params += "&fileNewName_13=" + jQuery("#fileNewName_13").val() + "&fileUploadPath_13=" + jQuery("#fileUploadPath_13").val() +
				"&destination_13=" + jQuery("#destination_13").val(); 
			}
			if(file_14 != null && file_14 != "" && file_14 != undefined){
				file_cnt += 1;
				file_stat +=",14";
				params += "&fileNewName_14=" + jQuery("#fileNewName_14").val() + "&fileUploadPath_14=" + jQuery("#fileUploadPath_14").val() +
				"&destination_14=" + jQuery("#destination_14").val(); 
			}
			if(file_15 != null && file_15 != "" && file_15 != undefined){
				file_cnt += 1;
				file_stat +=",15";
				params += "&fileNewName_15=" + jQuery("#fileNewName_15").val() + "&fileUploadPath_15=" + jQuery("#fileUploadPath_15").val() +
				"&destination_15=" + jQuery("#destination_15").val(); 
			}
			if(file_16 != null && file_16 != "" && file_16 != undefined){
				file_cnt += 1;
				file_stat +=",16";
				params += "&fileNewName_16=" + jQuery("#fileNewName_16").val() + "&fileUploadPath_16=" + jQuery("#fileUploadPath_16").val() +
				"&destination_16=" + jQuery("#destination_16").val(); 
			}
			if(file_17 != null && file_17 != "" && file_17 != undefined){
				file_cnt += 1;
				file_stat +=",17";
				params += "&fileNewName_17=" + jQuery("#fileNewName_17").val() + "&fileUploadPath_17=" + jQuery("#fileUploadPath_17").val() +
				"&destination_17=" + jQuery("#destination_17").val(); 
			}
			if(file_18 != null && file_18 != "" && file_18 != undefined){
				file_cnt += 1;
				file_stat +=",18";
				params += "&fileNewName_18=" + jQuery("#fileNewName_18").val() + "&fileUploadPath_18=" + jQuery("#fileUploadPath_18").val() +
				"&destination_18=" + jQuery("#destination_18").val(); 
			}
			if(file_19 != null && file_19 != "" && file_19 != undefined){
				file_cnt += 1;
				file_stat +=",19";
				params += "&fileNewName_19=" + jQuery("#fileNewName_19").val() + "&fileUploadPath_19=" + jQuery("#fileUploadPath_19").val() +
				"&destination_19=" + jQuery("#destination_19").val(); 
			}
			if(file_20 != null && file_20 != "" && file_20 != undefined){
				file_cnt += 1;
				file_stat +=",20";
				params += "&fileNewName_20=" + jQuery("#fileNewName_20").val() + "&fileUploadPath_20=" + jQuery("#fileUploadPath_20").val() +
				"&destination_20=" + jQuery("#destination_20").val(); 
			}
			if(file_21 != null && file_21 != "" && file_21 != undefined){
				file_cnt += 1;
				file_stat +=",21";
				params += "&fileNewName_21=" + jQuery("#fileNewName_21").val() + "&fileUploadPath_21=" + jQuery("#fileUploadPath_21").val() +
				"&destination_21=" + jQuery("#destination_21").val(); 
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
			      		if(file_13 != null && file_13 != "" && file_13 != undefined){
			      			$("#fileUploadPath_13").val(data.fileUploadPath_13);
							 $("#fileNewName_13").val(data.fileNewName_13);
			      		}
			      		if(file_14 != null && file_14 != "" && file_14 != undefined){
			      			$("#fileUploadPath_14").val(data.fileUploadPath_14);
							 $("#fileNewName_14").val(data.fileNewName_14);
			      		}
			      		if(file_15 != null && file_15 != "" && file_15 != undefined){
			      			$("#fileUploadPath_15").val(data.fileUploadPath_15);
							 $("#fileNewName_15").val(data.fileNewName_15);
			      		}
			      		if(file_16 != null && file_16 != "" && file_16 != undefined){
			      			$("#fileUploadPath_16").val(data.fileUploadPath_16);
							 $("#fileNewName_16").val(data.fileNewName_16);
			      		}
			      		if(file_17 != null && file_17 != "" && file_17 != undefined){
			      			$("#fileUploadPath_17").val(data.fileUploadPath_17);
							 $("#fileNewName_17").val(data.fileNewName_17);
			      		}
			      		if(file_18 != null && file_18 != "" && file_18 != undefined){
			      			$("#fileUploadPath_18").val(data.fileUploadPath_18);
							 $("#fileNewName_18").val(data.fileNewName_18);
			      		}
			      		if(file_19 != null && file_19 != "" && file_19 != undefined){
			      			$("#fileUploadPath_19").val(data.fileUploadPath_19);
							 $("#fileNewName_19").val(data.fileNewName_19);
			      		}
			      		if(file_20 != null && file_20 != "" && file_20 != undefined){
			      			$("#fileUploadPath_20").val(data.fileUploadPath_20);
							 $("#fileNewName_20").val(data.fileNewName_20);
			      		}
			      		if(file_21 != null && file_21 != "" && file_21 != undefined){
			      			$("#fileUploadPath_21").val(data.fileUploadPath_21);
							 $("#fileNewName_21").val(data.fileNewName_21);
			      		}
			      		

			      		save_travel();
 
	          }
    	});
                                 
 	}

    
    //여행정보 저장
	function save_travel(){
		
		
		var title = $('#title').val();
		var sub_title = $('#sub_title').val();
		var add_info_1 = $('#add_info_1').val();
		var add_info_2 = $('#add_info_2').val();
		var add_info_3 = $('#add_info_3').val();
		var add_info_4 = $('#add_info_4').val();
		var add_info_5 = $('#add_info_5').val();
		var add_info_6 = $('#add_info_6').val();
		var add_info_7 = $('#add_info_7').val();
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
		var use_time_1 = $('#use_time_1').val();
		var use_time_2 = $('#use_time_2').val();
		var use_time_3 = $('#use_time_3').val();
		var fac_1_yn = $('#fac_1_yn').val();
		var fac_2_yn = $('#fac_2_yn').val();
		var fac_3_yn = $('#fac_3_yn').val();
		var fac_4_yn = $('#fac_4_yn').val();
		var fac_5_yn = $('#fac_5_yn').val();
		var fac_6_yn = $('#fac_6_yn').val();
		var fac_7_yn = $('#fac_7_yn').val();
		var fac_8_yn = $('#fac_8_yn').val();
		var addr01 = $('#addr01').val();
		var addr02 = $('#addr02').val();
		var fd_nm_1 = $('#fd_nm_1').val();
		var fd_nm_2 = $('#fd_nm_2').val();
		var fd_nm_3 = $('#fd_nm_3').val();
		var fd_nm_4 = $('#fd_nm_4').val();
		var fd_nm_5 = $('#fd_nm_5').val();
		var fd_nm_6 = $('#fd_nm_6').val();
		var fd_nm_7 = $('#fd_nm_7').val();
		var fd_nm_8 = $('#fd_nm_8').val();
		var fd_nm_9 = $('#fd_nm_9').val();
		var fd_nm_10 = $('#fd_nm_10').val();
		var fd_no_1 = $('#fd_no_1').val();
		var fd_no_2 = $('#fd_no_2').val();
		var fd_no_3 = $('#fd_no_3').val();
		var fd_no_4 = $('#fd_no_4').val();
		var fd_no_5 = $('#fd_no_5').val();
		var fd_no_6 = $('#fd_no_6').val();
		var fd_no_7 = $('#fd_no_7').val();
		var fd_no_8 = $('#fd_no_8').val();
		var fd_no_9 = $('#fd_no_9').val();
		var fd_no_10 = $('#fd_no_10').val();
		var fd_yn = $("input:radio[name=fd_yn]:checked").val();
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
		var file_10_name = $('#fileNewName_10').val();
		var file_10_path = $('#fileUploadPath_10').val();
		var file_11_name = $('#fileNewName_11').val();
		var file_11_path = $('#fileUploadPath_11').val();
		var file_12_name = $('#fileNewName_12').val();
		var file_12_path = $('#fileUploadPath_12').val();
		var file_13_name = $('#fileNewName_13').val();
		var file_13_path = $('#fileUploadPath_13').val();
		var file_14_name = $('#fileNewName_14').val();
		var file_14_path = $('#fileUploadPath_14').val();
		var file_15_name = $('#fileNewName_15').val();
		var file_15_path = $('#fileUploadPath_15').val();
		var file_16_name = $('#fileNewName_16').val();
		var file_16_path = $('#fileUploadPath_16').val();
		var file_17_name = $('#fileNewName_17').val();
		var file_17_path = $('#fileUploadPath_17').val();
		var file_18_name = $('#fileNewName_18').val();
		var file_18_path = $('#fileUploadPath_18').val();
		var file_19_name = $('#fileNewName_19').val();
		var file_19_path = $('#fileUploadPath_19').val();
		var file_20_name = $('#fileNewName_20').val();
		var file_20_path = $('#fileUploadPath_20').val();
		var file_21_name = $('#fileNewName_21').val();
		var file_21_path = $('#fileUploadPath_21').val();
	
		var params = "title="+title+"&sub_title="+sub_title+"&add_info_1="+add_info_1+"&add_info_2="+add_info_2+"&add_info_3="+add_info_3+"&add_info_4="+add_info_4;
		params += "&pay_3_3="+pay_3_3+"&pay_4_1="+pay_4_1+"&pay_4_2="+pay_4_2+"&pay_4_3="+pay_4_3+"&info_1="+info_1+"&info_2="+info_2;
		params += "&info_3="+info_3+"&info_4="+info_4+"&info_5="+info_5+"&info_6="+info_6+"&info_7="+info_7+"&use_time_1="+use_time_1;
		params += "&use_time_2="+use_time_2+"&use_time_3="+use_time_3+"&fac_1_yn="+fac_1_yn+"&fac_2_yn="+fac_2_yn+"&fac_3_yn="+fac_3_yn+"&fac_4_yn="+fac_4_yn;
		params += "&add_info_5="+add_info_5+"&add_info_6="+add_info_6+"&add_info_7="+add_info_7+"&pay_nm_1="+pay_nm_1+"&pay_nm_2="+pay_nm_2+"&pay_nm_3="+pay_nm_3;
		params += "&pay_nm_4="+pay_nm_4+"&pay_kind_1="+pay_kind_1+"&pay_kind_2="+pay_kind_2+"&pay_kind_3="+pay_kind_3+"&pay_1_1="+pay_1_1+"&pay_1_2="+pay_1_2;
		params += "&pay_1_3="+pay_1_3+"&pay_2_1="+pay_2_1+"&pay_2_2="+pay_2_2+"&pay_2_3="+pay_2_3+"&pay_3_1="+pay_3_1+"&pay_3_2="+pay_3_2;
		params += "&fac_5_yn="+fac_5_yn+"&fac_6_yn="+fac_6_yn+"&fac_7_yn="+fac_7_yn+"&fac_8_yn="+fac_8_yn+"&addr01="+addr01+"&addr02="+addr02;
		params += "&fd_nm_1="+fd_nm_1+"&fd_nm_2="+fd_nm_2+"&fd_nm_3="+fd_nm_3+"&fd_nm_4="+fd_nm_4+"&fd_nm_5="+fd_nm_5+"&fd_nm_6="+fd_nm_6;
		params += "&fd_nm_7="+fd_nm_7+"&fd_nm_8="+fd_nm_8+"&fd_nm_9="+fd_nm_9+"&fd_nm_10="+fd_nm_10+"&fd_yn="+fd_yn+"&hashtag="+hashtag+"&latitude="+latitude+"&longitude="+longitude;
		params += "&file_01_name="+file_01_name+"&file_02_name="+file_02_name+"&file_03_name="+file_03_name+"&file_01_path="+file_01_path+"&file_02_path="+file_02_path+"&file_03_path="+file_03_path;
		params += "&file_04_name="+file_04_name+"&file_05_name="+file_05_name+"&file_06_name="+file_06_name+"&file_04_path="+file_04_path+"&file_05_path="+file_05_path+"&file_06_path="+file_06_path;
		params += "&file_07_name="+file_07_name+"&file_08_name="+file_08_name+"&file_09_name="+file_09_name+"&file_07_path="+file_07_path+"&file_08_path="+file_08_path+"&file_09_path="+file_09_path;
		params += "&file_10_name="+file_10_name+"&file_11_name="+file_11_name+"&file_12_name="+file_12_name+"&file_10_path="+file_10_path+"&file_11_path="+file_11_path+"&file_12_path="+file_12_path;
		params += "&file_13_name="+file_13_name+"&file_14_name="+file_14_name+"&file_15_name="+file_15_name+"&file_13_path="+file_13_path+"&file_14_path="+file_14_path+"&file_15_path="+file_15_path;
		params += "&file_16_name="+file_16_name+"&file_17_name="+file_17_name+"&file_18_name="+file_18_name+"&file_16_path="+file_16_path+"&file_17_path="+file_17_path+"&file_18_path="+file_18_path;
		params += "&file_19_name="+file_19_name+"&file_20_name="+file_20_name+"&file_21_name="+file_21_name+"&file_19_path="+file_19_path+"&file_20_path="+file_20_path+"&file_21_path="+file_21_path;
		params += "&fd_no_1="+fd_no_1+"&fd_no_2="+fd_no_2+"&fd_no_3="+fd_no_3+"&fd_no_4="+fd_no_4+"&fd_no_5="+fd_no_5+"&fd_no_6="+fd_no_6;
		params += "&fd_no_7="+fd_no_7+"&fd_no_8="+fd_no_8+"&fd_no_9="+fd_no_9+"&fd_no_10="+fd_no_10;
		
		$.ajax({
            type        : "POST" 
          , async       : true
          , url         : "/admin/save_travel.do"
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
          						location.href="/admin/get_travel_list.do";
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