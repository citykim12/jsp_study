//jQuery 호출
$(function(){
	
	/*$("input[name=gender]").click(function(){
		$("#chk_gender").text("");
	});*/
	
	$(":radio[name=gender]").click(function(){
		$("#chk_gender").text("");
	});
	
	 // 라디오버튼 클릭시 이벤트 발생 - **************설명
    $("input:radio[name=radio]").click(function(){
 
        if($("input[name=radio]:checked").val() == "1"){
            $("input:text[name=text]").attr("disabled",false);
            // radio 버튼의 value 값이 1이라면 활성화
 
        }else if($("input[name=radio]:checked").val() == "0"){
              $("input:text[name=text]").attr("disabled",true);
            // radio 버튼의 value 값이 0이라면 비활성화
        }
    });
	
	
	
});



function formCheck(){
	
	
	var chk = false;
	$("input[name=gender]:checked").each(function(){
		chk=true;
	});
	
	if(!chk){
		alert("성별이 체크되지 않았습니다.!");
		$("#chk_gender").text("성별이 체크되지 않았습니다.!");
		return false;
	}
	
	chk=false;
	$("input[name=hobby]:checked").each(function(){
		chk = true;
	});
	
	if(!chk){
		alert("체크가 되어 있지 않습니다.!");
		$("#chk_hobby").text("체크가 되어 있지 않습니다.!");
		return false;
	}
	
	/*var chk = false;
	for(var i=0;i<document.memberForm.hobby.length;i++){
		if(document.memberForm.hobby[i].checked){
			chk=true;
		}
	}
	
	if(!chk){
		alert("체크가 되어 있지 않습니다.!");
		document.getElementById("chk_hobby").innerHTML="체크가 되어 있지 않습니다.!";
		return false;
	}*/
	
}