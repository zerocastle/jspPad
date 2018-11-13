<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js" integrity="sha384-FzT3vTVGXqf7wRfy8k4BiyzvbNfeYjK+frTVqZeNDFl8woCbF0CYG6g2fMEFFo/i" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="c"></script>
</head>
<body>
	<form action="b.jsp" id="upForm1" method="post" enctype="multipart/form-data">
		<div id="form">
			<ul>
				<li>
					<p class="cau">파일 선택기에서 cr1,shift 키를 눌러 파일 다중 선택<label for="file1">파일 선택<input type="file" id="file1" name="file1" multiple=""></label></p>
				</li>
				<li><input type="submit" id="upPro1" value="다중 파일 업로드" ></li>
			</ul>
		</div>
	</form>
	<div id="upResult"></div>
</body>
</html>