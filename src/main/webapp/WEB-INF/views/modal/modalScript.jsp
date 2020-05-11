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
			$.get("./member/memberJoin", 
				{email: $('#email').val(), name:$('#name').val(), fname:$('#fname').val(), pw:$('#pw').val()},
				function(result) {
					if(result>0){
						$('.close').click();
						$('#setAgree').click();
					}
				});
		});
	</script>
