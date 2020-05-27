<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="../resources/css/myPage.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/headerStyle.css">
<c:import url="../template/boot.jsp"></c:import>
<link rel="stylesheet" type="text/css"
	href="../resources/css/indexFooter.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
	<style type="text/css">
		.content {
			width:100%;
			min-height: 720px;
			height:100%;
		}
		.contents {
			width:85%;
			height : 100%;
			min-width: 1000px;
			min-height: 600px;
			margin: 0 auto;
			padding: 0 35px;
			box-sizing: border-box;
			
		}
		.back{
			width: 100%;
			min-height: 600px;
			background-image: url("../resources/w3images/back.png");
			background-repeat: no-repeat;
			background-position: center;
		}
		
		
	</style>
	
</head>
<body>
<c:if test="${empty member}">

	<script type="text/javascript">
		$(document).ready(function() {
			alert("로그인 후 이용해주세요.");
			location.href="../";
		})
	</script>

</c:if>

<c:if test="${not empty member}">
<c:import url="../jsp/header.jsp"></c:import>
<div class="content">
	
	<div class="contents">
		<div class="q">
			<h3><b>호스트에게 연락하기</b></h3>
			<h4>${host.receiveName} 님에게 문의할 사항이 있나요?</h4>
		</div>
 		<div class="host"></div>
		
		<div class="back">
		<form action="../message/send" method="post">
				<input type="text" name="s_memberNum" value="${member.memberNum }" hidden="true">
				<input type="text" name="sendName" value="${member.name }" hidden="true">
				<input type="text" name="r_memberNum" value="${host.r_memberNum }" hidden="true">
				<input type="text" name="receiveName" value="${host.receiveName }" hidden="true">
			    <div class="form-group">
			      <textarea class="form-control" rows="5" id="comment" placeholder="여기에 메세지를 입력하세요" required="required" name="message"></textarea>
			    </div>
			    <input type="submit" class="btn btn-primary" value="메시지 전송하기" width="250px" height="100px" style="float: right">
		</form>
		</div>
	</div>
</div>

<hr>
<c:import url="../jsp/footer.jsp"></c:import>
</c:if>

<script type="text/javascript">
	$(".btn").click(function() {
		alert("메시지 전송 성공");
	})
</script>
</body>
</html>