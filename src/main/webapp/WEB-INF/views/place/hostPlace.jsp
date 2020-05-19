<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" type="text/css" href="./resources/css/searchBoxStyle.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/searchBoxStyle.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/headerStyle.css"> 
	<link rel="stylesheet" type="text/css" href="./resources/css/index_contents.css">
	<link rel="stylesheet" type="text/css"  href="./resources/css/indexFooter.css"> 
	<link rel="stylesheet" type="text/css"  href="./resources/css/footer.css">
	
<style type="text/css">
	.ajaxMain	{
				width: 550px;
				height: 850px;
				margin: 0px 859px 0px 494px;
				border : 1px solid black;
				}
	._1v3ttpa	{
	-webkit-tap-highlight-color: transparent;
font-size: 14px;
line-height: 1.43;
color: #484848;
-webkit-font-smoothing: antialiased;
font-family: Circular,"나눔 고딕","Nanum Gothic","맑은 고딕","Malgun Gothic","Apple Gothic","돋움",Dotum,"Helvetica Neue",Helvetica,Arial,sans-serif !important;
word-break: keep-all;
box-sizing: border-box;
max-width: 912px !important;
margin: 0 auto !important;
position: relative !important;
}
</style>
	
</head>
<body>

<c:import url="../jsp/hostPlaceHeader.jsp"></c:import>
	<input type="button" id="next" value="next">
	<input type="button" id="previous" value="previous">
