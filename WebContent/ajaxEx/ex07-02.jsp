<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
</style>
<script>
	$(document).ready(function(){
		$("#b1").click(function(){
			$("#display").load("ex07-01.jsp");
		})
	})
</script>
</head>
<body>
<button id="b1"></button>
<div id="display"></div>
</body>
</html>