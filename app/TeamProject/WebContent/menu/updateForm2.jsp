<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "menuboard.BoardDBBean" %>
<%@ page import = "menuboard.BoardDataBean" %>

<%@ include file="color.jsp"%>

<style>
ul{}
li{margin-bottom:10px;}
 li.mystyle{list-style-type:none; float:left; outline:1px line black; margin-right:10px;padding:20px;text-align:center;}
#STATICMENU { position:absolute; margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
</style>

<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	

	BoardDBBean dbPro = new BoardDBBean();
	BoardDataBean article =  dbPro.getArticle(num);
  

%>
<body bgcolor="<%=bodyback_c%>" >

<center><b>글내용 보기</b>
<br>
<form action="updatePro.jsp" method="post" enctype="multipart/form-data">
<table width="500" border="1" cellspacing="0" cellpadding="0"  bgcolor="<%=bodyback_c%>" align="center">  
	<tr height="30">
		
	    <td align="center" width="125" bgcolor="<%=value_c%>"><img src="<%=article.getFileimage() %>"></td>
	    
  </tr>
  <tr height="30">
	    <td><input type="hidden" name="num" value="<%=num %>"> </td>
	</tr>  
	<tr height="30">
	    <td align="center" width="125" bgcolor="<%=value_c%>"><input type="text" name="subject" value="<%=article.getSubject() %>" ></td>
	</tr>  	 
  <tr height="30">
	    <td align="center" width="125" bgcolor="<%=value_c%>"><textarea cols="80" rows="10" name="content" ><%=article.getContent() %></textarea></td>
	</tr>  	    
 
</table>

<table>
<tr height="30">

 <td td align="right" width="125" bgcolor="<%=value_c%>"><input type="file" name="file" value="파일"/></td>
 
 </tr>
<tr height="30">
 <td td align="center" width="125" bgcolor="<%=value_c%>"><input type="submit" value="수정"/></td>
 <td td align="center" width="125" bgcolor="<%=value_c%>"><input type="button" value="취소" onclick="window.location='updateForm_list.jsp'"/></td>
 </tr>
</table>
</form>
</body>
</html>      