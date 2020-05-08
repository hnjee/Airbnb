<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="./template/boot.jsp"></c:import>

<link rel="stylesheet" type="text/css" href="./resources/css/searchStyle.css">

<link href='./resources/static/fullcalendar/packages/core/main.css' rel='stylesheet' />
<link href='./resources/static/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
<script src='./resources/static/fullcalendar/packages/core/main.js'></script>
<script src='./resources/static/fullcalendar/packages/daygrid/main.js'></script>
<script src='./resources/static/fullcalendar/packages/interaction/main.js'></script>

<script src='./resources/js/fullcalendar.js'></script>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


</head>
<body>

<h1>Index Page</h1>

	<div class="_3hmsj">
		<div class="_w3h6x6">
				<div data-nosnippet="true">
					<div class="_1lveqk8">
					<div>
						<form action="/s/all" method="get" role="search">
						<fieldset class="_pofr66">
							<legend class="_3hmsj">
							<span class="_krjbj">무엇을 찾고 계신가요?</span>
							</legend>
							
							<label for="search-block-tab-true-STAYS" class="_1pv9c53">
							<input class="_1xbe1p9" type="radio" id="search-block-tab-true-STAYS" name="refinement_paths[]" value="/homes" checked="">
							<span class="_t8o8dg" data-text="true">숙소</span>
							</label>
							
							<label for="search-block-tab-true-LONG_TERM_STAYS" class="_1pv9c53">
							<input class="_1xbe1p9" type="radio" id="search-block-tab-true-LONG_TERM_STAYS" name="refinement_paths[]" value="/homes/lts">
							<span class="_t8o8dg" data-text="true">장기 숙박</span>
							</label>
			
							<label for="search-block-tab-true-EXPERIENCES" class="_1pv9c53">
							<input class="_1xbe1p9" type="radio" id="search-block-tab-true-EXPERIENCES" name="refinement_paths[]" value="/experiences">
							<span class="_t8o8dg" data-text="true">체험</span>
							</label>
						</fieldset> 
			
			
			
						<div class="_18yccw0">
							<div class="_1wqpgwk">
								<div class="_2gf2wq">
									<div>
									<div class="_qiizeo">
									<label class="_1c8hz5t" for="bigsearch-query-attached-query">
										<div class="_9bj9d5">위치</div>
										<input class="_1spzot3 location" aria-autocomplete="list" aria-expanded="false" autocomplete="off" autocorrect="off" spellcheck="false" id="bigsearch-query-attached-query" role="combobox" name="query" placeholder="어디로 여행가세요?" value="">
									</label>
									</div>
									</div>
								</div>
							
							<!-- 칸막이 div -->
							<div class="_1pgkncf"></div>
							
							<div class="_2gf2wq">
							<div class="_qiizeo">
								<button class="_esmga25" aria-expanded="false" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
									<div class="_9bj9d5">체크인/체크아웃</div>
									<div class="_4poulv">날짜 추가</div>
								</button>
								
								<div class="_1w7uj89a">
									<div class="collapse" id="collapseExample">
									<div class="_h0l3uxi">
										<div class="_si4jfmp" style="width: 630px;">
											<div id="calendar" style="height: 550px; width: 600px;"></div>
										</div>
									</div>
									
									</div>
								</div>
								
								
							</div>
							</div>
							
							
							
							<div class="_1pgkncf"></div>
							<div class="_2gf2wq">
							<div class="_qiizeo">
								<button class="_esmga25" aria-expanded="false" type="button" data-toggle="collapse" data-target="#collapseGuest" aria-expanded="false" aria-controls="collapseExample">
									<div class="_9bj9d5">인원</div>
									<div class="_4poulv">게스트 추가</div>
								</button>
								
								<!-- 게스트 추가 -->
							
							<div class="_ldg0rdd">
							<div class="collapse" id="collapseGuest">
								<div class="_5aut0l">
								
								<div class="_1573fat">								
								<div class="_t0tx82">
								<div class="_1lmb2fq" id="searchFlow-title-label-stepper-adults">성인</div>
								<div class="_ebqknn" id="searchFlow-subtitle-label-stepper-adults">만 13세 이상</div>
								</div>
								
								
								<div class="_3zlfom" id="stepper-adults" role="group" aria-labelledby="searchFlow-title-label-stepper-adults" aria-describedby="searchFlow-subtitle-label-stepper-adults">
									<button class="_11yg8kv" type="button" disabled="" aria-label="값 내리기" aria-describedby="searchFlow-subtitle-label-stepper-adults">
										<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 22px; width: 22px; display: block; fill: currentcolor;">
										<rect height="2" rx="1" width="12" x="6" y="11"></rect>
										</svg>
									</button>
									
									<div class="_1665lvv">
										<span aria-hidden="true">0</span>
										<span class="_5afswi" aria-live="off">0개 이상의 성인</span>
									</div>
									
									<button class="_11yg8kv" type="button" aria-label="값 올리기" aria-describedby="searchFlow-subtitle-label-stepper-adults">
										<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 22px; width: 22px; display: block; fill: currentcolor;">
										<rect height="2" rx="1" width="12" x="6" y="11"></rect>
										<rect height="12" rx="1" width="2" x="11" y="6"></rect>
										</svg>
									</button>								
								</div>								
								<span aria-atomic="true" aria-live="polite" class="_krjbj"></span>
								</div>
								
								
								<div class="_1573fat">
									<div class="_t0tx82">
										<div class="_1lmb2fq" id="searchFlow-title-label-stepper-children">어린이</div>
										<div class="_ebqknn" id="searchFlow-subtitle-label-stepper-children">2~12세</div>
									</div>
									
									<div class="_3zlfom" id="stepper-children" role="group" aria-labelledby="searchFlow-title-label-stepper-children" aria-describedby="searchFlow-subtitle-label-stepper-children">
										<button class="_11yg8kv" type="button" disabled="" aria-label="값 내리기" aria-describedby="searchFlow-subtitle-label-stepper-children">
											<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 22px; width: 22px; display: block; fill: currentcolor;">
											<rect height="2" rx="1" width="12" x="6" y="11"></rect>
											</svg>
										</button>
									
									<div class="_1665lvv">
										<span aria-hidden="true">0</span>
										<span class="_5afswi" aria-live="off">0개 이상의 어린이</span>
									</div>
									
									<button class="_11yg8kv" type="button" aria-label="값 올리기" aria-describedby="searchFlow-subtitle-label-stepper-children">
										<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 22px; width: 22px; display: block; fill: currentcolor;">
										<rect height="2" rx="1" width="12" x="6" y="11"></rect><rect height="12" rx="1" width="2" x="11" y="6"></rect>
										</svg>
									</button>							
									</div>																
									<span aria-atomic="true" aria-live="polite" class="_krjbj"></span>
								</div>
								
								<div class="_1573fat">
									<div class="_t0tx82">
										<div class="_1lmb2fq" id="searchFlow-title-label-stepper-infants">유아</div>
										<div class="_ebqknn" id="searchFlow-subtitle-label-stepper-infants">2세 미만</div>
									</div>
									
									<div class="_3zlfom" id="stepper-infants" role="group" aria-labelledby="searchFlow-title-label-stepper-infants" aria-describedby="searchFlow-subtitle-label-stepper-infants">
										<button class="_11yg8kv" type="button" disabled="" aria-label="값 내리기" aria-describedby="searchFlow-subtitle-label-stepper-infants">
											<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 22px; width: 22px; display: block; fill: currentcolor;">
											<rect height="2" rx="1" width="12" x="6" y="11"></rect>
											</svg>
										</button>
									
										<div class="_1665lvv">
											<span aria-hidden="true">0</span>
											<span class="_5afswi" aria-live="off">0개 이상의 유아</span>
										</div>
										
										<button class="_11yg8kv" type="button" aria-label="값 올리기" aria-describedby="searchFlow-subtitle-label-stepper-infants">
											<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 22px; width: 22px; display: block; fill: currentcolor;">
											<rect height="2" rx="1" width="12" x="6" y="11"></rect>
											<rect height="12" rx="1" width="2" x="11" y="6"></rect>
											</svg>
										</button>
									</div>
									<span aria-atomic="true" aria-live="polite" class="_krjbj"></span>
								</div>
								</div>
								</div>
							</div>

							
							<!-- 게스트 추가 end -->
								
							</div>	
							
							</div>
							</div>
							
							
							
							<div class="_h6px0p">
								<button type="submit" class="_jpp2dbp">
								
									<span class="_163rr5i">
									<span class="_m9v25n" style="background-position: calc((100 - var(--mouse-x, 0)) * 1%) calc((100 - var(--mouse-y, 0)) * 1%);"></span>
									</span>
					
									<span class="_tcp689">
										<span class="_14d5b3i">
										<span class="_1d2qgpf">
											<svg aria-hidden="true" role="presentation" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" style="display: block; fill: none; height: 12px; width: 12px; stroke: currentcolor; stroke-width: 5.33333; overflow: visible;">
											<g fill="none">
											<path d="m13 24c6.0751322 0 11-4.9248678 11-11 0-6.07513225-4.9248678-11-11-11-6.07513225 0-11 4.92486775-11 11 0 6.0751322 4.92486775 11 11 11zm8-3 9 9">
											</path>
											</g>
											</svg>
										</span>
										
										<span class="_3hmsj0">검색</span>
										</span>
									 </span>
								 </button>
				 			</div>
				 		</div>
				 		</form>
				 </div>
				 </div>
			 </div>
		 </div>
	</div>
	

<div id="calendar" style="height: 550px; width: 600px;"></div>

<script type="text/javascript">
	$('#add').click(function(){
		alert("click");
		
	});
	


	$(".location").keyup(function(){
		var inputLength = $(this).val().length;
		console.log(inputLength);
		});

</script>



</body>
</html>