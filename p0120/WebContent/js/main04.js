//jQuery 호출
$(function(){
	
	/*$("input[name=gender]").click(function(){
		$("#chk_gender").text("");
	});*/
	
	$(":radio[name=gender]").click(function(){
		$("#chk_gender").text("");
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