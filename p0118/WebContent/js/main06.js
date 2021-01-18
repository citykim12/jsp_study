/**
 * 
 */

// 169858795원을 
// 5만원,1만원,5천원,1천원,오백원,백원,오십원,십원 동전을 몇개 나눠줘야 하는지
// 계산하시오.
var myCost = 169858790;
var money50000 = myCost/50000;
var temp = myCost%50000;
document.write("5만원권 : "+Math.floor(money50000),"<br>");
// 0 ~ 49999
var money10000 = temp/10000;
document.write("1만원권 : "+Math.floor(money10000),"<br>");
temp %= 10000;
var money5000 = temp/5000;
document.write("5천원권 : "+Math.floor(money5000),"<br>");
temp %= 5000;
var money1000 = temp/1000;
document.write("1천원권 : "+Math.floor(money1000),"<br>");
temp %= 1000;
var money500 = temp/500;
document.write("5백원권 : "+Math.floor(money500),"<br>");
temp %= 500;
var money100 = temp/100;
document.write("1백원권 : "+Math.floor(money100),"<br>");
temp %= 100;
var money50 = temp/50;
document.write("5십원권 : "+Math.floor(money50),"<br>");
temp %= 50;
var money10 = temp/10;
document.write("1십원권 : "+Math.floor(money10),"<br>");
temp %= 10;
