function checkid(id,pw){
		document.write(typeof id);
		document.write(typeof pw);
	if(id=="admin"){
		alert("아이디가 동일합니다.");
		if(pw==1234){
			alert("아이디와 패스워드가 동일합니다.");
		}else{
			alert("아이디는 동일, 패스워드는 다릅니다.");
			location.reload();
		}
	}else{
		alert("아이디가 다릅니다.");
		location.reload();
	}
	
}



function test(fcnum){
	if(fcnum>0){
	  document.write('양수입니다.');
	}else{
	  document.write('음수입니다.');
	}
}


/*var num = prompt("당신이 좋아하는 숫자는?");
if(num%2==0){
	document.write("당신이 좋아하는 "+ num +" 숫자는 짝수입니다.");
}else{
	document.write("당신이 좋아하는 "+ num +" 숫자는 홀수 입니다.");
}
*/



/*var num1=10;
var num2=20;
		if(num1>num2){
			document.write(num1+" 과/와 "+num2+"에서 "+num1+" 더 큽니다.");
		}else if(num2>num1){
			document.write(num2+"과/와"+num1+"에서"+num2+"더 큽니다.");
		}else{
			document.write(num1+"과/와"+num2+"는 같습니다.");
		}*/