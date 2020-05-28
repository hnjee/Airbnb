<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

._12j61cy {
    text-align: center !important;
    overflow: hidden !important;
}

._1ish1khj::before {
    border-bottom-width: var(--border-rule-border-width, 1px) !important;
    border-bottom-color: #e4e4e4 !important;
}

._1ish1khj::after {
    border-bottom-width: var(--border-rule-border-width, 1px) !important;
    border-bottom-color: #e4e4e4 !important;
}


</style>

</head>
<body>
	<div class="container">
		<div class="row">
			<form class="form-horizontal" action="./member/memberLogin" method="post">
				<div class="form-group" >
					<div class="col-sm-5">
						<button type="button" class="btn btn-primary btn-block" id="faceLoginBtn"> 페이스북계정으로 로그인</button>
					</div>
				</div>

				<div class="form-group" style="margin-bottom:3px;">
					<div class="col-sm-5">
						<button type="button" class="btn btn-success btn-block" id="googleBtn2" > 구글 계정으로 로그인</button>
					</div>
				</div>

				<div style="width: 538.5px;overflow:hidden;">
					<div style="width: 239px; float:left;"> <hr> </div>
					<span style="padding:16px; width:60.5px; height: 50px; box-sizing:border-box; Circular; font-size: 14px !important;
					    font-weight: 600 !important;
					    line-height: 1.28571em !important;
					    color: rgb(118, 118, 118) !important; margin: 0px !important; float:left;"> 또는 </span>  
					<div style="width: 239px; float:left;"> <hr> </div>
				</div>
				
				<div class="form-group" >
					<div class="col-sm-5">
						<input type="text" class="form-control" id="email" placeholder="이메일 주소" name="email">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-5">
						<input type="password" class="form-control" id="pw" placeholder="비밀번호" name="pw">
					</div>
				</div>

				<div class="form-group">
					<div class= "col-sm-5">
						<div class="checkbox">
							<label><input type="checkbox" name="remember" value="remember">비밀번호 저장</label>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-5">
						<button type="submit" class="btn btn-block" id="loginBtn" style="background: rgb(255, 90, 95); color: white;"> 로그인</button>
					</div>
				</div>
				</form>
				
				<div style="margin-top: 16px; margin-bottom: 16px; width: 538.5px;overflow:hidden;">
					<div style="border-bottom: 1px solid #EBEBEB !important;"></div>
				</div>

				<div>
				에어비앤비 계정이 없으세요?<input type="button" class="_547li01" value="회원 가입" id="memberJoin2" >
				</div>

		</div>
	</div>
	<script type="text/javascript">
	$('#googleBtn2').click(function() {
		gapi.load('auth2', function() {
		gauth = gapi.auth2.init({
			client_id:'302238433723-r1r5tde3ngh2cgtnpijo0fb2fe2ur5tj.apps.googleusercontent.com'
		});
			gauth.signIn().then(function() {
			var profile = gauth.currentUser.get().getBasicProfile();
				$.get("./member/googleLogin",
						{email : profile.getEmail(), name: profile.getGivenName(), familyName:profile.getFamilyName()} ,
						function(result) {
							location.reload();
							$('.close').click();
						});
			});
		});
	});



	</script>


</body>
</html>
