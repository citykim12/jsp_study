/**
 * 
 */
$(function(){
	$("h1").css("color","red");
	$("#title").css("color","blue");
	
	$("#btn1").click(function(){
		$("#title").css("background","pink");
	});
	
	$(".c1").css("color","tomato");
	$("#btn2").click(function(){
		$(".c1").css("border","1px solid black");
	});
	
	$("#btn3").click(function(){
		$(".form1").toggle();
	});
	$("#btn4").click(function(){
		$(".form1").hide();
	});
	
});



 /*$(function(){
		$('#id').val("admin");
		console.log(document.form.id.value);
}); */