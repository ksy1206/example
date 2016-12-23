
	//앱 메인 여행지 버튼 클릭시 이동 화면
	function move_travel_main(){
		location.href="/travel/main.do";
	}

	//앱 메인 축체 버튼 클릭시 이동 화면
	function move_party_main(){
		location.href="/party/main.do";
	}
	
	//검색 페이지 이동
	function move_search(){
		location.href="/main/search.do";
	}
	
	//뒤로가기
	function call_back(){
		history.go(-1);
	}
	
	//안드로이드 뒤로가기 버튼 클릭시 뒤로가기
	function back_button(){
		var what_page = $("#what_page").val();
		
		if(what_page == "main_page"){
			window.myAndorid.call_back_main();
		} else {
			window.myAndorid.call_back_another();
		}
	}