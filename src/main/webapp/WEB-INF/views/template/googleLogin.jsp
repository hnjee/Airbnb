<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

$('#googleBtn').click(function() {
	console.log('init');
	gapi.load('auth2', function() {
	console.log('auth2');	 
	gauth = gapi.auth2.init({
		client_id:'302238433723-r1r5tde3ngh2cgtnpijo0fb2fe2ur5tj.apps.googleusercontent.com'
	});
	gauth.then(function() {
		checkLoginStatus();
	});
	});
});
	
	function checkLoginStatus() {
		var loginBtn = document.querySelector('#googleBtn');
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
		}
	}



</script>
</html>