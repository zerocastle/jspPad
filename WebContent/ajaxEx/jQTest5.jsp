<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<style>
	div#displayArea{
		width : 200px; height : 200px;
		border : 5px double skyblue;
	}
</style>

<script>
	$(document).ready(function(){
		$("#b1").click(function(){
			$("#displayArea").load("jsonTest.txt",function(response,stu,xhr){
				//response 응답 결과 , stu 응답된상태 , xhr xmlHttpRequest 객체가 포함
				if(stu == "success"){
					alert("로드 성공");
				}
				if(stu == "error"){
					alert("에러 : " + xhr.status + ": " + xhr.stu)
				}
			})
		})
	})
</script>

</head>
<body>

<button id="b1">결과</button>
<div>
	<div id="displayArea">변화</div>
</div>

</body>
</html>