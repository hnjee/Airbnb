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
									value="0">1</option>
								<option value="1">2</option>
								<option value="2">3</option>
								<option value="3">4</option>
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
									value="0">1</option>
								<option value="1">2</option>
								<option value="2">3</option>
								<option value="3">4</option>
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
							<select id="bathroom" name="bedrooms" class="_bwyiq2l"><option
									value="0">1</option>
								<option value="1">2</option>
								<option value="2">3</option>
								<option value="3">4</option>
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

									<button class="_kt3i5a4" id="previous">이전</button>

									<div class="_10ejfg4u"></div>
									<button class="_kt3i5a4" id="nextPage">다음</button>
								</div>

							</div>
						</div>
					</div>
				</div>

				<script type="text/javascript">
					var typeSelect = document.getElementById("placeType");
					var typeSelected = typeSelect.options[typeSelect.selectedIndex].text;

					var MaxGuestSelect = document
							.getElementById("placeMaxGuest");
					var MaxGuestSelected = Number(MaxGuestSelect.options[MaxGuestSelect.selectedIndex].text);

					var bedSelect = document.getElementById("bed");
					var bedSelected = Number(bedSelect.options[bedSelect.selectedIndex].text);

					var bathroomSelect = document.getElementById("bathroom");
					var bathroomSelected = Number(bathroomSelect.options[bathroomSelect.selectedIndex].text);

					var curPage = 1;
					$('#placeName').val();
					$('#previous').on('click', function() {

						alert(typeof MaxGuestSelected);
						alert(typeof bedSelected);
						alert(typeof bathroomSelected);

						if (curPage == 2) {
							curPage--;
							alert("curPage2일떄 previous");
							$('#ajaxContents').empty();
						} else if (curPage == 3) {
							alert("curPage3일떄 previous");
							curPage--;
							$('#ajaxContents').empty();
						}

					});

					$('#nextPage').on('click', function() {
						if (curPage == 1) {
							alert("curPage1일떄 nextPage");

							$.post("addPlace", {
								placeName : $('#placeName').val(),
								placeType : typeSelected,
								placeMaxGuest : MaxGuestSelected,
								bed : bedSelected,
								bathroom : bathroomSelected,
								curPage : curPage
							},
							function(result) {
								$('#ajaxContents').empty();
								$('#ajaxContents').append(result);
							});
							curPage++;

						} else if (curPage == 2) {
							alert("curPage2일떄 nextPage");
							$.post("addPlace", {
								curPage : curPage
							}, function() {
								$('#ajaxContents').empty();
								$('#ajaxContents').append(result);
							});
							curPage++;
						} else if (curPage == 3){
							$.post("addPlace", {curPage : curPage}, function() {
								$('#ajaxContents').empty();
								$('#ajaxContents').append(result);
							});
						}
					});
				</script>
</body>
</html>