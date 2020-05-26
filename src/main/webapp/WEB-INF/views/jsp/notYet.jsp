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
</body>
</html>