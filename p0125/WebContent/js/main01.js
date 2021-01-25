//Servlet파일(S03.java)을 만들어서 console에 출력을 해볼것
// 아이디 : admin
// 패스워드 :1111
// 이름 : 홍길동
// 전화번호 : 010-1111-1111
// 성별 : 남자
// 취미 : 게임,골프,독서,조깅,수영

function formCheck(){

    var idPtn = /^[a-z]{1}[a-zA-Z0-9]{2,8}$/;
    var pwPtn = (/^(?=.*[~!@#$%^&*()\-_=])(?=.*[A-Z])(?=.*[0-9]).{3,8}$/);

    if(!idPtn.test($("#id").val())){
	    alert("id입력이 잘못되었습니다. 다시 입력해주세요.");
        $("#id").next().text("id를 다시 입력바람!");
        return false;
     }

     // 라디오 박스 확인
     var chk = false;
     for(var i=0;i<(document.form.ngender.length);i++){
	    if(document.form.ngender[i].checked){
		     chk=true;
	    }
     }

     if(!chk){
	    alert("성별체크가 되어 있지 않습니다. 성별을 체크해주세요.");
        $("#chk_gender").text("성별 체크확인!");
        return false;
     }


     //취미 체크박스 확인
     chk = false;
     for(var i=0;i<(document.form.nhobby.length);i++){
          if(document.form.nhobby[i].checked){
		      chk=true;
	      }
     };
 
     if(!chk){
	     alert("취미체크가 되어 있지 않습니다. 취미를 체크해주세요.");
         $("#chk_hobby").text("취미 체크 확인!");
         return false;
     }

	document.form.submit();  //form1 -> form의 이름
}

//jQuery - html 로딩후 jQuery재실행
$(function(){
	$("#id").focus(function(){
		$("#id").next().text("");
		$("#id").css("backgroud","pink");
	});
});





