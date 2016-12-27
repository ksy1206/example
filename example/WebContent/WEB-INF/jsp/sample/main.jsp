<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<script type="text/javascript">
    function App() {
        var _this = this;
        
        // ENV (사용할 변수들)
        _this.env = {
            moveAjax	:	'#moveAjax',
            test1		: 	'test2'
        };
        
        _this.moveAjax = function() {
        	location.href= "<%=cp%>/sample/sample_ajax.do";
        }
        
        // Init (자동 실행)
        _this.init = function() {
        	
        }();
    }
    
    var app = new App();
    
</script>
<title>main</title>
</head>
<body>
	
	<input type="button" value="Ajax Sample Page" onclick="app.moveAjax();">

</body>
</html>