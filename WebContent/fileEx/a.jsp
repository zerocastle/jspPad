<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js" integrity="sha384-FzT3vTVGXqf7wRfy8k4BiyzvbNfeYjK+frTVqZeNDFl8woCbF0CYG6g2fMEFFo/i" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

</head>
<body>
<form id="upForm1" action="b.jsp" method="post" enctype="multipart/form-data">
	<div>
		<ul>
			<li><input type="text" id="title" name="title" size="20" maxlength="50" placeholder="제목입력" autofocus=""></li>

			<li><label for="file1">파일선택<input type="file" id="file1" name="file1"></label></li>
			<li><input type="submit" id="upPro1" value="단일 파일 업로드"></li>
		</ul>
	</div>
</form>

<div id="upResult"></div>
</body>
</html>