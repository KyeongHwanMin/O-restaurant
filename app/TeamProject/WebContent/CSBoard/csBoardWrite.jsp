<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>1:1 문의 하기</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<%
	String id = (String)session.getAttribute("memId");
	if(id == null){
%>		<script>
			alert("로그인후 글쓰기 가능합니다.!!");
			window.location='/TeamProject/Login/Login.jsp';
		</script>
<%  }%>

<%
	int num=0, ref=1, re_step=0, re_level=0;

	if(request.getParameter("num")!=null){
		num=Integer.parseInt(request.getParameter("num"));
		ref=Integer.parseInt(request.getParameter("ref"));
		re_step=Integer.parseInt(request.getParameter("re_step"));
		re_level=Integer.parseInt(request.getParameter("re_level"));
	}
%>

<title> Q&A 1:1 문의 게시판 </title>

<body bgcolor="white">  
<center><b>1:1 문의 하기</b>
<br>
<form method="post" name="writeform" action="csBoardWritePro.jsp" onsubmit="return writeSave()">
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="ref" value="<%=ref%>">
<input type="hidden" name="re_step" value="<%=re_step%>">
<input type="hidden" name="re_level" value="<%=re_level%>">

<table width="600" border="1" cellspacing="0" cellpadding="0"  bgcolor="white" align="center">
   <tr>
    <td align="right" colspan="2" bgcolor="white">
	    <a href="csBoardList.jsp"> 글 목록</a>
   </td>
   </tr>
   <tr>
    <td  width="100"  bgcolor="white" align="center">작성자</td>
    <td  width="500">
        <%=id%>
        <input type="hidden" name="writer" value="<%=id%>"></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="white" align="center" >제 목</td>
    <td  width="500">
    <%if(request.getParameter("num")==null){%>
       <input type="text" size="80" maxlength="50" name="subject"></td>
	<%}else{%>
	   <input type="text" size="80" maxlength="50" name="subject" value="[RE : ]">
	<%}%>
  </tr>
  <tr>
    <td  width="100"  bgcolor="white" align="center">Email</td>
    <td  width="500">
       <input type="text" size="80" maxlength="30" name="email" ></td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="white" align="center" >내 용</td>
    <td  width="500" >
     <textarea name="content" rows="15" cols="60"></textarea> </td>
  </tr>
  <tr>
    <td  width="100"  bgcolor="white" align="center" >비밀번호</td>
    <td  width="500" >
     <input type="password" size="80" maxlength="15" name="passwd">
	 </td>
  </tr>
<tr>
 <td colspan=2 bgcolor="white" align="center">
  <input type="submit" value="글쓰기" >
  <input type="reset" value="작성취소" OnClick="window.location='csBoardList.jsp'">
  <input type="button" value="목록보기" OnClick="window.location='csBoardList.jsp'">
</td></tr></table>
</form>
</body>
</html>