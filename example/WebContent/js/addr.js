
function getAddr(){
	$.ajax({
		 url :"http://www.juso.go.kr/addrlink/addrLinkApiJsonp.do"  //인터넷망
		,type:"post"
		,data:$("#form").serialize()
		,dataType:"jsonp"
		,crossDomain:true
		,success:function(xmlStr){
			if(navigator.appName.indexOf("Microsoft") > -1){
				var xmlData = new ActiveXObject("Microsoft.XMLDOM");
				xmlData.loadXML(xmlStr.returnXml)
			}else{
				var xmlData = xmlStr.returnXml;
			}
			$("#list").html("");
			var errCode = $(xmlData).find("errorCode").text();
			var errDesc = $(xmlData).find("errorMessage").text();
			if(errCode != "0"){
				alert(errCode+"="+errDesc);
			}else{
				if(xmlStr != null){
					makeList(xmlData);
				}
			}
		}
	    ,error: function(xhr,status, error){
	    	alert("에러발생");
	    }
	});
}

function makeList(xmlStr){
	var htmlStr = "";
	var totalCount = $(xmlStr).find("totalCount").text();
	var countPerPage = $(xmlStr).find("countPerPage").text();
	var thisPage = $("#currentPage").val();
	var pageCount = totalCount/countPerPage;
		pageCount = Math.ceil(pageCount);
	var check = false;
	
	var i = 0;

	htmlStr += "<table class='table table-striped'>";
	htmlStr += " <thead><tr>";
	htmlStr += "<td>우편번호</td>";
	htmlStr += "<td>신주소</td>";
	htmlStr += "<td>구주소</td>";
	htmlStr += "</tr></thead><tbody>";
	$(xmlStr).find("juso").each(function(){
		addr_new = $(this).find('roadAddr').text();
		htmlStr += "<tr style='cursor: pointer;'>";
		htmlStr += "<td>"+$(this).find('zipNo').text()      +"</td>";
	 	htmlStr += "<td onclick='select_addr_new("+i+");' id='addr_new_"+i+"'>"+$(this).find('roadAddr').text() +"</td>";
	 	//htmlStr += "<td>"+$(this).find('roadAddrPart1').text()      +"</td>";
	 	//htmlStr += "<td>"+$(this).find('roadAddrPart2').text()      +"</td>";
	 	htmlStr += "<td onclick='select_addr_old("+i+");' id='addr_old_"+i+"'>"+$(this).find('jibunAddr').text() +"</td>";
		//htmlStr += "<td>"+$(this).find('engAddr').text()     +"</td>";
		//htmlStr += "<td>"+$(this).find('admCd').text()      +"</td>";
		//htmlStr += "<td>"+$(this).find('rnMgtSn').text()      +"</td>";
		//htmlStr += "<td>"+$(this).find('bdMgtSn').text()      +"</td>";
		//htmlStr += "<td>"+$(this).find('detBdNmList').text()      +"</td>";
		htmlStr += "</tr>";	
		i++;
	});	
	htmlStr += "</tbody></table>";
	
	
	htmlStr += "<div style='height:30px;'>";
	var start = $("#start").val();
	
	if(start == 1){
		htmlStr += "<div class='col-sm-2'>&nbsp;</div>";
	}
	
	if(start > 1){
		htmlStr += "<div class='col-sm-2'><ul class='pager' style='float: right;'><li><a href='#'  onclick='pagePrevious("+start+")'>이전</a></li></ul></div>";
	}
	
	
	var i = 0;
	var j = 0;
	htmlStr += "<div class='col-sm-8' align='center'><ul class='pagination'>";
	for(i = start; i <= pageCount; i++){
		if(check == false){
			if(thisPage == i){
				htmlStr += "<li><a href='#' class='active' onclick='pageMove("+i+")'>"+i+"</a></li>";
			} else {
				htmlStr += "<li><a href='#' onclick='pageMove("+i+")'>"+i+"</a></li>";
			}
			    j = i/10;
				j = Math.floor(j);
				
				if(i == j*10){
					check = true;
					htmlStr += "</ul></div><div class='col-sm-2'><ul class='pager' style='float: left;'><li><a href='#' onclick='paggingNext("+j+")'>다음</a></li></ul></div>";
				}
			
		}		
	}
	
	if(i <= 10){
		htmlStr += "</ul></div><div class='col-sm-2'>&nbsp;</div>";
	}
	
	
	htmlStr += "</div>";
	
	$("#list").html(htmlStr);
}

function pageMove(data){
	$("#currentPage").val(data);
	getAddr();
}

function pagePrevious(data){
	var j = data/10;
		j = Math.floor(j);
		j = j-1;
		j = j*10+1;
		$("#currentPage").val(j);
		$("#start").val(j);
		getAddr();
}

function paggingNext(data){
	var j = data*10 + 1;
	$("#currentPage").val(j);
	$("#start").val(j);
	getAddr();
}

function enterSearch() {
	var evt_code = (window.netscape) ? ev.which : event.keyCode;
	if (evt_code == 13) {    
		event.keyCode = 0;  
		getAddr(); //jsonp사용시 enter검색 
	} 
}

function select_addr_new(addr){
	$("#addr01").val($('#addr_new_'+addr).text());
	$("#addr02").val($('#addr_detail').val());
	
	$('#cls_btn').click();
	$('#cls_btn').click();
	
	getLocation();	
}
function select_addr_old(addr){

	$("#addr01").val($('#addr_old_'+addr).text());
	$("#addr02").val($('#addr_detail').val());
	
	$('#cls_btn').click();
	$('#cls_btn').click();
	
	getLocation();	
}
//위도 경도 구하기
var geocoder = new google.maps.Geocoder(); 
function getLocation() {
		
	var address = $("#addr01").val()+" "+$("#addr02").val();
	

	geocoder.geocode({'address': address}, function(results, status) {
		
		if( status == google.maps.GeocoderStatus.OK ) {  
		
			if (results.length == 1) {
				
				var location = "" + results[0].geometry.location;
				
				location = location.substring(1, location.length-1);
				
				var array_data = location.split(", ");
			    
				var latitude = array_data[0];
				var longitude = array_data[1];
				
				$('#latitude').val(latitude);
				$('#longitude').val(longitude);
			
				
				
			} else {
				alert(results.length + "개의 위,경도 결과를 찾았습니다. 정확한 주소를 입력해주세요.");
				$('#latitude').val("N");
			}
		} else {
			alert('실패.');
			$('#latitude').val("N");
			
		}
	});
	
}