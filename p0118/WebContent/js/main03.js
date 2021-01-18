function numcheck(){
	
	var luckyNum =  parseInt(Math.random()*100)+1;
	
    while(true){
		var inputNum = prompt("1~100까지의 숫자 1개를 입력하세요.!");
		
		if(inputNum>luckyNum){
			alert("입력한 숫자가 큽니다. 작은 숫자를 입력하세요.!");
		}else if(inputNum<luckyNum){
			alert("입력한 숫자가 작습니다. 큰 숫자를 입력하세요.!");
		}else{
			alert("정답입니다.");
			break;
		}
    }//while
}