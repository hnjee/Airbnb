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
		
		h2{
			text-align: center;
		}
	</style>
	
</head>
<body>
<c:import url="../jsp/header.jsp"></c:import>
<div class="content">
	
<div class="contents">

  <h2><b>결제가 완료되었습니다</b></h2>
  
		
		<div class="back">
		
			
		
		
		</div>
	</div>
</div>

<hr>
<c:import url="../jsp/footer.jsp"></c:import>
</body>
</html>