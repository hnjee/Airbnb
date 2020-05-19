<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function checkLoginStatus() {

		var loginBtn = document.querySelector('#googleBtn');
		var loginBtn = document.querySelector('#loginBtn');
		var nameTxt = document.querySelector('#name');
		if(gauth.isSignedIn.get()){
			console.log('logined');
			loginBtn.value = 'Logout';
			var profile = gauth.currentUser.get().getBasicProfile();

			console.log(profile.getEmail());
			console.log(profile.getGivenName());
			console.log(profile.getFamilyName());
			console.log(profile.getImageUrl());
			
			$.get("./member/googleLogin", 
					{email : profile.getEmail(), name: profile.getGivenName(), fname:profile.getFamilyName()} ,
					function(result) {
					});
				$('.close').click();
		}else{
			$.get("./member/memberLogout",
					function(result) {
					});
			console.log('logouted');
			loginBtn.value = '구글 아이디로 회원가입';
			$('.close').click();
			console.log(profile.getName());
			nameTxt.innerHTML = 'Welcome <strong>'+profile.getName()+'</strong>';
		}else{
			console.log('logouted');
			loginBtn.value = 'Login';
			nameTxt.innerHTML = '';
		}
	}
	function init() {
	console.log('init');
		gapi.load('auth2', function() {
		console.log('auth2');	 
		gauth = gapi.auth2.init({
			client_id:'302238433723-r1r5tde3ngh2cgtnpijo0fb2fe2ur5tj.apps.googleusercontent.com'
		});
		gauth.then(function() {
			console.log('googleAuth success');
			checkLoginStatus();
		}, function() {
			console.log('googleAuth fail');
			});
		});
	}


</script>
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

					<%-- <input type="button" id="loginBtn" value="checking..." onclick=" --%>
						<input class = "btn btn-success btn-block"type="button" id="googleBtn" value="checking..." onclick="
					if(this.value =='구글 아이디로 회원가입'){
						gauth.signIn().then(function() {
							console.log('gauth.signIn()');
							checkLoginStatus();
							location.reload();

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

							location.reload();

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
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</body>

</html>