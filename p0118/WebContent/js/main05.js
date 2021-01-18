var today = new Date();
var nowYear = today.getFullYear(); //2021년,...
document.write(nowYear);

var dDay = new Date(nowYear,11,31); //2021.12.31 - 시간으로 환산
// 월은 0부터 시작해서 11->12월이 됨.
var dTime = dDay.getTime()-today.getTime(); //2021.12.31시간 - 2021.1.18시간 : 시간은 밀리세컨드
document.write("2021년 마지막날 시간 : "+dDay.getTime(),"<br>");             
document.write("2021년 현재 시간 : "+today.getTime(),"<br>");   
document.write("남은시간 : "+dTime,"<br>");   
document.write("남은 날짜 : "+dTime/(1000*60*60*24),"<br>");  
// 예) 346일 12시간 36분 12초 가 남았습니다. 
//힌트) 나눗셈 연산자과 나머지 연산자를 사용하면 됨. 11/4 - 2, 3
          



/*var today = new Date();
var nowMonth = today.getMonth();  //1월,2월,...
var nowDate = today.getDate(); //1일,2일,...
var nowDay = today.getDay();  //월요일,화요일,...

document.write("<h1>오늘 날짜 정보</h1>");
document.write("현재 월 : "+(nowMonth+1),"<br>"); //0부터 시작 1을 추가해야 함.
document.write("현재 일 : "+nowDate,"<br>");
var nowWeek;
switch(nowDay){
	case 1:
	nowWeek = "월요일";
	
}


document.write("현재 요일 : "+nowWeek,"<br>"); //1:월요일, 2:화요일 */
