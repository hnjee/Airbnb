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
	href="../resources/css/footer.css">

	<link rel="stylesheet" type="text/css"
	href="../resources/css/bookingResultStyle.css">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 

	
</head>
<body>
<c:if test="${member.memberNum ne vo.memberNum}">

	<script type="text/javascript">
		$(document).ready(function() {
			alert("잘못된 접근입니다.");
			location.href="../";
		})
	</script>

</c:if>

<c:if test="${member.memberNum eq vo.memberNum}">
<c:import url="../jsp/header.jsp"></c:import>
<div class="content">
	
<div class="contents">

  <h2><b>결제가 완료되었습니다</b></h2>
  
  
 
	
		<div class="back">
		
		<div class="finish">
		<div>
			<div class="explain" style="display: inline-block;">
				<h2 style="text-align: left;"><b>예약이 완료되었습니다.</b></h2>
				<h4 style="line-height: 28px; margin-top: 20px;">예약이 확정되었습니다. 24시간이내에 이메일(${member.email})로<br>예약 요청에 대한 답변을 받게 됩니다.</h4>
				<h3 style="text-align: left; margin-top: 40px;"><b>여행지에서의 즐길 거리를 추천해드려요.</b></h3>
				<h4 style="line-height: 28px; margin-top: 20px;">관심사를 바탕으로 적합한 트립을 추천해드리고 에어비앤비 제품을<br>개선하는 데 도움이 됩니다.</h4>
				
				<div class="price" style="text-align: left;"><b>결제 가격 &nbsp&nbsp&nbsp ₩ ${vo.payTotal }</b></div><br>
				<div style="font-size: 15px;" class="out">체크인 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp ${vo.checkInDate} <br>체크아웃   &nbsp&nbsp&nbsp ${vo.checkOutDate }</div>
				<div style="float: left;margin-top: 30px;">
					<a href="../">
					<button class="btn _kt3i5a4" >에이비앤비 더 둘러보기</button>
					</a>
				</div>
			
			</div>
			</div>
			
			
			<!-- 이미지 대신 -->
			<div class="_15tm4du">
			<div class="_znbf64">
			<div class="_1uwpj50">
			<img src="${pageContext.request.contextPath}/resources/images/place/${fileList[0].fileName}" style="width: 100%; height: 100%; position: relative; object-fit: cover;" >
			<div class="_uq22ss"></div>
			</div>
			
			<div class="_y4pwm8">
			<div class="_1hgbtph">
			<div>${vo.checkInDate } - ${vo.checkOutDate }</div>
			</div>
			<div class="_1rez5ls">
			<a href="" class="_1y6ygmzc">
			<span class="_2ws1rv">${vo.placeVO.placeName }</span>
			</a>
			</div>
			<div class="_1q5n55t">
			<div class="_xjvqu8z">
			<div class="_7kd9rz">
			<img src="${pageContext.request.contextPath}/resources/images/place/${fileList[0].fileName}" style="width: 40px; height: 40px; position: relative; object-fit: cover;" >
			</div>
			<div class="_anh6ot">
			<a href="" class="_bim8e2w">
			<span class="_2ws1rv">${vo.placeVO.placeLocation}</span>
			</a>
			</div>
			<svg aria-hidden="true" role="presentation" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" style="display: block; fill: none; height: 12px; width: 12px; stroke: currentcolor; stroke-width: 5.33333; overflow: visible;">
			<g fill="none">
			<path d="m12 4 11.2928932 11.2928932c.3905243.3905243.3905243 1.0236893 0 1.4142136l-11.2928932 11.2928932"></path>
			</g>
			</svg>
			</div>
			<div class="_1yadbbeu">
			<a href="./bookingList?memberNum=${member.memberNum}">
			<span class="_mbimaq2" style="color: black;">여행 계획 더 보기</span>
			</a>
			</div>
			</div>
			</div>
			</div>
			</div>
			<!-- 이미지 대신 끝 -->
			
			<%-- <div class="img" style="display: inline-block;">
			<img src="${pageContext.request.contextPath}/resources/images/place/${fileList[0].fileName}" width="480px" height="320px" >
			</div> --%>
			
			
		</div>
		</div>
	</div>
</div>

<hr>
<c:import url="../jsp/footer.jsp"></c:import>
</c:if>
</body>
</html>