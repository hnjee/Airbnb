<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
			<c:if test="${bookingVO.bookingStat eq 2 }">
			<tr>
				<td>${bookingVO.bookingNum }</td>
				<td>${bookingVO.placeVO.placeName }</td>
				<td>${bookingVO.checkInDate }</td>
				<td>${bookingVO.checkOutDate }</td>
				<td>${bookingVO.payTotal }</td>
				<td>****-****-****-${bookingVO.payInfo}</td>
				<td>${bookingVO.payDate}</td>
				<td><button class="btn btn-primary" title="${bookingVO.placeNum }" id="${bookingVO.bookingNum }">리뷰쓰기</button></td>
			</tr>
			</c:if>
			<c:if test="${bookingVO.bookingStat eq 3 }">
			<tr>
				<td>${bookingVO.bookingNum }</td>
				<td>${bookingVO.placeVO.placeName }</td>
				<td>${bookingVO.checkInDate }</td>
				<td>${bookingVO.checkOutDate }</td>
				<td>${bookingVO.payTotal }</td>
				<td>****-****-****-${bookingVO.payInfo}</td>
				<td>${bookingVO.payDate}</td>
				<td><button class="btn btn-default">리뷰완료</button>
			</tr>
			</c:if>
			
			</c:forEach>
		</table>
		<script type="text/javascript">
		$(".btn-primary").click(function() {
		     
		        	var placeNum = $(this).attr("title")
		        	var bookingNum= $(this).attr("id")
		        	
		        	var ajaxOption = {
		                    url : "./review",
		                    
		                    data : {placeNum:placeNum, bookingNum:bookingNum},
		                    type : "POST",
		                    dataType : "html"
		                    
		            };  
		        	$.ajax(ajaxOption).done(function(data){
		               
		                $('.back').children().remove();
		               
		                $('.back').html(data);
		            });
		        	
			
		})
		
		</script>
		
</body>
</html>