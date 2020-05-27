<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<input type="hidden"  id="placeName" value="${pVo.placeName}">
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
						style="height : 100px;" ></textarea>

						
<div class="_1mbllh6j">
	<div class="_s1tlw0m">숙소의 주의사항을 적어주세요.</div>
</div>
						
<textarea class="input-block" id="placeRule" placeholder="예) 홍대역에서 5분 거리의 깨끗한 숙소입니다."
						style="height : 100px;" ></textarea>
						
<div class="_1mbllh6j">
	<div class="_s1tlw0m">체크인 시간을 적어주세요.</div>
</div>
					<div class="_wlf6154">
						<div class="_y9ev9r">
							<select id="checkInTime" name="bedrooms" class="_bwyiq2l"><option
									value="1">1시</option>
								<option value="2">2시</option>
								<option value="3">3시</option>
								<option value="4">4시</option>
								<option value="5">5시</option>
								<option value="6">6시</option>
								<option value="7">7시</option>
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
								<option value="24">24시</option>
							</select>
						</div>
					</div>
						
						
						
<div class="_1mbllh6j">
	<div class="_s1tlw0m">체크아웃 시간을 적어주세요.</div>
</div>

<div class="_wlf6154">
						<div class="_y9ev9r">
							<select id="checkOutTime" name="bedrooms" class="_bwyiq2l"><option
									value="1">1시</option>
								<option value="2">2시</option>
								<option value="3">3시</option>
								<option value="4">4시</option>
								<option value="5">5시</option>
								<option value="6">6시</option>
								<option value="7">7시</option>
								<option value="8">8시</option>
								<option value="9">9시</option>
								<option value="10">10시</option>
								<option value="11">11시</option>
								<option value="12">12시</option>
								<option value="13">13시</option>
								<option value="14">14시</option>
								<option value="15">15시</option>
								<option value="16">16시</option>
								<option value="17">17시</option>
								<option value="18">18시</option>
								<option value="19">19시</option>
								<option value="20">20시</option>
								<option value="21">21시</option>
								<option value="22">22시</option>
								<option value="23">23시</option>
								<option value="24">24시</option>
							</select>
						</div>
					</div>

