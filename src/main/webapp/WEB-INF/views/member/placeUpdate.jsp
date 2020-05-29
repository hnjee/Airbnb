<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 - 에어비엔비</title>
<c:import url="../template/boot.jsp"></c:import>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/css/headerStyle.css"> 
<link rel="stylesheet" type="text/css"  href="../resources/css/placeUpdate.css">
<link rel="stylesheet" type="text/css"  href="../resources/css/footer.css">

</head>
<body>
<c:import url="../jsp/header.jsp"></c:import>


<main id="up_content">
	<div style="margin-top:16px;margin-left:24px;margin-right:24px;">
		<div id="top_con"> &nbsp숙소 ${size}개 </div>
		<table id="place_table">
			<thead>
				<tr>
					<th style="width:60px;" ><svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 10px; width: 10px;"><path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path></svg></th>
					<th style="width:700px; text-align: left;">숙소</th>
					<th style="width:140px;">최대인원</th>
					<th style="width:140px;">침대</th>
					<th style="width:140px;">욕실</th>
					<th>가격</th>
					<th style="width:400px; text-align: left;">위치</th>
					<th style="width:60px;">설정</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="placeVOs">
				<tr>
					<td>${placeVOs.placeNum}</td>
					<td id="td_place" style="text-align: left;">
						<span style="margin: 0 16px; line-height: 3.4em !important;"> <a href="./placeEdit?memberNum=${placeVOs.memberNum}&placeNum=${placeVOs.placeNum}&placeName=${placeVOs.placeName}&placeLocation=${placeVOs.placeLocation}&placePrice=${placeVOs.placePrice}&placeType=${placeVOs.placeType}&placeMaxGuest=${placeVOs.placeMaxGuest}&placeDesc=${placeVOs.placeDesc}&placeRule=${placeVOs.placeRule}&bed=${placeVOs.bed}&bathroom=${placeVOs.bathroom}&checkInTime=${placeVOs.checkInTime}&checkOutTime=${placeVOs.checkOutTime}">${placeVOs.placeName}</a> </span>
					</td>
					<td>${placeVOs.placeMaxGuest}</td>
					<td>${placeVOs.bed}</td>
					<td>${placeVOs.bathroom}</td>
					<td>${placeVOs.placePrice}</td>
					<td style="text-align: left;">${placeVOs.placeLocation}</td>
					<td>
					<div class="dropdown">
					    <button class="dropdown-toggle" type="button" data-toggle="dropdown" style="border:0; outline: 0; background: white;"><svg viewBox="0 0 32 32" role="img" aria-label="ff 옵션" focusable="false" style="height: 18px; width: 18px; fill: rgb(118, 118, 118);"><path d="m1.5 16.5a3.5 3.5 0 117 0 3.5 3.5 0 01-7 0zm14.5 3.5a3.5 3.5 0 100-7 3.5 3.5 0 000 7zm11 0a3.5 3.5 0 100-7 3.5 3.5 0 000 7z" fill-rule="evenodd"></path></svg>
					   </button>
					    <ul class="dropdown-menu dropdown-menu-right">
					      <li><a href="./placeEdit?memberNum=${placeVOs.memberNum}&placeNum=${placeVOs.placeNum}&placeName=${placeVOs.placeName}&placeLocation=${placeVOs.placeLocation}&placePrice=${placeVOs.placePrice}&placeType=${placeVOs.placeType}&placeMaxGuest=${placeVOs.placeMaxGuest}&placeDesc=${placeVOs.placeDesc}&placeRule=${placeVOs.placeRule}&bed=${placeVOs.bed}&bathroom=${placeVOs.bathroom}&checkInTime=${placeVOs.checkInTime}&checkOutTime=${placeVOs.checkOutTime}&placeFileName=${placeVOs.fileName}">수정</a></li>
					      <li><a href="./placeDelete?placeNum=${placeVOs.placeNum}&memberNum=${placeVOs.memberNum}">삭제</a></li>
					    </ul>
					</div>
					</td>
				</tr>
				</c:forEach>
				<!-- 예시용으로 한개 더 넣어놓은 것. 실제로는 placeList를  memberNum으로 검색해서 가져온 List를 forEach로 받아오면 됩니다 -->
			</tbody>
		</table>
	</div>
</main>

<c:import url="../jsp/footer.jsp"></c:import>
</body>
</html>