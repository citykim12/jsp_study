function while_ch(num){
	document.write(typeof num);
	num = parseInt(num);
	for(var i=0;i<num;i++){
		document.write(typeof num);
		document.write(i);
	}
	/*while(num<10){
	document.write(typeof num);
		document.write(num);
		num++;
	}*/
	document.write("입력한 숫자 : "+num );
}


function switch_ch(num){
	console.log(typeof num);
	var num1 = parseInt(num);
	console.log(typeof num1);
	switch(num1){
		case 1:
		document.write('구글로 이동합니다.');
		location.href="http://www.google.co.kr";
		break;
		case 2:
		document.write('다음으로 이동합니다.');
		break;
		case 3:
		document.write('네이버로 이동합니다.');
		break;
		default:
		break;
	}
	
}