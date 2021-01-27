// 폼체크만들것 -> jsp,servlet 
// 아이디 3,8 - 첫글자 영문소문자, 영문과 숫자만 가능
// 비밀번호 3,10 - 영문소문자, 영문대문자,숫자 꼭 1개 있어야 함
// 이름은 국문,영문,스페이스 가능
// 전화번호 국번 2,3 전화번호 3,4
// 성별체크, 취미 체크 할것
// span 글자 표시, 박스 선택시 글자 사라짐.

// jsp, servlet - html로 출력할 것
// 아이디 : admin
// 패스워드 :1111
// 이름 : 홍길동
// 전화번호 : 010-1111-1111
// 성별 : 남자
// 취미 : 게임,골프,독서,조깅,수영



function formCheck(){
	/*var idPtn = (/^[a-z]{1}[a-zA-Z0-9]{2,8}$/);
	var pwPtn = (/^[a-z]{1}(?=.*[a-z])(?=.*[A-Z]).{3,8}$/);
	
	if(!idPtn.test($("#id").val())){
		alert("id잘못 입력");
		$("#idspan").text("id가 잘못되었습니다.");
		return false;
	}*/
	
	document.form.submit();
}
//jQuery
$(function(){
	$("#id").focus(function(){
		$("#idspan").text("");
	});
	
});//jQuery

