<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<input type="hidden"  id="pName" value="${pVo.placeName}">
<input type="hidden"  id="pType" value="${pVo.placeType}">
<input type="hidden"  id="pMaxGuest" value="${pVo.placeMaxGuest}">
<input type="hidden"  id="pBed" value="${pVo.bed}">
<input type="hidden"  id="pBathroom" value="${pVo.bathroom}">



<div class="_1mbllh6j">
	<div class="_s1tlw0m">하루 숙박 비용을 적어주세요.</div>
</div>

<input class="input-block" id="placePrice" type="text"
						placeholder="예)10000">

<div class="_1mbllh6j">
	<div class="_s1tlw0m">숙소에 대한 정보를 적어주세요.</div>
</div>

<textarea class="input-block" id="placeDesc" placeholder="예) 홍대역에서 5분 거리의 깨끗한 숙소입니다." 
						style="height : 200px;" ></textarea>

						
<div class="_1mbllh6j">
	<div class="_s1tlw0m">숙소의 주의사항을 적어주세요.</div>
</div>
						
<textarea class="input-block" id="placeRule" placeholder="예) 홍대역에서 5분 거리의 깨끗한 숙소입니다."
						style="height : 200px;" ></textarea>
						
<div class="_1mbllh6j">
	<div class="_s1tlw0m">체크인 시간을 적어주세요.</div>
</div>

<input class="input-block" id="checkInTime" type="text"
						placeholder="예)13:00">
						
<div class="_1mbllh6j">
	<div class="_s1tlw0m">체크아웃 시간을 적어주세요.</div>
</div>

<input class="input-block" id="checkOutTime" type="text"
						placeholder="예)11:00">

