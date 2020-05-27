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
		
		.finish{
			box-sizing: border-box;
			background-color: #ffffff;
       		background-color: rgba( 245, 245, 245, 0.5 );
		}
		.explain {
			width: 60%;
			min-width:480px;
			height: 300px;
			
		}
		.price{
			font-size: 1.4em;
			text-decoration: underline;
			color: maroon;
		}
		.out {
			font-size: 1.2em;
			color : olive;
			text-align: right;
		}
		
	</style>
	
</head>
<body>
<c:import url="../jsp/header.jsp"></c:import>
<div class="content">
	
<div class="contents">

  <h2><b>결제가 완료되었습니다</b></h2>
  <hr>
  
 
	
		<div class="back">
			<h2>예약이 정상적으로 완료되었습니다.</h2>
		<div class="finish">
			<div class="img" style="display: inline-block;">
			<img src="${pageContext.request.contextPath}/resources/images/place/${fileList[0].fileName}" width="480px" height="320px" >
			</div>
			<div class="explain" style="display: inline-block;">
			<h1><b>${vo.placeVO.placeName }</b></h1>
			<h4>${vo.placeVO.placeLocation }</h4>
			<div class="price" style="text-align: right;"><b>₩ ${vo.payTotal }</b></div><br>
			<div class="out">체크인 : ${vo.checkInDate } ~ 체크아웃 : ${vo.checkOutDate }</div>
			</div>
			<div style="float: right;"><a href="./bookingList?memberNum=${member.memberNum }"><button class="btn btn-success" style="width: 150px;">예약 확인하러 가기</button></a> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="../"><button class="btn btn-primary">에이비앤비 더 둘러보기</button></a></div>
			
			</div>
		</div>
	</div>
</div>

<hr>
<c:import url="../jsp/footer.jsp"></c:import>
</body>
</html>