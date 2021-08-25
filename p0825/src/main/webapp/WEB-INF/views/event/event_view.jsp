<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<title> JARDIN SHOP </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>

<script type="text/javascript">
  //댓글취소
  function commentCancel(cno,id,ccontent,cdate){
	  alert("댓글취소 : "+cno);
	  
	  var html="";
	  html += '<li class="name">'+id+'<span>['+cdate+']</span></li>';
	  html += '<li class="txt">'+ccontent+'</li>';
	  html += '<li class="btn">';
	  html += '<a onclick="commentModify('+cno+',\''+id+'\',\''+ccontent+'\',\''+cdate+'\')" class="rebtn">수정</a>';
	  html += '<a href="#" class="rebtn">삭제</a>';
	  html += '</li>';
	
	  $("#"+cno).html(html);
	  
	  
  }//댓글취소끝
  
  
  //댓글수정
  function commentModifyOk(c_cno,c_id){
	  alert("댓글수정"+$("#modifyCcontent").val());
	  
	  $.ajax({
			url:"/commentModify",
			type:"post",
			data:{  //넘길 데이터
				//cno : c_cno
				//bid : view(bid)로 넘어옴
				//id : session_id에서 가져옴
				cno:c_cno,
				bid:111,
				id:c_id,
				ccontent:$("#modifyCcontent").val()
			},
			success:function(data){   //성공시 updateEventVo
			  var html="";
			  html += '<li class="name">'+data.id+'<span>['+data.cdate+']</span></li>';
			  html += '<li class="txt">'+data.ccontent+'</li>';
			  if('aaa'==data.id){
				  html += '<li class="btn">';
			      html += '<a onclick="commentModify('+data.cno+',\''+data.id+'\',\''+data.ccontent+'\',\''+data.cdate+'\')" class="rebtn">수정</a>';
				  html += '<a href="#" class="rebtn">삭제</a>';
				  html += '</li>';
			  }
			
			  $("#"+c_cno).html(html);
			
			},
			error:function(){  //실패시
				alert("error");
			}
		  });
  }
  
  
  //댓글수정창변경
  function commentModify(cno,id,ccontent,cdate){
	  alert("댓글수정창변경"+cno);
	  var html = "";
	  html += "<li class='name'>"+id+"<span>["+cdate +"]</span></li>";
	  html += "<li class='txt'><textarea class='replyType' id='modifyCcontent'>"+ccontent+"</textarea></li>";
	  html += "<li class='btn'>";
	  html += "<a onclick='commentModifyOk("+cno+",\""+ id +"\")' class='rebtn'>저장</a>";
	  html += "<a onclick='commentCancel("+cno+",\""+ id +"\",\""+ccontent+"\",\""+ cdate +"\")' class='rebtn'>취소</a>";
	  html += "</li>";
	  
	  $("#"+cno).html(html);
  }
  
  
  //댓글등록
  function commentBtn(){
	  alert("댓글등록");
	  $.ajax({
		url:"/commentWrite",
		type:"post",
		data:{  //넘길 데이터
			//cno : 자동저장
			//bid : view(bid)로 넘어옴
			//id : session_id에서 가져옴
			bid:111,
			id:"aaa",
			cpw:$("#cpw").val(),
			ccontent:$("#ccontent").val()
		},
		success:function(data){   //성공시 insertEventVo
		  var html="";
		  html += '<ul>';
		  html += '<li class="name">'+data.id+'<span>['+data.cdate+']</span></li>';
		  html += '<li class="txt">'+data.ccontent+'</li>';
		  if('aaa'==data.id){
			  html += '<li class="btn">';
			  html += '<a onclick="commentModify('+cno+',\''+id+'\',\''+ccontent+'\',\''+cdate+'\')" class="rebtn">수정</a>';
			  html += '<a href="#" class="rebtn">삭제</a>';
			  html += '</li>';
		  }
		  html += '</ul>';
		
		  $(".replyBox").prepend(html);
		  $("#cpw").val("");
		  $("#ccontent").val(""); 
		
		},
		error:function(){  //실패시
			alert("error");
		}
	  });
  }

