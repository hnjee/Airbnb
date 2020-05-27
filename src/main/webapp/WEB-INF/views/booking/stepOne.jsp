<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">

	body {
		margin:0;
		padding: 0;
   		box-sizing: border-box;
   		line-height: 1;
   }
   
   .header {
   		height: 60px;
   		width: 100%;

   		padding-top: 20px;
   		min-width: 700px;
   		margin-bottom: 40px;
   		line-height: 30px;
   }
   
   .logo {
   		float: left;
   		margin-left: 24px;
   		margin-right: 90px;
   		
   }
   
   .header1 > li {
   	display: inline-block;
   	margin-right: 10px;
   	color: gray;
   	font-size: 0.9em;
   }
   
   .header1 span{
   	color : black;
   }
   
   .info{
   		width : 600px;
   		min-width: 400px;
   		height: 780px;
   		
   		display: inline-block;
   }
   
   .con {
   		width : 100%;
   		height : 800px;
   }
   
   .contents {
   		width : 1040px;
   		margin: 0 auto;
   		
   		box-sizing: border-box;
   }
   
   .side {
   		float : right;
   		width: 385px;
   		height: 530px;
   		padding : 0 24px;
   		border: 1px silver solid;
   }
   .side1{
   		width : 335px;
   		height: 483px;
   		margin-top: 20px;
   }
   
   
   .ex {
   		font-size: 0.9em;
   		padding : 10px;
   		width : 100%;
   		height: 70px;
   		margin-top: 40px;
   		border: 1px silver solid;
   		box-sizing: border-box;
   		line-height: 50px;
   		margin-bottom: 60px;
   }
   
   .logo1 {
   		float: left;
   		margin-right: 10px;
   }
   
   .check{
   		width : 100%;
   		height: 80px;
   		margin-top: 30px;
   }
   .check1 {
   		display: inline-block;
   		height: 58px;
   		width: 284px;
   }
   .month {
   		display: inline-block;
   		height : 56px;
   		width : 56px;
   		background: #F2F2F2;
   		text-align: center;
   		padding: 8px;
   		box-sizing: border-box;
   		font-size: 0.8em;
   		line-height: 18px;
   }
   .day {
   		font-size: 1.4em;
   		
   }
   
   .checkin {
   		display: inline-block;
   		width : 110px;
   		height: 44px;
   		margin : 8px 16px 6px;
   		font-size: 0.9em;
   		line-height: 18px;
   }
   
   hr{
   	color: silver;
   }
   
   .ca {
   		display : inline-block;
   		height: 60px;
   		box-sizing: border-box;
   		line-height: 55px;
   		margin-left: 20px;
   }
   .im {
   		float: left;
   }
   .btn-primary {
   	width : 160px;
   	height: 50px;
   	margin-top: 50px;
   	background-color: #008489;
   }
   
   .img {
   		width: 100px;
   		height: 115px;
   		box-sizing: border-box;
   		float: right;
   }
   .tags {
   		width : 234px;
   		height : 116px;
   		display: inline-block;
   		box-sizing: border-box;
   		
   }
   .tag {
   	width : 226px;
   	height : 66px;
   	font-family: Circular,-apple-system,BlinkMacSystemFont,Roboto,Helvetica Neue,sans-serif;
    font-size: 16px;
    font-weight: 800;
    line-height: 1.375em;
    color: #484848;
    box-sizing: border-box;
    margin-bottom: 10px;
   }
   .font {
   	font-size: 14px;
   }
   .sum {
   	float : right;
   }
   .btn-default{
   	float : right;
   	border: 1px silver solid;
   	margin-left: 10px;
   }
   
   .footer{
   	height: 200px;
   	display: inline-block;
   }
 	
</style>
</head>
<body>
<c:if test="${empty member}">

	<script type="text/javascript">
		$(document).ready(function() {
			alert("로그인 후 이용해주세요");
			location.href="../";
		})
	</script>

</c:if>

<c:if test="${not empty member}">
<div class="header">
	<div class="logo">
		<a href="${pageContext.request.contextPath}">
		<img alt="" src="../resources/w3images/logo1.png">
		</a>
	</div>
	<ul class="header1">
		<li><span><b>1. 숙소 이용규칙 확인 > </b></span>
		<li>2. 게스트 정보 입력 > 
		<li>3. 확인 및 결제
	</ul>
