<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>


<style>
	#result{
		width : 200px;
		height : 200px;
		border : 5px double blue;
	}
</style>
<script>
$(document).ready(function(){
    $("#b2").click(function(){ //[결과] 버튼을 클릭하면 자동실행
       //jQTest5.txt를 get 방식으로 요청
       var query={userid:$("#userid").val(),password:$("#password").val()};
       $.ajax({
          type:"POST",
          url: "/제이에스피연습장/Member",
          data: query,
          success: function(data){
             if(data == 1){$("#result").text("로그인성공")}
             else if(data == 0){$("#result").text("비번틀림")}
             else if(data == -1){$("#result").text("비회원")}
             
          }
       });
    });
 });
</script>

</head>
<body>

<div>아이디 : <input type="text" name="userid" id="userid"></div>
<div>번호 : <input type="password" name="password" id="password"></div>
<div>결과</div>
<button id = "b2">버튼</button>
<div id = "result"></div>


</body>
</html>