<div class="ajaxMain" style="">
	<div class="ajaxContents" id="result">
		
	</div>
	<div class="_1v3ttpa"><div data-testid="lys-main-panel" class="_d1hh0fe" tabindex="-1"><div class="_zjh8gb"><section><div class="_1mbllh6j"><div id="FMP-target" class="_s1tlw0m">등록하실 숙소 종류는 무엇인가요?</div></div><div><div style="margin-top: 32px; margin-bottom: 32px;"><div style="margin-bottom: 8px;"><div class="_3407vyo">우선 범위를 좁혀볼까요?</div></div><div class="select-block select-jumbo"><div class="_9hxttoo"><div style="margin-bottom: 8px;"><label class="_rin72m" for="property-type-group"><div class="_1p3joamp"></div></label></div><div class="_wlf6154"><div class="_y9ev9r"><select id="property-type-group" name="property-type-group" class="_bwyiq2l"><option value="0" disabled="">하나를 선택해주세요.</option><option value="apartments">아파트</option><option value="houses">주택</option><option value="secondary_units">별채</option><option value="unique_homes">독특한 숙소</option><option value="bnb">B&amp;B</option><option value="boutique_hotels_and_more">부티크 호텔</option></select></div><span class="_1idvclr"><svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: rgb(72, 72, 72);"><path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path></svg></span></div></div></div></div><div style="margin-top: 32px; margin-bottom: 32px;"><div class="_3407vyo">건물 유형을 선택하세요</div><div style="margin-top: 8px; margin-bottom: 16px;"><div class="select-block select-jumbo"><div class="_9hxttoo"><div style="margin-bottom: 8px;"><label class="_rin72m" for="property-type-category"><div class="_1p3joamp"></div></label></div><div class="_wlf6154"><div class="_y9ev9r"><select id="property-type-category" name="property-type-category" class="_bwyiq2l"><option value="0" disabled="">건물 유형 선택</option><option value="apartment">아파트</option><option value="condominium">공동주택</option><option value="casa_particular">카사 파르티쿨라르(쿠바)</option><option value="loft">로프트</option><option value="serviced_apartment">레지던스</option></select></div><span class="_1idvclr"><svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: rgb(72, 72, 72);"><path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path></svg></span></div></div></div></div><div id="property-type-definition" class="_1rbmiub1">아파트란 일반적으로 다세대가 거주하는 건물 또는 여러 사람이 함께 거주하는 단지를 의미합니다.</div></div><div style="margin-top: 32px; margin-bottom: 40px;"><div class="_3407vyo">게스트가 묵게 될 숙소 유형을 골라주세요.</div><fieldset class="_128xze2"><legend class="_1gyjybc"><span class="_krjbj">What will guests have?</span></legend><div style="margin-top: 0px; margin-bottom: 0px;"><div style="margin-bottom: 8px; margin-right: 0px;"><label class="_rin72m" for="room_type_select_0"><div class="_1bk57ei1"><div class="_hgs47m"><div class="_1thk0tsb"><div class="_1piwvzxe"><div class="_17y0hv9"><input id="room_type_select_0" class="_1fnnolo" aria-invalid="false" name="room_type_select" type="radio" value="entire_home" checked=""><div data-fake-radio="true" data-style-select="false" data-style-default="true" class="_1myg8yh9"><div class="_165vphy"><svg viewBox="0 0 16 16" role="presentation" aria-hidden="true" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><ellipse cx="8" cy="8" fill-rule="evenodd" rx="8" ry="8"></ellipse></svg></div></div></div></div></div><div class="_n5lh69r"><div class="_hgs47m"><div class="_n5lh69r"><div class="_17h5p1f">집 전체</div><div class="_1sk1regd">게스트가 숙소 전체를 다른 사람과 공유하지 않고 단독으로 이용합니다. 일반적으로 침실, 욕실, 부엌이 포함됩니다.</div></div></div></div></div></div></label></div><div style="margin-bottom: 8px; margin-right: 0px;"><label class="_rin72m" for="room_type_select_1"><div class="_1bk57ei1"><div class="_hgs47m"><div class="_1thk0tsb"><div class="_1piwvzxe"><div class="_17y0hv9"><input id="room_type_select_1" class="_1fnnolo" aria-invalid="false" name="room_type_select" type="radio" value="private_room"><div data-fake-radio="true" data-style-select="false" data-style-default="true" class="_ofejoy"></div></div></div></div><div class="_n5lh69r"><div class="_hgs47m"><div class="_n5lh69r"><div class="_17h5p1f">개인실</div><div class="_1sk1regd">게스트에게 개인 침실이 제공됩니다. 침실 이외의 공간은 공용일 수 있습니다.</div></div></div></div></div></div></label></div><div style="margin-bottom: 8px; margin-right: 0px;"><label class="_rin72m" for="room_type_select_2"><div class="_1bk57ei1"><div class="_hgs47m"><div class="_1thk0tsb"><div class="_1piwvzxe"><div class="_17y0hv9"><input id="room_type_select_2" class="_1fnnolo" aria-invalid="false" name="room_type_select" type="radio" value="shared_room"><div data-fake-radio="true" data-style-select="false" data-style-default="true" class="_ofejoy"></div></div></div></div><div class="_n5lh69r"><div class="_hgs47m"><div class="_n5lh69r"><div class="_17h5p1f">다인실</div><div class="_1sk1regd">게스트는 개인 공간 없이, 다른 사람과 함께 쓰는 침실이나 공용 공간에서 숙박합니다.</div></div></div></div></div></div></label></div></div></fieldset></div><div style="margin-top: 32px; margin-bottom: 32px;"><fieldset class="_128xze2"><legend class="_1gyjybc"><div class="_1p3joamp"><div class="_3407vyo">게스트만 사용하도록 만들어진 숙소인가요?</div></div></legend><div style="margin-top: 16px; margin-bottom: 16px;"><div style="margin-bottom: 8px; margin-right: 0px;"><label class="_4m7syz" for="personal-belonging_0"><div class="_gyif22"><div class="_zkrkb6"><div class="_17y0hv9"><input id="personal-belonging_0" class="_1fnnolo" aria-invalid="false" name="personalBelonging" type="radio" value="keep_personal_belonging_here"><div data-fake-radio="true" data-style-select="false" data-style-default="true" class="_ofejoy"></div></div></div><div class="_1jdtnhle"><div class="_1hdo98h"><div class="_1p3joamp">예. 게스트용으로 따로 마련된 숙소입니다.</div></div></div></div></label></div><div style="margin-bottom: 8px; margin-right: 0px;"><label class="_4m7syz" for="personal-belonging_1"><div class="_gyif22"><div class="_zkrkb6"><div class="_17y0hv9"><input id="personal-belonging_1" class="_1fnnolo" aria-invalid="false" name="personalBelonging" type="radio" value="not_keep_personal_belonging_here" checked=""><div data-fake-radio="true" data-style-select="false" data-style-default="true" class="_1myg8yh9"><div class="_165vphy"><svg viewBox="0 0 16 16" role="presentation" aria-hidden="true" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><ellipse cx="8" cy="8" fill-rule="evenodd" rx="8" ry="8"></ellipse></svg></div></div></div></div><div class="_1jdtnhle"><div class="_1hdo98h"><div class="_1p3joamp">아니요. 제 개인 물건이 숙소에 있습니다.</div></div></div></div></label></div></div></fieldset></div></div></section></div><div class="_qf0qx1"><div class="_1p6jycm"><div class="_1r1bmddh"><div class="_ryxbi1"><div><div class="_9rjppr"></div></div><div class="_1dcqn1vg" style="margin: 16px;"><div class="_1hbsadf"><div class="_1hfa947x"><div class="_ni9axhe"><span class="_1p3joamp"><a href="/become-a-host/43444948" class="_1ibla9ke" aria-busy="false"><div class="_jro6t0"><div class="_rqfxvmb"><div style="margin-right: 8px;"><svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><path d="m13.7 16.29a1 1 0 1 1 -1.42 1.41l-8-8a1 1 0 0 1 0-1.41l8-8a1 1 0 1 1 1.42 1.41l-7.29 7.29z" fill-rule="evenodd"></path></svg></div></div><div class="_rqfxvmb"><div>뒤로</div></div></div></a></span></div><div class="_10ejfg4u"></div><div class="_ni9axhe"><a href="/become-a-host/43444948/bedrooms" class="_kt3i5a4" aria-busy="false"><span class="_d0z9t8r">다음</span></a></div></div></div></div></div></div></div></div><div class="_1d44djw"></div></div></div>
