<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#signIn 	{
			width: 60%;
			}
</style>
</head>
<body>
<div class="container">
		<div> <a>페이스북</a> 또는 <a>구글</a>로 회원 가입하세요.</div>
		<div>
		--------------------------------------------------------- 또는 ---------------------------------------------------------
		</div>
		<div class="row">
			<form class="form-horizontal" >
				
				<div class="form-group" >
					<div class="col-sm-5">
						<input type="email" class="form-control" id="email" placeholder="이메일 주소" name="email">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-5">
						<input type="text" class="form-control" id="name" placeholder="이름(예: 길동)" name="name">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-5">
						<input type="text" class="form-control" id="fname" placeholder="성(예: 홍)" name="fname">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-5">
						<input type="password" class="form-control" id="pw" placeholder="비밀번호 설정하기" name="pw">
					</div>
				</div>
				
				<div>
				<div>
				<b>생일</b><br>
				만 18세 이상의 성인만 회원으로 가입할 수 있습니다. 생일은 다른 에어비앤비 <br>이용자에게 공개되지 않습니다.
				</div><br>
				<div>에어비앤비의 회원 정용 할인, 추천 여행 정보, 프로모션 및 정책 변경사항을 이메일로<br> 보내드립니다. 계정 관리의 환경설정
				또는 프로모션 알림에서 언제든지 메시지 수신을<br> 거부할 수 있습니다.<br></div>
				</div>
				<div class="form-group">
					<div class= "col-sm-5">
						<div class="checkbox">
							<label><input type="checkbox" name="remember" value="remember">에어비앤비에서 보내는 마케팅 메시지를 받고 싶지 않습니다.</label>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-8">
						<input type="button" class="btn btn-danger btn-block" value="가입하기" id="signIn">
<!-- 						<button type="submit" class="btn btn-danger btn-block" id="signIn">가입하기</button> -->
					</div>
				</div>
				
				<div>
				----------------------------------------------------------------------------------------------------------------------
				</div>
				
				<div>
				이미 에어비앤비 계정이 있나요? <a>로그인</a>
				</div>
				
			</form>
		</div>
	</div>
</body>
</html>