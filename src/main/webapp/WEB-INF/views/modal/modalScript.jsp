<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
		$('#memberJoin').on('click', function() {
			$('#setMemberJoin').click();
		});
		
		$('#JoinByEmail').on('click', function() {
			$('.close').click();
			$('#setEmailJoin').click();
		});
		
		$('#signIn').on('click', function() {

			var chk_agree = document.getElementsByName('agree');
			if (chk_agree[0].checked == false){
				alert ('개인정보수집에 동의해주세요' );	
				return false; 
			}

			$.get("./member/memberJoin", 
				{email: $('#email').val(), name:$('#name').val(), fname:$('#fname').val(), pw:$('#pw').val()},
				function(result) {
					if(result>0){
						$('.close').click();

// 						$('#setPicAdd').click();
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
		

						$('#setAgree').click();
					}
				});
		});

	</script>
