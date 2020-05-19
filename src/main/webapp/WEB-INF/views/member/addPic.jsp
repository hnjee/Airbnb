<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
		<div class="row">
			<form class="form-horizontal">
			
				<div class="form-group">
					<div class="col-sm-5">
						<button type="button" class="btn btn-primary btn-block"> 페이스 계정으로 로그인</button>				
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-5">
					<span id="name"></span> <input type="button" id="loginBtn" value="checking..." onclick="
					if(this.value =='Login'){
						gauth.signIn().then(function() {
							console.log('gauth.signIn()');
							checkLoginStatus();
						});
					}else{
						gauth.signOut().then(function() {
							console.log('gauth.signOut()');
							checkLoginStatus();
						});
					}
					">
					</div>
				</div>
				
				<div>
				--------------------------------------------------------- 또는 ---------------------------------------------------------
				</div>
				
				<br>
				<div class="form-group">
					<div class="col-sm-5">
						<input type="button" class="btn btn-danger btn-block" value="이메일로 회원 가입" id="JoinByEmail">				
					</div>
				</div>
				
				<div>
					이미 에어비앤비 계정이 있나요? <a>로그인</a>
				</div>
				<br><br>
				
			</form>		
		</div>
	</div>

</body>
</html>