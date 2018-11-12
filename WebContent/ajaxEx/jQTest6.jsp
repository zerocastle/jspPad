<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<style>
div#displayArea {
	width: 200px;
	height: 200px;
	border: 5px double skyblue;
}
</style>

<script>
	$(document).ready(function(){
		$("#b1").click(function(){
			$.get("jsonTest.txt",function(data , status){
				var resultStr = "데이터" + data + "\n 처리상태 : " + status;
				$("#displayArea").text(resultStr);
			});
		});
	});
</script>

</head>
<body>

	<button id="b1">결과</button>
	<div>
		<div id="displayArea">변화</div>
	</div>

</body>
</html>