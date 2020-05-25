<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<!-- <meta http-equiv="refresh" content="1"> -->
<title>Insert title here</title>
	<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" type="text/css" href="./resources/css/searchBoxStyle.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/searchBoxStyle.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/headerStyle.css"> 
	<link rel="stylesheet" type="text/css" href="../resources/css/index_contents.css">
	<link rel="stylesheet" type="text/css"  href="../resources/css/indexFooter.css"> 
	<link rel="stylesheet" type="text/css"  href="../resources/css/footer.css">
	<script src="https://kit.fontawesome.com/f3c9922333.js" crossorigin="anonymous"></script>
	
	<style type="text/css">
		.contentsMain 		{
							width : 100%;
							height : 800px;
							margin : 50px 0 100px 0;
							border : 1px solid black;
							}	
		.contentsInner		{
							width : 1000px;
							height : 800px;
							margin : 0 auto;
							border : 1px solid black;
							}			
		.contentsInner2		{
							width : 900px;
							height : 100%;
							margin : 0 auto;
							border : 1px solid black;
							}	
		.contentsInnerBoxes{
							width : 900px;
							height : 550px;
							margin : 30px 0px 550px 0px;
							border : 1px solid black;
							}
							
		.fisrtBox > div		{
							  width: 200px;
							  height: 200px;
							  margin: 30px 0px 0px 150px;
							  border : 1px solid black;
							  display : inline-block;
							  justify-content: center;
							}
							
		.secondBox > div	{
							  width: 200px;
							  height: 200px;
							  margin: 30px 0px 0px 150px;
							  border : 1px solid black;
							  display : inline-block;
							  justify-content: center;
							}
	</style>
</head>

<body>
<c:import url="../jsp/header.jsp"></c:import>

<div class="contentsMain">
	<div class="contentsInner">
		<div class="contentsInner2">
			<div> 
			<h2>계정</h2>
			<h3>이름,이메일. 프로필 이동</h3>
			</div>
			<div class="contentsInnerBoxes">
				
				<div class="fisrtBox">
					<div onclick="">
					<i class="far fa-address-card" style="font-size:30px; color:lightblue;"></i>
					개인정보
					</div>
					<div onclick="./member/emailJoin">
					로그인 및 보안sasfdsd
					</div>
				</div>
				
				<div class="secondBox">
					<div>??</div>
					<div>??</div>
				</div>
				
			</div>
		</div>
	</div>
</div>



<c:import url="../jsp/footer.jsp"></c:import>
</body>
</html>