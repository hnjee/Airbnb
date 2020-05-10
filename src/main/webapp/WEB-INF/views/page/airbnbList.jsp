<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Airbnb List Page</title>
<c:import url="../template/boot.jsp"></c:import>

<style type="text/css">
	*{
 		box-sizing: border-box;
	}
	body {
	    font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, Helvetica Neue, sans-serif;
	    font-size: 14px;
	    line-height: 1.43;
	    color: #484848;
	    background-color: #fff;
	    margin: 0;
	    -webkit-font-smoothing: antialiased;
	    display: block;
	    box-sizing: border-box;
	}
	div{
		display: block;
	}
</style>

<link rel="stylesheet" type="text/css" href="./resources/css/listHeaderStyle.css">
<link rel="stylesheet" type="text/css" href="./resources/css/listMainStyle.css">
</head>
<body>

<div data-application="true">
	<div dir="ltr">
		<div>
		<div style="--page-shell-max-content-width:none;">
			<div class="_16grqhk">
			
				<!-- Header start -->
				<c:import url="../jsp/listHeader.jsp"></c:import>
				<!-- Header End -->
				
				
				<!-- Main Start -->
				<main id="site-content" tabindex="-1">
				<div class="content-container">
				<div data-container="ExploreLayoutController" id="ExploreLayoutController" class="_1nkqnd0">	
				<div class="_e296pg" style="min-height: calc(100vh - 80px);">
					<!-- 왼쪽 리스트 시작 -->				
					<div class="_8h8epe3">
						<div class="_uhpzdny">
						<div class="_rrw786">
							<section>
								<div class="_1snxcqc">300개 이상의 숙소 · 5월 13일 - 5월 14일 · 게스트 1명</div>
								<div class="_1lbq8dg">
								<h1 tabindex="-1" class="_14i3z6h">강남구의 숙소</h1>
								</div>
							</section>
						</div>
						
						<div class="_rci9mp">
						<div class="_1uuqu9l">
						<div class="_1n8v1oc">
						<div class="_m7x2lq">
						<div>
							<div aria-expanded="false" class="_199wki6">
							<span class="_m9c03w">
							<div role="group" aria-labelledby="filter-menu-chip-group-DLS-chipGroup-label" id="filter-menu-chip-group" class="_3hmsj">
							<div id="filter-menu-chip-group-DLS-chipGroup-label" class="_3hmsj">
							<span class="_krjbj">필터</span>
							</div>
							
							<div class="_jro6t0">
								<div style="display: inline-block;">
								<div>
									<div class="_e296pg">
									<div id="menuItemButton-flexible_cancellation" class="_kmf45x">
										<button class="_1o8pdwg" type="button" aria-invalid="false" aria-pressed="false">
											<span class="_w37zq5" aria-label="유연한 환불 정책">
												<div class="_jro6t0">
												<span class="_36rlri">유연한 환불 정책</span>
												</div>
											</span>
											
											<span aria-hidden="true" class="_hk8epad">
											<span class="_w37zq5" aria-label="유연한 환불 정책">
												<div class="_jro6t0">
												<span class="_36rlri">유연한 환불 정책</span>
												</div>
											</span>
											</span>
										</button>
									</div>
									</div>
								</div>
								</div>
							
								<div style="display: inline-block;">
								<div>
									<div class="_e296pg">
									<div id="menuItemButton-room_type" class="_kmf45x">
										<button class="_1o8pdwg" type="button" aria-invalid="false" aria-pressed="false">
											<span class="_w37zq5" aria-label="숙소 유형">
												<div class="_jro6t0">
												<span class="_36rlri">숙소 유형</span>
												</div>
											</span>
										
											<span aria-hidden="true" class="_hk8epad">
												<span class="_w37zq5" aria-label="숙소 유형">
												<div class="_jro6t0">
												<span class="_36rlri">숙소 유형</span>
												</div>
												</span>
											</span>
										</button>
									</div>
									</div>
								</div>
								</div>
							
								<div style="display: inline-block;">
								<div>
									<div class="_e296pg">
									<div id="menuItemButton-price_range" class="_kmf45x">
										<button class="_1o8pdwg" type="button" aria-invalid="false" aria-pressed="false">
											<span class="_w37zq5" aria-label="요금">
												<div class="_jro6t0">
												<span class="_36rlri">요금</span>
												</div>
											</span>
										
											<span aria-hidden="true" class="_hk8epad">
												<span class="_w37zq5" aria-label="요금">
												<div class="_jro6t0">
												<span class="_36rlri">요금</span>
												</div>
												</span>
											</span>
										</button>
									</div>
									</div>
								</div>
								</div>
							
								<div style="display: inline-block;">
								<div>
									<div class="_e296pg">
									<div id="menuItemButton-instant_book" class="_kmf45x">
										<button class="_1o8pdwg" type="button" aria-invalid="false" aria-pressed="false">
											<span class="_w37zq5" aria-label="즉시 예약">
											<div class="_jro6t0">
											<span class="_36rlri">즉시 예약</span>
											</div>
											</span>
											
											<span aria-hidden="true" class="_hk8epad">
											<span class="_w37zq5" aria-label="즉시 예약">
												<div class="_jro6t0">
												<span class="_36rlri">즉시 예약</span>
												</div>
											</span>
											</span>
										</button>
									</div>
									</div>
								</div>
								</div>
							
								<div id="menuItemButton-dynamicMoreFilters" class="_kmf45x">
									<button class="_1o8pdwg" type="button" aria-invalid="false" aria-pressed="false">
										<span class="_w37zq5" aria-label="필터 추가하기, 필터 0개 적용">필터 추가하기</span>
										<span aria-hidden="true" class="_hk8epad">
										<span class="_w37zq5" aria-label="필터 추가하기, 필터 0개 적용">필터 추가하기</span>
										</span>
									</button>
								</div>
							</div>
							
							</div>
							</span>
							</div>
						</div>
						</div>
						
							<div class="_1b7jvpg"></div>
						</div>
						</div>
						</div>
						</div>
					</div>
					<!-- 왼쪽 리스트 끝 -->
				
				</div>
				</div>
				</div>
				</main>
				
				<!-- Main End -->
				
			</div>			
		</div>
		</div>	
	</div>
</div>





</body>
</html>