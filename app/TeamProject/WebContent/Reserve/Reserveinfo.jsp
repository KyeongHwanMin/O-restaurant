<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Reserve.ReserveDTO" %>
<%@ page import="Reserve.ReserveDAO" %>  
<%@ page import="connection.ConnectionDAO" %> 


<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dto"  class="Reserve.ReserveDTO" />
<jsp:setProperty property="*" name="dto"/>




    <%
	// 세션에 ID를 DB에서 검색 한다. 
	// 검색 결과를 DTO에 대입하여 리턴
	String guest = (String)session.getAttribute("guest");

	ReserveDAO dao = new ReserveDAO();
	

	%>	
	<h1 align="center">나의 예약정보 </h1>
	<table border="1" align="center">
	<tr>
	<td>예약자</td> <td><%=dto.getGuest()%></td></tr>
	<td>연락처</td> <td><%=dto.getTel()%></td></tr>
	<td>인원수</td> <td><%=dto.getPerson_no()%>명</td></tr>						
	<td>예약일</td> <td><%=dto.getReservation_date()%> </td></tr>
	<td>예약시간</td> <td><%=dto.getReservation_time()%> </td></tr>
	<td>층</td> <td><%=dto.getFloor()%> </td></tr>
	<td>옵션</td> <td><%=dto.getOpt()%></td></tr>
	
	</table>
   