</div>
<div class="con">
	<div class="contents">
		<div class="info">
			<div><h2><b>숙소 이용규칙 확인하기</b></h2></div>
			<div class="ex">
				<div class="logo1"><img alt="" src="../resources/w3images/logo.png"></div>
				<b>흔치 않은 기회입니다.</b> ${vo.name }님의 숙소는 보통 예약이 가득 차 있습니다.
			</div>
			<h5><b>${vo.placeLocation }</b></h5>
			<div class="check">
				<div class="check1">
					<div class="month">${checkInDate.month+1}월<br><b><span class="day">${checkInDate.date }</span></b></div>
					<div class="checkin">체크인:<span id="checkIn"></span><br>${vo.checkInTime }:00</div>
				</div>
				<div class="check1">
					<div class="month">${checkOutDate.month+1}월<br><b><span class="day">${checkOutDate.date }</span></b></div>
					<div class="checkin"><span id="checkOut"></span> 체크아웃<br>${vo.checkOutTime }:00</div>
				</div>
			</div>
			<br><hr>
			<h5><b>주의할 사항</b></h5><br>
			<div><div class="im"><img alt="" src="../resources/w3images/logo2.png" style="border: 1px silver solid"></div><div class="ca"> 어린이와 유아에게 적합함 </div></div>
			<div><div class="im"><img alt="" src="../resources/w3images/logo3.png" style="border: 1px silver solid"></div><div class="ca"> 반려동물 동반 불가 </div></div>
			<div><div class="im"><img alt="" src="../resources/w3images/logo4.png" style="border: 1px silver solid"></div><div class="ca"> 흡연 금지 </div></div>
			
			<button type="button" class="btn btn-primary">동의 및 계속하기</button>
		</div>
		
		
		
		<div class="side">
			<div class="side1">
				<div class="tags">
					<div class="tag"> ${vo.placeName }</div>
					<div class="font">${vo.name }의 아파트 전체</div>
					
					<div>★★★★★ <span style="font-size: 12px">후기 {___}개</span></div>
				</div>
				<div class="img"> <img src="${pageContext.request.contextPath}/resources/images/place/${fileList[0].fileName}" width="100px" height="120px" >
				</div>
				
				<hr>
				<div><img alt="" src="../resources/w3images/p.png"> 게스트 ${guestTotal}명</div><br>
				<div><img alt="" src="../resources/w3images/c.png"> ${checkInDate }  → ${checkOutDate }</div><hr><br>
				<div>₩ ${vo.placePrice} x ${days }박	<div class="sum sos">₩ </div></div><br>
				<div>청소비 	 <a href="#" data-toggle="popover" data-content="호스트가 청구하는 일회성 숙소 청소 비용입니다." style="color: gray"><svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: inline-block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg></a>	
				<div class="sum">₩ ${vo.placePrice*0 }</div></div><br>
				<div>서비스 수수료 	<a href="#" data-toggle="popover" style="color: gray" data-content="수수료는 에어비앤비 플랫폼을 운영하고 연중무휴 고객 지원과 같은 다양한 서비스를 제공하는데 사용됩니다."><svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: inline-block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg></a>	
				<div class="sum ser">₩ </div></div><br>
				<div>숙박세와 수수료 	<a href="#" data-toggle="popover" style="color: gray" data-content="TOT (South Korea)"><svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: inline-block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg></a>	
				<div class="sum ser">₩ </div></div><br><hr><br>
				<div><b>총 합계(₩)</b>		<div class="sum fff"><b>₩ </b></div></div>
				
			</div>
		</div>
		
		<hr>
		<div class="footer"><img alt="" src="../resources/w3images/logo5.png"> ⓒAirbnb, Inc.</div>
		<button type="button" class="btn btn-default">EUR-€</button>
		<button type="button" class="btn btn-default">한국어(KR)</button>
		
	</div>
	
</div>
</c:if>
</body>

<script>
var sum = ${vo.placePrice}*${days };
var sum_j = sum+sum*0.06
var ser = sum*0.03

var week = new Array('일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일');

var cin = ${checkInDate.day};
var cout = ${checkOutDate.day};
var checkIn = week[cin];
var checkOut= week[cout]

function addComma(x) {
	 return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
    $(".sos").append(addComma(sum));
    $(".fff").append(addComma(sum_j));
    $(".ser").append(addComma(ser));
    $("#checkIn").html(checkIn);
    $("#checkOut").html(checkOut);
    
	
});





$(".btn-primary").click(function() {
	$(location).attr('href', 'stepTwo?placeNum=${vo.placeNum}&checkInDate=${checkInDate}&checkOutDate=${checkOutDate}&guestTotal=${guestTotal}');
})




</script>
</html>