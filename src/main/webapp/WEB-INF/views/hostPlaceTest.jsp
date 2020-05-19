<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html data-is-hyperloop="true" lang="ko" dir="ltr"
	xmlns:fb="http://ogp.me/ns/fb#" class="js-focus-visible">
<head>

</head>
<body class="with-new-header">
	<c:import url="./template/boot.jsp"></c:import>
	<c:import url="./template/placeHeader.jsp"></c:import>

	<!-- ajax -->
	<form action="./place/placeRegister" method="get">
		<div class="_13x7hnca">
			<div class="_1v3ttpa">
				<div class="_d1hh0fe">
					<div class="_zjh8gb">
						<div class="_1mbllh6j">
							<div class="_s1tlw0m">등록하실 숙소 이름은 무엇인가요?</div>
						</div>

						<input class="input-block" id="placeName" type="text"
							placeholder="예) 깨끗한 홍대 숙소" value="">

						<div class="_1mbllh6j">
							<div class="_s1tlw0m">등록하실 숙소 종류는 무엇인가요?</div>
						</div>

						<div style="margin-bottom: 8px;">
							<div class="_3407vyo">숙소 형태를 정해주세요.</div>
						</div>

						<div class="_wlf6154">
							<div class="select-block select-jumbo">
								<div class="_y9ev9r">
									<select id="placeType" class="_bwyiq2l">
										<option value="0" disabled="">하나를 선택해주세요.</option>
										<option value="apartments">아파트</option>
										<option value="houses">주택</option>
										<option value="secondary_units">별채</option>
										<option value="unique_homes">독특한 숙소</option>
										<option value="bnb">B&amp;B</option>
										<option value="boutique_hotels_and_more">부티크 호텔</option>
									</select>
								</div>
							</div>
						</div>

						<div class="_1mbllh6j">
							<div class="_s1tlw0m">숙소에 얼마나 많은 인원이 숙박할 수 있나요?</div>
						</div>

						<div class="_wlf6154">
							<div class="_y9ev9r">
								<select id="placeMaxGuest" name="bedrooms" class="_bwyiq2l"><option
										value="0">1명</option>
									<option value="1">2명</option>
									<option value="2">3명</option>
									<option value="3">4명</option>
									<option value="4">4명</option>
									<option value="5">5명</option>
									<option value="6">6명</option>
									<option value="7">7명</option>
									<option value="8">8명</option>
									<option value="9">9명</option>
									<option value="10">10명</option>
								</select>
							</div>
						</div>



						<label for="bedroom-select" class="text-gray">게스트가 사용할 수
							있는 침대는 몇 개인가요?</label>

						<div class="_wlf6154">
							<div class="_y9ev9r">
								<select id="bed" name="bedrooms" class="_bwyiq2l"><option
										value="0">침대 0개</option>
									<option value="1">침대 1개</option>
									<option value="2">침대 2개</option>
									<option value="3">침대 3개</option>
									<option value="4">침대 4개</option>
									<option value="5">침대 5개</option>
									<option value="6">침대 6개</option>
									<option value="7">침대 7개</option>
									<option value="8">침대 8개</option>
									<option value="9">침대 9개</option>
									<option value="10">침대 10개</option>
								</select>
							</div>
						</div>

						<div class="_1mbllh6j">
							<div class="_s1tlw0m">화장실 수</div>
						</div>

						<div class="_wlf6154">
							<div class="_y9ev9r">
								<select id="bathroom" name="bedrooms" class="_bwyiq2l"><option
										value="0">1개</option>
									<option value="1">1개</option>
									<option value="2">2개</option>
									<option value="3">3개</option>
									<option value="4">4개</option>
									<option value="5">5개</option>
									<option value="6">6개</option>
									<option value="7">7개</option>
									<option value="8">8개</option>
									<option value="9">9개</option>
									<option value="10">10개</option>
								</select>
							</div>
						</div>
						<!-- 						<div class="_1mbllh6j"> -->
						<!-- 							<div id="FMP-target" class="_s1tlw0m">등록하실 숙소 사진을 등록하세요.</div> -->
						<!-- 						</div> -->

						<!-- 						<input type="file" class="form-control" id="placeImage" -->
						<!-- 							placeholder="Enter Age" name="avatar"> -->
					</div>
	</form>
	<!-- End ajax -->

	<div class="_qf0qx1">
		<div class="_1p6jycm">
			<div class="_8o5r2pt">
				<div class="_ryxbi1">

					<div>
						<div class="_1hg3y9zo"></div>
					</div>

					<div class="_1hfa947x">

						<div class="_ni9axhe">
							<span class="_1p3joamp"> <a href="./" class="_1ibla9ke">뒤로
							</a></span>
						</div>

						<div class="_10ejfg4u"></div>
						<button class="_kt3i5a4">
							<span class="_d0z9t8r">다음</span>
						</button>
					</div>

				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
	var getTxt = document.getElementById("placeType");
	var text = getTxt.options[getTxt.selectedIndex].text;
	
	</script>

</body>
</html>