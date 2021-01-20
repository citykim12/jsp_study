
function formCheck(){
	
    var idPtn = /^[a-z]{1}[a-zA-Z0-9]{2,9}$/;
    var pwCheck = (/^(?=.*[~`!@#$%^&*()\-_+=\\\|<>])(?=.*[A-Z]).{3,8}$/);
    var namePtn = /^[가-힣a-zA-Z\s]{1,}$/;  //john kendy
    var telPtn = /^\d{2,3}\-\d{3,4}\-\d{4}$/;

    /*if(!idPtn.test($("#id").val())){
	    alert("id가 잘못입력되었습니다.");
        $("#id").css("background","pink");
        $("#id").next().text("id가 잘못입력되었음!");
        $("#id").val("");
        return false;
    }	
    
    if(!pwCheck.test($("#pw").val())){
	   alert("특수문자를 1개 이상 입력되어야 합니다.");
       $("#pw").val("");
       $("#pw").focus();
       return false;
    }

    if($("#pw").val()!=$("#pw2").val()){
	    alert("비밀번호가 일치하지 않습니다. 다시 입력하세요.!");
        $("#pw").val("");
        $("#pw2").val("");
        $("#pw").focus();
        return false;
    }

    if(!namePtn.test($("#name").val())){
	   alert("한글,영문만 가능합니다.");
       $("#name").val("");
       $("#name").focus();
       return false;
    }

    if(!telPtn.test($("tel").val())){
	   alert("전화번호는 -를 포함해서 입력하세요.!");
       $("#tel").focus();
       return false;
    }*/
   
   //자바스크립트
   var chk = false;
   for(var i=0;i<document.memberForm.hobby.length;i++){
	  if(document.memberForm.hobby[i].checked){
		   chk = true;
	  }
   }
    
   if(!chk){
	  alert("체크가 되어 있지 않습니다.");
      document.getElementById("chk_hobby").innerHTML="체크가 되어 있지 않습니다.";
      document.getElementById("chk_hobby").focus();
      return false;
   }

    

}
// jQuery-로딩
$(function(){
    //input 선택시
	$("#id").focus(function(){
		$("#id").next().text("");
		$("#id").css("background","pink");
	});
	//input 벗어날때
	$("#id").blur(function(){
		$("#id").css("background","white");
		$("#id").css("border","1px solid rgb(133,133,133)");
	});
	
	$("#id").click(function(){
		
	});
	
	$("#id").mouseenter(function(){
		
	});
	
	$("#id").mouseleave(function(){
		
	});
	
	

	
	
	
});



