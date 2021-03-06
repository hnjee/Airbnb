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
			
		}
		
		.back:after {
			background-image: url("../resources/w3images/back.png");
			background-repeat: no-repeat;
			background-position: center;
			top:0;
		    left:0;
		    position:absolute;
		    background-size:100%;
		    opacity:0.5!important;
		    filter:alpha(opacity=50);
		     z-index:-1;
		    content:"";
		    width:100%;
		    height:100%;
		}
		
	</style>
	
</head>
<body>
<c:if test="${member.memberNum ne memberNum.memberNum}">

	<script type="text/javascript">
		$(document).ready(function() {
			alert("잘못된 접근입니다.");
			location.href="../";
		})
	</script>

</c:if>

<c:if test="${member.memberNum eq memberNum.memberNum}">
<c:import url="../jsp/header.jsp"></c:import>
<div class="content">
	
<div class="contents">

  <h2><b>여행</b></h2>
  <ul class="nav nav-tabs">
    <li class="active c" id="yet"><a href="#"><b>예정된 예약</b></a></li>
    <li class="c" id="already"><a href="#"><b>이전 예약</b></a></li>
    
  </ul>
		
		<div class="back">
		<table class="table table-hover">
			<tr>
				<td>BookingNumber</td>
				<td>PlaceName</td>
				<td>CheckInDate</td>
				<td>CheckOutDate</td>
				<td>PayTotal</td>
				<td>PayInfo</td>
				<td>PayDate</td>
			</tr>
			<c:forEach items="${list}" var="bookingVO">
			<tr>
				<td>${bookingVO.bookingNum }</td>
				<td>${bookingVO.placeVO.placeName }</td>
				<td>${bookingVO.checkInDate }</td>
				<td>${bookingVO.checkOutDate }</td>
				<td>${bookingVO.payTotal }</td>
				<td>****-****-****-${bookingVO.payInfo}</td>
				<td>${bookingVO.payDate}</td>
				
			</tr>
			</c:forEach>
			
		
		</table>
		
		</div>
	</div>
</div>

<hr>
<c:import url="../jsp/footer.jsp"></c:import>
</c:if>
</body>
<script type="text/javascript">

	$("#yet").click(function() {
	$(this).attr("class", "active");
	$("#already").removeClass("active");
	var ajaxOption = {
            url : "./notYet",
            
            data : {memberNum:'${member.memberNum}'},
            type : "POST",
            dataType : "html"
            
    };  
	$.ajax(ajaxOption).done(function(data){
       
        $('.back').children().remove();
       
        $('.back').html(data);
    });
	})

	$("#already").click(function() {
	$(this).attr("class", "active");
	$("#yet").removeClass("active");
	var ajaxOption = {
            url : "./already",
            
            data : {memberNum:'${member.memberNum}'},
            type : "POST",
            dataType : "html"
            
    };  
	$.ajax(ajaxOption).done(function(data){
       
        $('.back').children().remove();
       
        $('.back').html(data);
    });
	})
</script>

</html>