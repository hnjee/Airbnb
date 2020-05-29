<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css"  href="../resources/css/pay.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>에어비앤비 결제</title>

</head>
<body>

<div class="header">
	<div class="logo">
		<a href="${pageContext.request.contextPath}">
		<img alt="" src="../resources/w3images/logo1.png">
		</a>
	</div>
	<ul class="header1">
		<li><span><b>1. 숙소 이용규칙 확인 > </b></span>
		<li><span><b>2. 게스트 정보 입력 > </b></span>
		<li><span><b>3. 확인 및 결제</b></span>
	</ul>
</div>
<div class="con">
	<div class="contents">
		<div class="info">
			<div><h2><b>확인 및 결제</b></h2></div>
			<div class="ex">
				<div class="logo1"><img alt="" src="../resources/w3images/logo.png"></div>
				<b>흔치 않은 기회입니다.</b> ${vo.name}님의 숙소는 보통 예약이 가득 차 있습니다.
			</div>
			<div>
				<div class="card">
					<img alt="" src="../resources/w3images/cards.png">
				</div>
				<div>
					<h6><b>결제 수단</b></h6>
				</div>
			</div>
			 <select class="form-control" id="sel1">
		        <option>신용카드 또는 체크카드 </option>
		        <option>페이팔</option>
		        <option>iDEAL</option>
		        <option>Google Pay</option>
		      </select>
			<br>
			<div>
				<div class="form-group na" style="padding:0px;">
			      <label for="usr" style="font-weight: bold;">이름 </label>
			      <input type="text" class="form-control" id="usr">
			    </div>
			    <div class="form-group na" style="padding-left: 10px">
			      <label for="pwd" style="font-weight: bold;">성</label>
			      <input type="text" class="form-control" id="family">
			    </div>
			</div>
			<div>
				 
				<label style="font-weight: bold;"> 카드 정보 </label>
				<div class="input-group">
			      <input class="cardNum form-control" type="text" class="form-control" name="cardNum" placeholder="카드 번호" required="required" maxlength="4" style="margin-right: 3px;">  
			      <input class="cardNum form-control" type="password" class="form-control" name="cardNum" placeholder="카드 번호" required="required" maxlength="4" style="margin-right: 3px;">  
			      <input class="cardNum form-control" type="password" class="form-control" name="cardNum" placeholder="카드 번호" required="required" maxlength="4" style="margin-right: 3px;">  
			      <input class="cardNum cardNumf form-control" type="text" class="form-control" name="cardNum" placeholder="카드 번호" required="required" maxlength="4">
			    </div>
			    <div class="input-group" style="margin-top: 10px;">
			      <input id="day" type="text" class="form-control" name="day" placeholder="만료일" maxlength="4" style="margin-right: 3px;">
			      <input id="cvv" type="text" class="form-control" name="cvv" placeholder="CVV" maxlength="3">
			    </div>
			</div><br><br>
			<div>
				<div class="form-group na" style="padding:0px;">
			      <label for="info" style="font-weight: bold;" >청구지 정보 </label>
			      <input type="text" class="form-control" id="info" placeholder="우편 번호" required="required" maxlength="5">
			    </div>
			    <div class="form-group na">
			    <label for="nation" style="font-weight: bold;">국가/지역</label>
			    <select class="form-control" id="sel2">
			        <option>한국 </option>
			        <option>일본 </option>
			        <option>중국 </option>
			        <option>미국 </option>
			      </select>
			     </div>
			</div><br><br>
			<div>
				<h6><b>결제 방식을 선택해주세요.</b></h6>
			</div>
			<label class="box-radio-input"><input type="radio" name="cp_item" value="전액" checked="checked" class="total"><span style="margin-left: 20px;">전액결제</span></label><br>
			<label class="box-radio-input"><input type="radio" name="cp_item" value="분할" class="ready"><span style="margin-left: 20px;">분할 결제</span></label>
			<br>
			<button type="button" class="btn btn-primary" style="border: none; margin-top: 30px; background-color: #23a3a7">계속하기</button>
		</div>
		
		
		
		<div class="side">
			<div class="side1">
				<div class="tags">
					<div class="tag"> ${vo.placeName }</div>
					<div class="font">${vo.placeLocation }의 <br>${vo.placeType }</div>
					
					
				</div>
				<div class="img"><img src="${pageContext.request.contextPath}/resources/images/place/${fileList[0].fileName}" width="100px" height="120px" >
				</div>
				
				<hr>
				<div><img alt="" src="../resources/w3images/p.png"> 게스트 ${bvo.guestTotal}명</div><br>
				<div><img alt="" src="../resources/w3images/c.png"> ${bvo.checkInDate }  → ${bvo.checkOutDate }</div><hr><br>
				<div>₩ ${vo.placePrice} x ${days }박	<div class="sum sos">₩ </div></div><br>
				<div>청소비 	 <a href="#" data-toggle="popover" data-content="호스트가 청구하는 일회성 숙소 청소 비용입니다." style="color: gray"><svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: inline-block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg></a>	<div class="sum">₩ ${vo.placePrice*0 }</div></div><br>
				<div>서비스 수수료 	<a href="#" data-toggle="popover" style="color: gray" data-content="수수료는 에어비앤비 플랫폼을 운영하고 연중무휴 고객 지원과 같은 다양한 서비스를 제공하는데 사용됩니다."><svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: inline-block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg></a>	
				<div class="sum ser">₩ </div></div><br>
				<div>숙박세와 수수료 	<a href="#" data-toggle="popover" style="color: gray" data-content="TOT (South Korea)"><svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: inline-block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg></a>	
				<div class="sum ser">₩ </div></div><br><hr><br>
				<div><b>총 합계(₩)</b>		<div class="sum fff"><b>₩ </b></div></div>
				
			</div>
		</div>
		
		
		<br><br><br><br><hr>
		<div class="footer"><img alt="" src="../resources/w3images/logo5.png"> ⓒAirbnb, Inc.</div>
		<button type="button" class="btn btn-default foot">EUR-€</button>
		<button type="button" class="btn btn-default foot">한국어(KR)</button>
		
	</div>
	
</div>
</body>


<script>
var sum = ${vo.placePrice}*${days };
var sum_j = sum+sum*0.06
var ser = sum*0.03
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
	if($('.cardNumf').prop("value") != ""){
	window.open("${pageContext.request.contextPath}/booking/payment?bookingNum=${bvo.bookingNum }&placeNum=${bvo.placeNum}&checkInDate=${bvo.checkInDate}&checkOutDate=${bvo.checkOutDate}&cardNum="+$(".cardNumf").val(), "PopupWin", "top=200, left=400, width=850,height=600")
	} else {
		alert("빈칸을 모두 작성해주세요");
	}
})




$(".ready").click(function(){
	alert("이 상품은 분할 결제를 지원하지 않습니다.")
	$(".total").prop("checked", "checked")
})


 
</script>
</html>