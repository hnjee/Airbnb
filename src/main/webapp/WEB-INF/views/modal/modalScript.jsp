<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<script type="text/javascript">

		$('#memberJoin').on('click', function() {
			$('#setMemberJoin').click();
		});
		
		$('#memberJoin2').on('click', function() {
			$('.close').click();
			$('#setMemberJoin').click();
		});
		
		$('#memberLogin').on('click', function() {
			$('#setMemberLogin').click();
		});
		
		$('#JoinByEmail').on('click', function() {
			$('.close').click();
			$('#setEmailJoin').click();
		});
		
		$('#signIn').on('click', function() {

			var chk_agree = document.getElementsByName('agree');
			var email = $('#email').val();
			var name = $('#name').val();
			var fname = $('#fname').val();
			var pw = $('#pw').val();
			
			if (email == ''){
				alert('이메일을 입력해주세요');
				return false;
			} else if(name == ''){
				alert('이름을 입력해주세요');
				return false;
			}else if(fname == ''){
				alert('성을 입력해주세요');
				return false;
			}else if(pw == ''){
				alert('비밀번호를 입력해주세요');
				return false;
			} 
			
			if (chk_agree[0].checked == false){
				alert ('개인정보수집에 동의해주세요' );	
				return false; 
			}

			$.get("./member/memberJoin", 
				{email: $('#email').val(), name:$('#name').val(), fname:$('#fname').val(), pw:$('#pw').val()},
				function(result) {
					if(result>0){
						$('.close').click();

						location.reload();
					}
				});
		});
		
		$('#logOut').on('click', function() {
			gauth.signOut().then(function() {
				console.log('gauth.signOut()');
				checkLoginStatus();
				location.reload();
			});
		});
		

	</script>
