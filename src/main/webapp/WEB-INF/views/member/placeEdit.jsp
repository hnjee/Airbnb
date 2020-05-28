<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소정보 수정 - 숙소 관리 - 에어비앤비</title>
<c:import url="../template/boot.jsp"></c:import>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/css/memberPlaceEditStyle.css"> 
<link rel="stylesheet" type="text/css" href="../resources/css/headerStyle.css"> 
<link rel="stylesheet" type="text/css"  href="../resources/css/footer.css">
</head>
<style>
*{
 		box-sizing: border-box !important;
	}
</style>
<body>
<div data-application="true"><div dir="ltr"><div>

<div class="_is5jnq">
<div class="_16grqhk">

	<!-- header 시작 -->
	<div class="_siy8gh">
	<div class="_1gw6tte">	
	<c:import url="../jsp/header.jsp"></c:import>
	</div>
	</div>
	
	<div class="_xca6kx"></div>
	
	<!-- main 시작 -->
	<main id="site-content" tabindex="-1" class="" style="overflow: auto; margin-bottom: 50px; border-top: 1px solid #DDDDDD;">
	<div class="_mwt4r90">
	<div style="margin: 0px;">
	<div style="margin-bottom: 48px;">
	<section>
	
		<!-- 계정 웅앵웅 -->	
		<div style="margin-top: 40px; margin-bottom: 40px;">
		<nav aria-label="계정">
		<ol class="_1ckj08w">
			<li class="_36rlri">
			<span class="_121z06r2">
			<a href="/account-settings" class="_sgg9wmi" aria-busy="false">계정</a>
			</span>
			</li>
		
			<li class="_36rlri">
			<div class="_36rlri" style="margin-left: 16px; margin-right: 16px;">
			<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 10px; width: 10px; fill: rgb(118, 118, 118);">
			<path d="m4.29 1.71a1 1 0 1 1 1.42-1.41l8 8a1 1 0 0 1 0 1.41l-8 8a1 1 0 1 1 -1.42-1.41l7.29-7.29z" fill-rule="evenodd"></path>
			</svg>
			</div>
			<span aria-current="step" class="_121z06r2">숙소정보</span>
			</li>
		</ol>
		</nav>
		
		<div style="margin-top: 12px;">
		<h1 tabindex="-1" class="_14i3z6h">
		<div class="_1yrl4d7p">숙소정보</div>
		</h1>
		</div>
		</div>
	
		<!-- 수정 Form 시작 -->
		<div class="_2h22gn">
		<div class="_169grxv2">
			<!-- collapse 아코디언 -->
			<div class="" id="accordion" role="tablist" aria-multiselectable="true">

            <!-- 수정 대상 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">숙소 이름</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">${place.placeName}</div>
				
				<!-- collapse 부분 -->
				<div id="collapse1" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<form action="../member/memberUpdate" method="POST">
					
					<div style="margin-top:18px; margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="placeName">숙소 이름</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<input class="_14fdu48d" id="placeName" name="placeName" type="text" value="${place.placeName}"></div>
					</div>
					</div>
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>
					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->
				
				</div>
				</div>
				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
					<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false" aria-controls="collapse1">
					<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
					</a>
				</div>
				</div>
				</div>
				
			</div>
			</div>
			</div>
			
			
			<!-- 수정 대상 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">숙소 주소</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">${place.placeLocation}</div>
				
				<!-- collapse 부분 -->
				<div id="collapse2" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<form action="../member/memberUpdate" method="POST">
					
					
					<div style="margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="placeLocation">숙소 주소</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<input class="_14fdu48d" id="placeLocation" name="placeLocation" type="text" value="${place.placeLocation}"></div>
					</div>
					</div>
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>
					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->
				
				</div>
				</div>
				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			
			<!-- 수정 대상 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">숙소 1박 가격</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">${place.placePrice}</div>
				
				<!-- collapse 부분 -->
				<div id="collapse3" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 20px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top:18px; margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="placePrice">숙소 1박 가격</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<input class="_14fdu48d" id="placePrice" name="placePrice" type="text" value="${place.placePrice}"></div>
					</div>
					</div>
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->
				
				</div>
				</div>
				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			
			
			<!-- 수정 대상 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">숙소 형태</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">${place.placeType}</div>
				
				<!-- collapse 부분 -->
				<div id="collapse4" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 20px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top:18px; margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="placeType">숙소 형태</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<input class="_14fdu48d" id="placeType" name="placeType" type="text" value="${place.placeType}"></div>
					</div>
					</div>
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>
					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->

				</div>
				</div>
				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			<!-- 수정 대상 끝 -->

			<!-- 수정 대상 5 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">최대 게스트 수</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">${place.placeMaxGuest}</div>				
				<!-- collapse 부분 -->
				<div id="collapse5" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 20px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top:18px; margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="placeMaxGuest">최대 게스트 수</label>
					<div class="_wlf6154">
						<div class="_y9ev9r">
						<select id="" name="placeMaxGuest" class="_bwyiq2l">
							<option disabled="" value="" selected>게스트 수</option>
							<option value="1">1 명</option>
							<option value="2">2 명</option>
							<option value="3">3 명</option>
							<option value="4">4 명</option>
							<option value="5">5 명</option>
							<option value="6">6 명</option>
							<option value="7">7 명</option>
							<option value="8">8 명</option>
							<option value="9">9 명</option>
							<option value="10">10 명</option>	
							<option value="11">11 명</option>
							<option value="12">12 명</option>
							<option value="13">13 명</option>				
						</select>
						</div>
						
						<span class="_1idvclr">
						<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: rgb(72, 72, 72);">
						<path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path>
						</svg>
						</span>
						
						</div>
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->

				</div>
				</div>				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			<!-- 수정 대상 끝 -->
			
			<!-- 수정 대상 6 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">숙소 설명</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
								
				<!-- collapse 부분 -->
				<div id="collapse6" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 20px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top:18px; margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="placeDesc">숙소 설명</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<textarea class="_14fdu48d" id="placeDesc" name="placeDesc" >${place.placeDesc}</textarea></div>
					</div>
					</div>
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->

				</div>
				</div>				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			<!-- 수정 대상 끝 -->
			
			<!-- 수정 대상 7 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">숙소 규칙</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
								
				<!-- collapse 부분 -->
				<div id="collapse7" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 20px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top:18px; margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="placeRule">숙소규칙</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<textarea class="_14fdu48d" id="placeRule" name="placeRule" >${place.placeRule}</textarea></div>
					</div>
					</div>
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->

				</div>
				</div>				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="false" aria-controls="collapse7">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			<!-- 수정 대상 끝 -->
			
			
			<!-- 수정 대상 8 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">침대와 화장실 수</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">침대 ${place.bed}개 화장실 ${place.bathroom}개</div>			
				<!-- collapse 부분 -->
				<div id="collapse8" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 20px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top:18px; margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="placeRule">침대, 화장실 수</label>
					
					<div role="group" aria-label="침대 화장실 선택">
					<div class="_2h22gn">
						<!-- 침대 수  -->
						<div class="_1q8ezn3a">
						<div class="_9hxttoo">
						<label class="_krjbj" for="">침대 수</label>
						<div class="_wlf6154">
						<div class="_y9ev9r">
						<select id="" name="bed" class="_bwyiq2l">
							<option disabled="" value="" selected>침대 갯수</option>
							<option value="1">1 개</option>
							<option value="2">2 개</option>
							<option value="3">3 개</option>
							<option value="4">4 개</option>
							<option value="5">5 개</option>
							<option value="6">6 개</option>
							<option value="7">7 개</option>
							<option value="8">8 개</option>
							<option value="9">9 개</option>
							<option value="10">10 개</option>						
						</select>
						</div>
						
						<span class="_1idvclr">
						<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: rgb(72, 72, 72);">
						<path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path>
						</svg>
						</span>
						
						</div>
						</div>
						</div>
						<!-- 침대 수 끝 -->
						
						<!-- 화장실 수  -->
						<div class="_1q8ezn3a">
						<div class="_9hxttoo">
						<label class="_krjbj" for="">화장실 수</label>
						<div class="_wlf6154">
						<div class="_y9ev9r">
						<select id="" name="bathroom" class="_bwyiq2l">
							<option disabled="" value="" selected>화장실 갯수</option>
							<option value="1">1 개</option>
							<option value="2">2 개</option>
							<option value="3">3 개</option>
							<option value="4">4 개</option>
							<option value="5">5 개</option>
							<option value="6">6 개</option>
							<option value="7">7 개</option>
							<option value="8">8 개</option>
							<option value="9">9 개</option>
							<option value="10">10 개</option>						
						</select>
						</div>
						
						<span class="_1idvclr">
						<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: rgb(72, 72, 72);">
						<path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path>
						</svg>
						</span>
						
						</div>
						</div>
						</div>
						<!-- 화장실 수 끝 -->
					
					
					
					</div>
					</div>
					
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->

				</div>
				</div>				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse8" aria-expanded="false" aria-controls="collapse8">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			<!-- 수정 대상 끝 -->
			
			
			<!-- 수정 대상 9 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">체크인  체크아웃 시간</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">체크인 ${place.checkInTime}시 체크아웃 ${place.checkOutTime}시</div>			
				<!-- collapse 부분 -->
				<div id="collapse9" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 20px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top:18px; margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="placeRule">체크인아웃 시간</label>
					
					<div role="group" aria-label="시간 선택">
					<div class="_2h22gn">
						<!-- 체크인 시간  -->
						<div class="_1q8ezn3a">
						<div class="_9hxttoo">
						<label class="_krjbj" for="">체크인</label>
						<div class="_wlf6154">
						<div class="_y9ev9r">
						<select id="" name="checkInTime" class="_bwyiq2l">
							<option disabled="" value="" selected>체크인 시간</option>
							<option value="1">1 시</option>
							<option value="2">2 시</option>
							<option value="3">3 시</option>
							<option value="4">4 시</option>
							<option value="5">5 시</option>
							<option value="6">6 시</option>
							<option value="7">7 시</option>
							<option value="8">8 시</option>
							<option value="9">9 시</option>
							<option value="10">10 시</option>	
							<option value="11">11 시</option>
							<option value="12">12 시</option>
							<option value="13">13 시</option>
							<option value="14">14 시</option>
							<option value="15">15 시</option>
							<option value="16">16 시</option>
							<option value="17">17 시</option>
							<option value="18">18 시</option>
							<option value="19">19 시</option>
							<option value="20">20 시</option>	
							<option value="21">21 시</option>
							<option value="22">22 시</option>
							<option value="23">23 시</option>
							<option value="24">24 시</option>					
						</select>
						</div>
						
						<span class="_1idvclr">
						<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: rgb(72, 72, 72);">
						<path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path>
						</svg>
						</span>
						
						</div>
						</div>
						</div>
						<!-- 체크인 끝 -->
						
						<!-- 체크아웃 시간  -->
						<div class="_1q8ezn3a">
						<div class="_9hxttoo">
						<label class="_krjbj" for="">체크아웃</label>
						<div class="_wlf6154">
						<div class="_y9ev9r">
						<select id="" name="checkOutTime" class="_bwyiq2l">
							<option disabled="" value="" selected>체크아웃 시간</option>
							<option value="1">1 시</option>
							<option value="2">2 시</option>
							<option value="3">3 시</option>
							<option value="4">4 시</option>
							<option value="5">5 시</option>
							<option value="6">6 시</option>
							<option value="7">7 시</option>
							<option value="8">8 시</option>
							<option value="9">9 시</option>
							<option value="10">10 시</option>	
							<option value="11">11 시</option>
							<option value="12">12 시</option>
							<option value="13">13 시</option>
							<option value="14">14 시</option>
							<option value="15">15 시</option>
							<option value="16">16 시</option>
							<option value="17">17 시</option>
							<option value="18">18 시</option>
							<option value="19">19 시</option>
							<option value="20">20 시</option>	
							<option value="21">21 시</option>
							<option value="22">22 시</option>
							<option value="23">23 시</option>
							<option value="24">24 시</option>					
						</select>
						</div>
						
						<span class="_1idvclr">
						<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: rgb(72, 72, 72);">
						<path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path>
						</svg>
						</span>
						
						</div>
						</div>
						</div>
						<!-- 체크인 끝 -->
					
					
					
					</div>
					</div>
					
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->

				</div>
				</div>				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse9" aria-expanded="false" aria-controls="collapse9">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			<!-- 수정 대상 끝 -->



		</div>
		</div>
		<!-- 수정 폼 끝 -->
		
		
		<!-- 오른쪽 배너 -->
		<div class="_17pxz94u">
		<div class="_16tcko6">
			<section>
			<div style="margin-top: 32px; margin-bottom: 32px;">
			<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 40px; width: 40px; display: block; fill: rgb(96, 182, 181);">
			<path d="m18.66 6.51-14.84 9.65a1 1 0 0 0 .55 1.84h15.62a1 1 0 0 0 1-1v-9.24a1.5 1.5 0 0 0 -2.32-1.26z"></path>
			<path d="m9.25 12a1.25 1.25 0 1 1 -1.25-1.25 1.25 1.25 0 0 1 1.25 1.25zm11.75-8h-14a .5.5 0 0 0 0 1h14a1 1 0 0 1 1 1v12a1 1 0 0 1 -1 1h-1.5a.5.5 0 0 0 0 1h1.5a2 2 0 0 0 2-2v-12a2 2 0 0 0 -2-2zm-5 15h-13a1 1 0 0 1 -1-1v-12a1 1 0 0 1 1-1h1a .5.5 0 0 0 0-1h-1a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h13a .5.5 0 0 0 0-1zm-7.17-11.17a4.25 4.25 0 1 0 3.42 4.17 4.21 4.21 0 0 0 -.46-1.92.5.5 0 0 0 -.89.45 3.25 3.25 0 0 1 -.61 3.77 3.67 3.67 0 0 0 -4.56.02 3.25 3.25 0 0 1 2.27-5.57 3.3 3.3 0 0 1 .63.06.5.5 0 1 0 .19-.98zm5.67 3.17h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1zm0 2h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1zm0 2h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1z" fill="#484848"></path>
			</svg>
			
			<div style="margin-top: 16px; margin-bottom: 16px;">
			<h2 tabindex="-1" class="_14i3z6h">
			<div class="_1p0spma2">다른 사람에게 어떤 정보가 공개되나요?</div>
			</h2>
			</div>
			
			<div class="_czm8crp">에어비앤비는 예약이 확정된 후에만 호스트 및 게스트의 연락처 정보를 공개합니다.</div>
			</div>
			</section>
		</div>
		</div>
		<!-- 오른쪽 배너 끝 -->
		
		</div>
		
		
		
	</section>
	</div>
	</div>
	</div>
	</main>
	
	<c:import url="../jsp/footer.jsp"></c:import>
	

</div>
</div>

</div></div></div>

</body>
</html>