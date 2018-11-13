<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
 <script src="c.js"></script>
</head>
<body>

<div id="BeforeLogin"><img src="https://www.yju.ac.kr/sites/kr/images/img_symbol_mark.png" width="300px" height="300px" alt="이미지를 불러 올수 없습니다 ." /> <br/>
<button id="ToLogin">인트로 화면 에서 로그인 화면으로 가기 </button>
</div>

<!-- login page -->
<div id="Login" style="visibility: hidden;" >
   <h1>My SNS Service</h1><br/>
   <h3>로그인해주세요</h3>
   <p>아이디</p>
   <input type="text" id="loginTxtID" maxlength="50" required="" name="id" />
   <p>비밀번호</p>
   <input type="password" id="loginTxtPw" maxlength="50" required="" name="password" />
   <br><br>

   <button id="loginBtnLogin">로그인</button>
   <button id="loginBtnJoin">회원 가입 </button>
</div>


<div id = "success"></div>
</body>
</html>