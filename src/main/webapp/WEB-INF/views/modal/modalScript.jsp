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

		$('#memberLogin2').on('click', function() {
			$('.close').click();
			$('#setMemberLogin').click();
		});

		$('#JoinByEmail').on('click', function() {
			$('.close').click();
			$('#setEmailJoin').click();
		});
		
		$('#logOut').on('click', function() {
			gauth.signOut().then(function() {
				location.reload();
			});
		});
		

	</script>
