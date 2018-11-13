/**
 * 
 */

$(document).ready(function() {
	$("#ToLogin").click(function() {
		$("#BeforeLogin").children().hide();
		$("#Login").children().css("visibility", "visible");

	})

	$("#loginBtnLogin").click(function() {
		//alert("눌러지니?");

		var query = {
			id : $("#loginTxtID").val(),
			password : $("#loginTxtPw").val()
		};
		$.ajax({
			type : "POST",
			url : "b.jsp",
			data : query,
			success : function(data) {
				//alert(data);
				var a = JSON.parse(data);
				
				if(data == -1){
					alert("비밀번호가 틀림");
					$("#success").html("");
				}else if(data == 0){
					alert("그런 아이디가 없음");
					$("#success").html("");
				}else{
					alert(a[0].mname + " 님 환영합니다.");
					$("#success").html(a[0].mname + "님 환영합니다.");
					console.log(a);
				}
			}

		})

	})

})
