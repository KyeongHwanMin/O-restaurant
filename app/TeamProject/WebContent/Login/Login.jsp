<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<h1>로그인 페이지</h1>

<form name="login" action="LoginPro.jsp" method="post">
로그인 해주세요.		
				<div class="data">
					<label>Email아이디</label>
					 <input type="text" name="id" placeholder="아이디 입력" required>
				</div>
				<div class="data">
					<label>비밀번호</label>
					<input type="password" name="pw1" placeholder="비밀번호 10~15자리" required>
				</div>
				<div>
				<input type="submit" value="로그인">
				<a href="forgotpass.jsp">비밀번호를 잊으셨나요?</a>
				<a href = "MemberReg.jsp"> 회원가입</a> <br></br>
				</div>
</form>
			