</script>
</head>
<body>
<div id="allwrap">
<div id="wrap">

	<div id="header">
		
		<div id="snbBox">
			<h1><img src="../images/txt/logo.gif" alt="JARDIN SHOP" /></h1>
			<div id="quickmenu">
				<div id="mnaviOpen"><img src="../images/btn/btn_mnavi.gif" width="33" height="31" alt="메뉴열기" /></div>
				<div id="mnaviClose"><img src="../images/btn/btn_mnavi_close.gif" width="44" height="43" alt="메뉴닫기" /></div>
				<ul>
					<li><a href="#">EVENT</a></li>
					<li><a href="#">CUSTOMER</a></li>
					<li><a href="#">COMMUNITY</a></li>
				</ul>
			</div>
			<div id="snb">
				<ul>
					<li><a href="#">LOGIN</a></li>
					<li><a href="#">JOIN</a></li>
					<li><a href="#">MY PAGE</a></li>
					<li><a href="#">CART</a></li>
				</ul>

				<div id="search">
					<input type="text" class="searchType" />
					<input type="image" src="../images/btn/btn_main_search.gif" width="23" height="20" alt="검색하기" />
				</div>
			</div>
		</div>
	</div>


	<!-- GNB -->
	<div id="gnb">
		
		<div id="top">
			<ul>
				<li class="brand t1"><a href="#" id="topNavi1">JARDIN’s BRAND</a>
					<ul id="topSubm1">
						<li><a href="#">클래스</a></li>
						<li><a href="#">홈스타일 카페모리</a></li>
						<li><a href="#">드립커피백</a></li>
						<li><a href="#">카페리얼 커피</a></li>
						<li><a href="#">오리지널커피백</a></li>
						<li><a href="#">카페리얼 음료</a></li>
						<li><a href="#">마일드커피백</a></li>
						<li><a href="#">워터커피</a></li>
						<li><a href="#">카페포드</a></li>
						<li><a href="#">모히또파티</a></li>
						<li><a href="#">테이크아웃 카페모리</a></li>
						<li><a href="#">포타제</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi2">원두</a>
					<ul id="topSubm2">
						<li><a href="#">클래스</a></li>
						<li><a href="#">로스터리샵</a></li>
						<li><a href="#">커피휘엘</a></li>
						<li><a href="#">산지별 생두</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi3">원두커피백</a>
					<ul id="topSubm3">
						<li><a href="#">드립커피 로스트</a></li>
						<li><a href="#">오리지널커피백</a></li>
						<li><a href="#">마일드커피백</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi4">인스턴트</a>
					<ul id="topSubm4">
						<li><a href="#">까페모리</a></li>
						<li><a href="#">홈스타일카페모리</a></li>
						<li><a href="#">포타제</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi5">음료</a>
					<ul id="topSubm5">
						<li><a href="#">까페리얼</a></li>
						<li><a href="#">워터커피</a></li>
						<li><a href="#">모히또</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi6">커피용품</a>
					<ul id="topSubm6">
						<li><a href="#">종이컵</a></li>
						<li><a href="#">커피필터</a></li>
						<li><a href="#">머신 등</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi7">선물세트</a></li>
				<li class="t2"><a href="#" id="topNavi8">대량구매</a></li>
			</ul>
		</div>

		<script type="text/javascript">initTopMenu();</script>
	</div>
	<!-- //GNB -->

	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="#">HOME</a></li>
				<li><a href="#">EVENT</a></li>
				<li class="last">진행중 이벤트</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">EVENT<span>이벤트</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">진행중 이벤트</a></li>
					<li><a href="#" id="leftNavi2">종료된 이벤트</a></li>
					<li class="last"><a href="#" id="leftNavi3">당첨자 발표</span></a></li>
				</ul>			
			</div><script type="text/javascript">initSubmenu(1,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>진행중 이벤트</strong><span>쟈뎅샵의 특별한 혜택이 가득한 이벤트에 참여해 보세요.</span></h2>
					
					<div class="viewDivMt">
						<div class="viewHead">
							<div class="subject">
								<ul>
									<li>까페모리 봄바람 커피한잔 30% 할인 이벤트!!</li>
								</ul>
							</div>
							<div class="day">
								<p class="txt">이벤트 기간<span>2014-04-01 ~ 2014-04-29</span></p>
							</div>
						</div>

						<div class="viewContents">
							<img src="../images/img/sample_event_view.jpg" alt="" />
						</div>
					</div>


					<!-- 이전다음글 -->
					<div class="pnDiv web">
						<table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext" border="1" cellspacing="0">
							<caption>이전다음글</caption>
							<colgroup>
							<col width="100px" />
							<col width="*" />
							<col width="100px" />
							</colgroup>
							<tbody>
								<tr>
									<th class="pre">PREV</th>
									<td><a href="#">상품 재입고는 언제 되나요?</a></td>
									<td>&nbsp;</td>
								</tr>

								<tr>
									<th class="next">NEXT</th>
									<td>다음 글이 없습니다.</td>
									<td>&nbsp;</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //이전다음글 -->







					<!-- 댓글-->
					
					<!-- 댓글등록 시작 -->
					<div class="replyWrite">
						<ul>
							<li class="in">
								<p class="txt">총 <span class="orange">${map.commentCount}</span> 개의 댓글이 달려있습니다.</p>
								<p class="password">비밀번호&nbsp;&nbsp;<input type="password" class="replynum" id="cpw" name="cpw" /></p>
								<textarea class="replyType" id="ccontent" name="ccontent"></textarea>
							</li>
							<li class="btn"><button type="button" onclick="commentBtn()" class="replyBtn">등록</a></li>
						</ul>
						<p class="ntic">※ 비밀번호를 입력하시면 댓글이 비밀글로 등록 됩니다.</p>
					</div>
					<!-- // 댓글등록 끝 -->

                    <!-- 댓글내용 -->
					<div class="replyBox">
					      <!-- 댓글추가되는 부분 -->
					
					
                           <c:forEach items="${map.list}" var="eventVo">
							<ul id='${eventVo.cno}'>
								<li class="name">${eventVo.id } <span>[${eventVo.cdate}]</span></li>
								<li class="txt">${eventVo.ccontent}</li>
								<c:if test="${'aaa' == eventVo.id}">
									<li class="btn">
										<a onclick="commentModify('${eventVo.cno}','${eventVo.id }','${eventVo.ccontent}','${eventVo.cdate}')" class="rebtn">수정</a>
										<a href="#" class="rebtn">삭제</a>
									</li>
								</c:if>
							</ul>
                           </c:forEach>
					</div>
					<!-- //댓글내용 끝 -->
					
					<!-- //댓글 -->
					
					
					
					
					
					

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bRight">
							<ul>
								<li><a href="#" class="sbtnMini mw">목록</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
				</div>
			</div>
			<!-- //contents -->


<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery.fancybox-1.3.4.css" />
<script type="text/javascript">
$(function(){
	
	var winWidth = $(window).width();
	if(winWidth > 767){
		var layerCheck = 540;
	}else{
		var layerCheck = 320;
	}

	$(".passwordBtn").fancybox({
		'autoDimensions'    : false,
		'showCloseButton'	: false,
		'width' : layerCheck,
		'padding' : 0,
		'type'			: 'iframe',
		'onComplete' : function() {
			$('#fancybox-frame').load(function() { // wait for frame to load and then gets it's height
			$('#fancybox-content').height($(this).contents().find('body').height());
			});
		}
	});


});
</script>

		</div>
	</div>
	<!-- //container -->




	<div id="footerWrap">
		<div id="footer">
			<div id="fnb">
				<ul>
					<li class="left"><a href="#">개인정보취급방침</a></li>
					<li><a href="#">이용약관</a></li>
					<li class="left"><a href="#">이메일무단수집거부</a></li>
					<li><a href="#">고객센터</a></li>
					<li class="left brand"><a href="#">쟈뎅 브랜드 사이트</a></li>
				</ul>
			</div>
			
			<div id="finfo">
				<div id="flogo"><img src="../images/txt/flogo.gif" alt="JARDIN THE COFFEE CREATOR, SINCE 1984" /></div>
				<address>
					<ul>
						<li>㈜쟈뎅</li>
						<li>대표자 윤영노</li>
						<li class="tnone">주소 서울시 강남구 논현동 4-21번지 영 빌딩</li>
						<li class="webnone">소비자상담실 02)546-3881</li>
						<li>사업자등록번호 211-81-24727</li>
						<li class="tnone">통신판매신고 제 강남 – 1160호</li>
						<li class="copy">COPYRIGHT © 2014 JARDIN <span>ALL RIGHTS RESERVED.</span></li>
					</ul>
				</address>

				<div id="inicis"><img src="../images/ico/ico_inicis.png" alt="이니시스 결제시스템" /></div>
			</div>
		</div>
	</div>



</div>
</div>
</body>
</html>