<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script language="javascript">

</script>
<title>주소찾기</title>
</head>
<body>



<div class="container">
<h2>주소</h2>
<div class="form-group" style="display: none;">
  <label for="latitude">위도:</label>
 <input type="text" class="form-control" id="latitude"/>
</div>
<div class="form-group" style="display: none;">
  <label for="longitude">경도:</label>
  <input type="text" class="form-control" id="longitude"/>
</div>
<div class="form-group">
  <label for="addr01">주소:</label>
  <input type="text" class="form-control" id="addr01" readonly="readonly" value="${list[0].addr01}"/>
</div>
<div class="form-group">
  <label for="addr02">상세주소:</label>
  <input type="text" class="form-control" id="addr02" readonly="readonly" value="${list[0].addr02}"/>
</div>
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#addrModal">주소검색</button>
  <button type="button" class="btn btn-success btn-lg" onclick="getLocation();" style="display: none;">위도경도</button>

  <!-- Modal -->
  <div class="modal fade" id="addrModal" role="dialog" >
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content" style="width: 800px;">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">주소검색</h4>
        </div>
        <div class="modal-body">
        <form name="form" id="form" method="post">
        	도로명,건물명,지번에 대해 통합검색이 가능합니다.
        	 <div style="display:none;">
				currentPage : <input type="text" name="currentPage" value="1" id="currentPage"/>
				countPerPage : <input type="text" name="countPerPage" value="10"/>
				totalCount : <input type="text" name="totalCount" id="totalCount" value=""/>
				start : <input type="text" id="start" value="1"/>
			 </div> 
        	<input type="text" name="confmKey" id="confmKey" style="width:250px;display:none" value="U01TX0FVVEgyMDE2MDYyMDE3NDMxMzEzMTMw"/>
	        <div class="row" style="margin-bottom: 10px;">
			  <div class="col-sm-10"><input type="text" class="form-control" id="keyword" name="keyword" placeholder="(예: 테헤란로 501, 삼성동 157-27, 반포자이아파트)" value="" onkeydown="enterSearch();"></div>
			  <div class="col-sm-2"><button type="button" class="btn btn-info" onClick="getAddr();">
			 	<span class="glyphicon glyphicon-search"></span> 
			 	 검색
			 	 </button>
			 </div>
			 
			</div>
			 <div class="row" style="margin-bottom: 10px;">
			  <div class="col-sm-10">상세주소<input type="text" class="form-control" id="addr_detail" name="addr_detail" value="" ></div>
			  <div class="col-sm-2"></div>
			 
			</div>
			<div id="list">
	
	       	</div>
				
			</form>
		</div> 
			
        <div class="modal-footer" style="margin-top: 20px;">
          <button type="button" class="btn btn-default" data-dismiss="modal" id="cls_btn">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>


</body>
</html>