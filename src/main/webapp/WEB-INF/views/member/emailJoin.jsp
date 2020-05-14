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
				
				
				<div class="form-group">
					<div class= "col-sm-5">
						<div class="checkbox">
							<label><input type="checkbox" name="agree" value="agree">
							(필수)에어비앤비 서비스 약관 ,결제 서비스 약관,차별 금지 정책에 동의합니다.또한, 에어비앤비 개인정보 처리방침에 따른 개인정보 이용 및 처리에도 동의합니다.
							</label>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-8">
						<input type="button" class="btn btn-danger btn-block" value="가입하기" id="signIn">
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