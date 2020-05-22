<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
   		height: 600px;
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
   		border: 0.5px red solid;
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
   	border: 1px silver solid;
   	width: 250px;
   }
   .foot{
   	float : right;
   	font-size : 0.9em;
   	margin-left: 10px;
   	height : 40px;
   	width: 100px;
   	color: gray;
   }
   
   .footer{
   	height: 200px;
   	display: inline-block;
   }
   .dropdown-menu {
   	width : 250px;
   }
 
 	
 	.in {
 		float: right;
 		
 	}
 	
 	
 	.a {
 		display: inline-block;
 		margin-left: 15px;
 		margin-bottom: 30px;
 		line-height: 25px;
 	}
 	
 	.b {
 		font-size: 0.8em;
 	}
 	
 	.caret {
 		display:inline-block;
 		margin-left: 120px;
 		
 	}
 	
 	.exit {
 		float: right;
 		font-size: 18px;
 		cursor: pointer;
 		color: green;
 		
 	}
 	
	.ch {		
		margin-left: 80px;	
	}
	.q {
		float: left;
		margin-bottom: 25px;
	}
	.host {
		float : right;
		border: 1px silver solid;
		width: 48px;
		height: 48px;
	}
	
 	
</style>
</head>
<body>

<div class="header">
	<div class="logo">
		<img alt="" src="../resources/w3images/logo1.png">
	</div>
	<ul class="header1">
		<li><span><b>1. 숙소 이용규칙 확인 > </b></span>
		<li><span><b>2. 게스트 정보 입력 > </b></span>
		<li>3. 확인 및 결제
	</ul>
</div>
<div class="con">
	<div class="contents">
		<div class="info">
			<div><h2><b>일행이 있나요?</b></h2></div>
			<div class="ex">
				<div class="logo1"><img alt="" src="../resources/w3images/logo.png"></div>
				<b>흔치 않은 기회입니다.</b> {__}님의 숙소는 보통 예약이 가득 차 있습니다.
			</div>
			<h5><b>인원</b></h5>
			  <div class="dropdown">
			    <button class="btn btn-default dropdown-toggle" style="text-align: left;"  type="button" data-toggle="dropdown">게스트 1명
			    
			    <div class="caret"></div></button>
			    <ul class="dropdown-menu">
			      <li><div class="a" style="margin-top: 5px;"><b>성인</b></div>
				        <div class="in">
				        <input class="w3-input w3-border" type="number" value="1" name="Adults" min="1" max="6">
				        </div></li>
			      <li><div class="a"><div><b>어린이</b></div><div class="b">2~12세</div></div>
				        <div class="in">
				        <input class="w3-input w3-border" type="number" value="0" name="Kids" min="0" max="6">
				        </div></li>
						
			      <li><div class="a"><div><b>유아</b></div><div class="b">2세 미만</div></div>
			      		<div class="in">
				        <input class="w3-input w3-border" type="number" value="0" name="Babys" min="0" max="6">
				        </div></li>
			           <div class="a b">최대 2명. 유아는 숙박인원에 포함되지<br>않습니다.</div>
			           <div class="exit">닫기</div>
			    </ul>
			  </div>
			<br><br><br><br>
			<div class="q">
				<h5><b>출장을 떠나시나요?</b></h5>
			 </div>
			 <form>
			    <label class="radio-inline">
			      <input type="radio" name="optradio" class="ch"> YES
			    </label>
			    <label class="radio-inline">
			      <input type="radio" name="optradio" required="required" class="ch"> NO
			    </label>
			  </form>
			  <br><br><br><br>
			<div>
			<div class="q">
			<h5><b>호스트에게 인사하기</b></h5>
			{____}님에게 간단히 자신을 소개하고 여행 목적에 대해 알려주세요.
			</div>
			</div>
			<div class="host">img</div>
			<form>
			    <div class="form-group">
			      <textarea class="form-control" rows="5" id="comment" placeholder="안녕하세요? 숙소에서 보낼 시간이 기대됩니다." required="required"></textarea>
			    </div>
			</form>
			<form id="pay" action="./pay" method="post">
				<input value=${vo.placeNum } name= "placeNum" hidden="true">
				<input value=${vo.memberNum } name= "memberNum" hidden="true">
				<input value=${checkInDate } name= "checkInDate" hidden="true">
				<input value=${checkOutDate } name= "checkOutDate" hidden="true">
				<input value=${guestTotal } name="guestTotal" hidden="true">
				<input type="submit" class="btn btn-primary" value="계속하기">
			</form>
		
			
		</div>
		
		
		
		<div class="side">
			<div class="side1">
				<div class="tags">
					<div class="tag"> #Sanitation#Mapo <br>#Hongdae #Itaewon #Yeouido Seoul</div>
					<div class="font">{___}의 아파트 전체</div>
					
					<div>★★★★★ <span style="font-size: 12px">후기 {___}개</span></div>
				</div>
				<div class="img"> img
				</div>
				
				<hr>
				<div><img alt="" src="../resources/w3images/p.png"> 게스트 {__}명</div><br>
				<div><img alt="" src="../resources/w3images/c.png"> {___}년 {__}월{__}일  → {___}년 {__}월{__}일</div><hr><br>
				<div>€35.06 x 3박	<div class="sum">€105.18</div></div><br>
				<div>청소비 	 <a href="#" data-toggle="popover" data-content="호스트가 청구하는 일회성 숙소 청소 비용입니다." style="color: gray">(?)</a>	<div class="sum">€27.68</div></div><br>
				<div>서비스 수수료 	<a href="#" data-toggle="popover" style="color: gray" data-content="수수료는 에어비앤비 플랫폼을 운영하고 연중무휴 고객 지원과 같은 다양한 서비스를 제공하는데 사용됩니다.">(?)</a>	<div class="sum">€18.76</div></div><br>
				<div>숙박세와 수수료 	<a href="#" data-toggle="popover" style="color: gray" data-content="TOT (South Korea)">(?)</a>	<div class="sum">€1.88</div></div><br>
				<div><b>총 합계(EUR)</b>		<div class="sum"><b>€153.50</b></div></div>
				<br><hr><br>
				<div><b>지금 €76.84에 예약하세요.</b></div>
				<br>나머지 금액은 5월 20일에 결제하세요.<br>
				<a href="#">자세히 알아보기</a>
				
				
			</div>
		</div>
		
		<hr>
		<div class="footer"><img alt="" src="../resources/w3images/logo5.png"> ⓒAirbnb, Inc.</div>
		<button type="button" class="btn btn-default foot">EUR-€</button>
		<button type="button" class="btn btn-default foot">한국어(KR)</button>
		
	</div>
	
</div>
</body>

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});



</script>
</html>