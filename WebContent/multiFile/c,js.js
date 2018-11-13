/**
 * 
 */

$(document).ready(function(){
	$("#upForm1").ajaxForm({
		success:function(data , status){
			$("#upResult").html("파일 업로드 완료.<br>");
			var appChild = "<p class='cau'> <button id='refreshForm' onclick='refresh()'>";
			appChild += "업로드 폼 초기화 </button></p>";
			$("#upResult").append(appChild);
		}
	});
});

function refresh(){
	location.reload(true);
}