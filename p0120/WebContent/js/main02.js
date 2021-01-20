
$(function(){
	$("li:nth-child(2)").css("color","tomato");
	$("#naver").next().css("color","blue");
	$("#net").prev().css("color","pink");
	
	$("#btn1").click(function(){
		$("ul").toggle(1000);
	});
	
	$("div").mouseenter(function(){
		$(".txt1").text("사각박스에 마우스 들어옴!");
	});
	
	$("div").mouseleave(function(){
		$(".txt1").text("사각박스 벗어남!");
	});
	
	
});




/*$(function(){
	$("ul li").css("color","tomato");
});*/

