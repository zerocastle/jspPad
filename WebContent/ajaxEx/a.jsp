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
		$("button").click(function(){
			$("#displayArea").html("<img src='git.png' border='0'/>");
		});
		$("button").dblclick(function(){
			$("#displayArea").text("이미지 없애버리기..");
		});
	});
</script>
</head>
<body>

<div id="displayArea">이곳의 내용이 변경</div>
<button>표시</button>

</body>
</html>