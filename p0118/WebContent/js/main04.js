/**
 * 
 */
function arrCheck(){
	var arr=[30,"자전거",true];
	document.write("<h1>배열의 값 불러오기</h1>");
	document.write(arr[0],"<br>");
	document.write(arr[1],"<br>");
	document.write(arr[2],"<br>");
	
	document.write("<h1>for문을 이용한 배열 값 불러오기</h1>");
	for(var i=0;i<arr.length;i++){
		document.write(arr[i],"<br>");
	}
}


