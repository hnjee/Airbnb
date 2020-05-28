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
						<button type="button" class="btn btn-primary btn-block" id="faceJoinBtn"> 페이스북 계정으로 회원가입</button>				
					</div>
				</div>
				
				<div class="form-group" style="margin-bottom:3px;">
					<div class="col-sm-5">
						<button type="button" class="btn btn-success btn-block" id="googleBtn"> 구글 계정으로 회원가입</button>				
					</div>
				</div>
				
				<div style="width: 538.5px; overflow:hidden;">
					<div style="width: 239px; float:left;"> <hr> </div>
					<span style="padding:16px; width:60.5px; height: 50px; box-sizing:border-box; Circular; font-size: 14px !important;
					    font-weight: 600 !important;
					    line-height: 1.28571em !important;
					    color: rgb(118, 118, 118) !important; margin: 0px !important; float:left;"> 또는 </span>  
					<div style="width: 239px; float:left;"> <hr> </div>
				</div>

				<div class="form-group">
					<div class="col-sm-5">
						<button type="button" class="btn btn-block" id="JoinByEmail" style="background: rgb(255, 90, 95); color: white;"> 이메일로 회원가입</button>							
					</div>
				</div>
				
				<div>
					이미 에어비앤비 계정이 있나요? <input type="button" class="_547li01" value="로그인" id="memberLogin2">	
				</div>			
			</form>		
		</div>
	</div>
	
	<script type="text/javascript">

	$('#googleBtn').click(function() {
	gapi.load('auth2', function() {
	gauth = gapi.auth2.init({
		client_id:'302238433723-r1r5tde3ngh2cgtnpijo0fb2fe2ur5tj.apps.googleusercontent.com'
	});
		gauth.signIn().then(function() {
		var profile = gauth.currentUser.get().getBasicProfile();
			$.get("./member/googleLogin", 
					{email : profile.getEmail(), name: profile.getGivenName()} ,
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