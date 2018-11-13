<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String result = "------------------------------ <br>";
	
	String realFolder="";
	String saveFolder = "/upload";
	
	String encType = "utf-8";
	int maxSize = 5 * 1024 * 1024;
	
	ServletContext context = getServletContext();
	
	realFolder = context.getRealPath(saveFolder);
	
	try{
		MultipartRequest upload = new MultipartRequest(request , realFolder ,maxSize, encType , new DefaultFileRenamePolicy());
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
%>


</body>
</html>