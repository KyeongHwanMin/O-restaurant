<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%
// https://amaze9001.tistory.com/69
// https://lcw126.tistory.com/153
// https://uxgjs.tistory.com/202
String id = (String)session.getAttribute("memId");
%>
<script>
	document.onkeydown = trapRefresh;
	function trapRefresh()
	{
		if(event.keyCode == 116){
			event.keyCode = 0;
			event.cancelBubble = true;
			event.returnValue = false;
			document.iframe1.location.reload();
		}
	}
	 
</script>
<script>
function NotScrollTop0__init() {
    let scrollTop = $(window).scrollTop();
    
    if ( scrollTop > 0 ) {
        $('html').addClass('not-scroll-top-0');
    }
    else {
        $('html').removeClass('not-scroll-top-0');
    }
}

$(window).scroll(NotScrollTop0__init);
NotScrollTop0__init();
</script>
<head><title>오식당</title>
    <style type="text/css">
	#STATICMENU { position:absolute; width:100%;font-size:20; margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px; background-color:rgba(255,255,255,0.5);
}
</style>
<link rel="stylesheet" href="./test2.css">
</head>
<body onload="popupLoad()"  >


<header><a href="/TeamProject/Top/TopPage.jsp"><img src="/TeamProject/Images/Mainlogo.png" width='170'  height='170' ></a></header>
<table align="right" >
		<tr>
		<%if(id==null){ %>
		<td class="t1" align="right"><a href="/TeamProject/Login/Login.jsp" style="color:orange; font-size:1.0em;" >로그인/회원가입</a></td>
		<%}%>
		<%if(id != null){%>
		<td class="t2" align="right" ><a href="/TeamProject/Mypage/MypageForm.jsp" style="color:orange; font-size:1.0em;" >내정보</a></td>
		<td class="t2_1" align="right"  ><a href="/TeamProject/Login/Logout.jsp"  style="color:orange; font-size:1.0em;">로그아웃</a></td>
		<%}%>
		</tr>
	</table>

<div class="top-bar text-align-center line-height-0-ch-only ">
    <nav class="menu-box-1 inline-block">
        <ul class="row">
            <li class="cell">
				 <a href="/TeamProject/lobby/lobby.jsp"target="iframe1" class="block">메인화면</a>
    				<ul>
                    <li><a href="#" class="block"> 1</a></li>
                    
                </ul>
     		</li>
     		<li class="cell">
     			<a href="/TeamProject/intro/ceointro.jsp" target="iframe1"class="block">가게 소개</a>
    				<ul>
                    <li><a href="/TeamProject/intro/location.jsp" target="iframe1"class="block">찾아<br>오시는 길</a></li>
                    <li><a href="/TeamProject/intro/ceointro.jsp" target="iframe1">식당 소개</a></li>
                   
                </ul>
     		</li>
     		<li class="cell">
     			<a href="/TeamProject/menu/Korean.jsp?id=<%=id %>" target="iframe1"class="block">메뉴 소개</a>
    				<ul>
                    <li><a href="/TeamProject/menu/Korean.jsp?id=<%=id %>" target="iframe1" class="block">한식</a></li>
                    <li><a href="/TeamProject/menu/japanese.jsp?id=<%=id %>" target="iframe1" class="block">일식</a></li>
                    <li><a href="/TeamProject/menu/western.jsp?id=<%=id %>" target="iframe1" class="block">양식</a></li>
                    
                </ul>
     		</li>
     		<li class="cell">
     			<a href="/TeamProject/event/cardlist.jsp" target="iframe1"class="block">이벤트 게시판</a>
    				<ul>
                    <li><a href="/TeamProject/event/list.jsp" target="iframe1">진행중인<br>이벤트</a></li>
                  
                </ul>
     		</li>
     		<li class="cell">
     			<a href="/TeamProject/latterBoard/imageList.jsp" target="iframe1"class="block">후기 게시판</a>
    				<ul>
                    <li><a href="#" class="block">2차 메뉴 아이템 1</a></li>
                    
                </ul>
     		</li>
     		<li class="cell">
     			<a href="/TeamProject/Reserve/ReserveForm.jsp" target="iframe1"class="block">예약하기</a>
    				<ul>
                    <li><a href="#" class="block">2차 메뉴 아이템 1</a></li>
                   
                </ul>
     		</li>
     		<li class="cell">
     			<a href="/TeamProject/QABoard/qaBoardList.jsp" target="iframe1"class="block">문의사항</a>
    				<ul>
                    <li><a href="/TeamProject/QABoard/qaBoardList.jsp" target="iframe1">자주묻는질문</a></li>
                    <li><a href="/TeamProject/CSBoard/csBoardList.jsp" target="iframe1">문의접수</a></li>
                  
                </ul>
     		</li>             	            
  </ul>
</nav>
	<div class="menu-box-1-bg"></div>
    <div class="sub-menu-bar-bg"></div>
</div>


<div class="body2">
		<iframe name="iframe1" src="/TeamProject/intro/ceointro.jsp" frameborder="0" width="100%" height="1100"></iframe>
</div>


</body>
</html>
<script>
<%-- 팝업페이지 --%>

function popupLoad() {
	if(!document.cookie.includes("todayPop")) { //todayPop 쿠키를 갖고 있지 않으면 팝업을 실행
		window.open('/TeamProject/PopUp/popupform.jsp','','width=410px, height=580px');
	}
}
</script>




<!-- 
<div class="footer">
<table  width="100%" height="10%" >
<tr style="font-size:1.5em;"><td >소개페이지</td><td>메뉴</td><td>후기 게시판</td><td>이벤트</td><td>문의 게시판</td></tr>
<tr ><td><a href="/TeamProject/intro/location.jsp" target="iframe1" >찾아오시는 길</a></td><td><a href="/TeamProject/menu/Korean.jsp?id=<%=id %>" target="iframe1">한식</a></td><td><a href="/TeamProject/latterBoard/imageList.jsp?id=<%=id %>" target="iframe1">후기게시판</a></td><td><a href="/TeamProject/event/list.jsp" target="iframe1">진행중인 이벤트</a></td><td><a href="/TeamProject/QABoard/qaBoardList.jsp" target="iframe1">자주묻는질문</a></td></tr>
<tr><td><a href="/TeamProject/intro/ceointro.jsp" target="iframe1">식당 소개</a></td><td><a href="/TeamProject/menu/japanese.jsp?id=<%=id %>" target="iframe1">일식</a></td><td></td><td></td><td><a href="/TeamProject/CSBoard/csBoardList.jsp" target="iframe1">문의접수</a></td></tr>
<tr><td></td><td><a href="/TeamProject/menu/western.jsp?id=<%=id %>" target="iframe1">서양식</a></td><td></td><td></td><td></td></tr>

</table>
</div>
 -->