</div>
	<script type="text/javascript">
		var count=1;
		var curpage=1;
		
		$('#next').on('click', function() {
			curpage++;
			alert(curpage);
			$.get("./place/hostPlaceAdd",
				{curpage : curpage},
				function(result) {
				$("#result").empty();
	 			$("#result").append(result);
			});
		});
		
		$('#previous').on('click', function() {
			if(curpage<2){
				alert("첫번째 페이지입니다");
				return false;
			}
			curpage--;
			alert(curpage);
			$.get("./place/hostPlaceAdd",
				{curpage : curpage},
				function(result) {
				$("#result").empty();
	 			$("#result").append(result);
			});
		});
		
// 		function getList(curPage) {
// 			$.get("../place/hostPlaceAdd",
// 					{curpage: curpage},
// 					function(result) {		
// 				$("#result").empty();
// 				$("#result").append(result);
// 			});	
// 		}
				
	
// 		getList(count);
		
		
// 		$("#more").click(function() {
// 			count++;
// 			getList(count);
// 		});
		
	
// 		$("#btn").click(function() {
// 			var writer = $("#writer").val();
// 			var contents = $("#contents").val();
			
// 			$("#writer").val('');
// 			$("#contents").val('');
			
			
// 			//$.get("url?name=value")
// 			//$.post()
// 			$.post("memoInsert", {writer:writer, contents:contents}, function(result) {
// 					result = result.trim();
// 					if(result>0){
// 						location.reload();
// 					}else {
// 						alert("Write Fail");
// 					}
// 			});
			
// 		});
	
	</script>
</body>
</html>