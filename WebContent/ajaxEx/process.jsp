<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%request.setCharacterEncoding("utf-8"); %>
</head>
<body>

<%
	String resultStr = "처리결과 : <br>";
	String name = request.getParameter("name");
	String stus = request.getParameter("stus");
	
	resultStr += "이름은" + name + "이고,<br>";
	resultStr += "현재상태는 " + stus;
	
	out.println(resultStr);
%>

</body>
</html>