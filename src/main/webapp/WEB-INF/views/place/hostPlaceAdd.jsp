<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html data-is-hyperloop="true" lang="ko" dir="ltr"
	xmlns:fb="http://ogp.me/ns/fb#" class="js-focus-visible">
<head>
</head>
<body class="with-new-header">
	<c:import url="../template/boot.jsp"></c:import>
	<c:import url="../template/placeHeader.jsp"></c:import>

	<div class="_13x7hnca">
		<div class="_1v3ttpa">
			<div class="_d1hh0fe">

				<!-- ajax -->
				<div class="_zjh8gb" id="ajaxContents">

					<div class="_1mbllh6j">
						<div class="_s1tlw0m">등록하실 숙소 이름은 무엇인가요?</div>
					</div>

					<input class="input-block" id="placeName" type="text"
						placeholder="예) 깨끗한 홍대 숙소">

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
									<option value="아파트">아파트</option>
									<option value="주택">주택</option>
									<option value="별채">별채</option>
									<option value="독특한 숙소">독특한 숙소</option>
									<option value="bnb">B&amp;B</option>
									<option value="부티크 호텔">부티크 호텔</option>
								</select>
							</div>
						</div>
					</div>

					<div class="_1mbllh6j">
						<div class="_s1tlw0m">숙소에 얼마나 많은 인원이 숙박할 수 있나요?</div>
					</div>

					<div class="_wlf6154">
						<div class="_y9ev9r">
							<select id="placeMaxGuest" name="placeMaxGuest" class="_bwyiq2l"><option
									value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</div>
					</div>



					<label for="bedroom-select" class="text-gray">게스트가 사용할 수 있는
						침대는 몇 개인가요?</label>

					<div class="_wlf6154">
						<div class="_y9ev9r">
							<select id="bed" name="bedrooms" class="_bwyiq2l"><option
									value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</div>
					</div>

					<div class="_1mbllh6j">
						<div class="_s1tlw0m">화장실 수</div>
					</div>

					<div class="_wlf6154">
						<div class="_y9ev9r">
							<select id="bathroom" name="bathroom" class="_bwyiq2l"><option
									value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</div>
					</div>
				</div>
				<!-- End ajax -->

				<div class="_qf0qx1">
					<div class="_1p6jycm">
						<div class="_8o5r2pt">
							<div class="_ryxbi1">

								<div>
									<div class="_1hg3y9zo"></div>
								</div>

								<div class="_1hfa947x">
									<div class="_ni9axhe"></div>
									
									<div id="test1">
									<button class="_kt3i5a4" id="previous">이전</button>
									</div>
									<div class="_10ejfg4u"></div>

									<button class="_kt3i5a4" id="nextPage">다음</button>

								</div>

							</div>
						</div>
					</div>
				</div>

				<script type="text/javascript">
					var curPage = 1;

					$('#previous').on('click', function() {
						
						if (curPage == 2) {
							$.post("addPlace1", function(result) {
								result = result.trim();
								$('#ajaxContents').html(result);
							});
							curPage--;
						} else if (curPage == 3) {
							$.post("addPlace2", function(result) {
								result = result.trim();
								$('#ajaxContents').html(result);
							});
							curPage--;
							$('#nextPage').html("다음");
						}

					});

					$('#nextPage').on('click', function() {
						if (curPage == 1) {
							var placeNameTxt = $('#placeName').val();
							var typeSelected = $('#placeType').val();
							var MaxGuestSelected = $('#placeMaxGuest').val();
							var bedSelected = $('#bed').val();
							var bathroomSelected = $('#bathroom').val();

							if(placeNameTxt == ''){
								alert("숙소 이름을 등록해주세요.");
								return false;
							}
							
							$.post("addPlace2", {
								placeName : placeNameTxt,
								placeType : typeSelected,
								placeMaxGuest : MaxGuestSelected,
								bed : bedSelected,
								bathroom : bathroomSelected
							}, function(result) {
								result = result.trim();
								$('#ajaxContents').html(result);
							});
							curPage++;
						} else if (curPage == 2) {
							var placeNameTxt = $('#placeName').val();
							var typeSelected = $('#placeType').val();
							var MaxGuestSelected = $('#placeMaxGuest').val();
							var bedSelected = $('#bed').val();
							var bathroomSelected = $('#bathroom').val();

							var placePriceTxt = $('#placePrice').val();
							var placeDescTxt = $('#placeDesc').val();
							var placeRuleTxt = $('#placeRule').val();
							var checkInTimeTxt = $('#checkInTime').val();
							var checkOutTimeTxt = $('#checkOutTime').val();

							if(placePriceTxt == ''){
								alert("숙박 비용을 적어주세요.");
								return false;
							}else if(placeDescTxt == ''){
								alert("숙소 정보를 적어주세요.");
								return false;
							}else if(placeRuleTxt == ''){
								alert("숙소 주의사항을 적어주세요.");
								return false;
							}
							
							
							$.post("addPlace3", {
								placeName : placeNameTxt,
								placeType : typeSelected,
								placeMaxGuest : MaxGuestSelected,
								bed : bedSelected,
								bathroom : bathroomSelected,

								placePrice : placePriceTxt,
								placeDesc : placeDescTxt,
								placeRule : placeRuleTxt,
								checkInTime : checkInTimeTxt,
								checkOutTime : checkOutTimeTxt
							}, function(result) {
								result = result.trim();
								$('#ajaxContents').html(result);
							});
							curPage++;
							$('#nextPage').html("다음");
						} else if (curPage == 3) {
							$('#test1').empty();
							var placeNameTxt = $('#placeName').val();
							var typeSelected = $('#placeType').val();
							var MaxGuestSelected = $('#placeMaxGuest').val();
							var bedSelected = $('#bed').val();
							var bathroomSelected = $('#bathroom').val();

							var placePriceTxt = $('#placePrice').val();
							var placeDescTxt = $('#placeDesc').val();
							var placeRuleTxt = $('#placeRule').val();
							var checkInTimeTxt = $('#checkInTime').val();
							var checkOutTimeTxt = $('#checkOutTime').val();

							var placeLocationTxt = $('#placeLocation').val();
							var memberNum = $('#memberNum').val();
							// 							$(location).attr('href','../');

							if(placeLocationTxt == ''){
								alert("숙소 주소를 적어주세요.");
								return false;
							}
							
							$.post("addPlace4", {
								placeName : placeNameTxt,
								placeType : typeSelected,
								placeMaxGuest : MaxGuestSelected,
								bed : bedSelected,
								bathroom : bathroomSelected,

								placePrice : placePriceTxt,
								placeDesc : placeDescTxt,
								placeRule : placeRuleTxt,
								checkInTime : checkInTimeTxt,
								checkOutTime : checkOutTimeTxt,
								placeLocation : placeLocationTxt,
								memberNum : memberNum

							}, function(result) {
								result = result.trim();
								$('#ajaxContents').html(result);

							});
							

							
							curPage++;
							$('#nextPage').html("완료");
						}
					});
				</script>
</body>
</html>