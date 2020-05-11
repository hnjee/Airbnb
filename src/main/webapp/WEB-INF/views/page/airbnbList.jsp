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
											
						<div aria-hidden="false" class="_twmmpk">
						<div itemprop="itemList" itemscope="" itemtype="http://schema.org/ItemList" data-container-name="explore" class="_19qnt1y">
							
							<!-- 사진 리스트 나오기 전 start -->
							<div class="_1gw6tte">
							<div class="_uhpzdny" style="background-color: transparent;">
								<div>
									<div style="margin-top: 24px;">
									<div>
									</div>
									</div>
									
									<div id="FMP-target">
									<div>
									<div class="_1osdpxql">
										<div>
										<div class="_1h6n1zu" style="display: inline-block; vertical-align: bottom; height: 40px; width: 40px; min-height: 1px;">
										<img class="_9ofhsl" aria-hidden="true" alt="" src="https://a0.muscache.com/airbnb/static/packages/icon-uc-alarm.e0a2b02f.gif" data-original-uri="https://a0.muscache.com/airbnb/static/packages/icon-uc-alarm.e0a2b02f.gif" style="object-fit: cover; vertical-align: bottom;">
										<div class="_15p4g025" style="background-image: url(&quot;https://a0.muscache.com/airbnb/static/packages/icon-uc-alarm.e0a2b02f.gif&quot;); background-size: cover;">
										</div>
										</div>
										</div>
										
										<div class="_bt5sor">
											<div class="_t14y33i">예약에 앞서 여행 제한 사항을 확인하세요.</div>
											<div class="_1tveefj1">에어비앤비 커뮤니티의 건강과 안전이 최우선입니다. 정부 지침을 준수하고 꼭 필요한 경우에만 여행하실 것을 부탁드립니다.</div>
											<a target="_blank" href="/help/topic/1418/government-travel-restrictions-and-advisories" class="_11quzyuw">
											<span class="_1a5re9s">자세히 알아보기 </span>
											</a>
										</div>
									</div>
									</div>
									</div>
								</div>
							</div>
							</div>					
							<!-- 사진 리스트 나오기 전 end -->
							
							<!-- 사진 포함 리스트 start -->
							<div class="_1gw6tte">
							<div class="_uhpzdny" style="background-color: transparent;">
							<div>
								<div style="margin-top: 24px;">
								<div>
								</div>
								</div>
								
								<div><div><div><div>		
								<div class="_fhph4u">
									<!-- _8ss웅앵이 각 숙소 하나하나 의미 -->
									<div class="_8ssblpx">
										<div class="_gig1e7">
										<div itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
											<div>
											<div class="_dx669kc">
												
												<!-- 컨텐츠 안 사진 -->
												<div class="_1nz9l7j">
												<div class="_mcb8gr">
												<div class="_e296pg">
												
													<div class="_13ky0r6y" style="padding-top: 66.6667%; background: rgb(216, 216, 216);">
													<div class="_1szwzht">
													
														<span>
														<div class="_ttw0d">
														<a href="" target="listing_43081036" aria-hidden="true" tabindex="-1" aria-label="[OPEN] #아지트5.3# Healing camp &amp; Home cinema 신논현역 1분" class="_15tommw"></a>
															<div class="_yydl86">
															<div class="_1na7kj9b">
																<div class="_e296pg" role="img" aria-busy="false" aria-label="[OPEN] #아지트5.3# Healing camp &amp; Home cinema 신논현역 1분" style="width: 100%; height: 100%;">
																<div class="_1i2fr3fi" style="width: 100%; height: 100%; background-image: url(&quot;https://a0.muscache.com/im/pictures/eeebcdf4-c294-4449-978d-68592f3481fb.jpg?aki_policy=large&quot;);">
																</div>
																</div>
															</div>
															</div>
														</div>
														</span>
													
													</div>
													</div>
													
												</div>

												</div>
												</div>
												<!-- 컨텐츠 안 사진 끝 -->
	
												<!-- 컨텐츠 사진 옆 설명 글 -->
												<div class="_6kiyebe">
													<div class="_4ntfzh" style="margin-bottom: 8px;">
													<div class="_13qbppeg">아파트 전체</div>
													</div>
													
												<div class="_1jbo9b6h" style="line-height: 24px; max-height: 24px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 1; -webkit-box-orient: vertical;">
													[OPEN] #아지트5.3# Healing camp &amp; Home cinema 신논현역 1분</div>
												<div class="_1ulsev2" style="margin-top: 12px;">인원 2명<span aria-hidden="true"> · </span>
												침실 1개<span aria-hidden="true"> · </span>침대 1개<span aria-hidden="true"> · </span>욕실 1개
												</div>
												
												<div class="_1ulsev2" style="margin-top: 4px;">주방<span aria-hidden="true"> · </span>
												무선 인터넷<span aria-hidden="true"> · </span>난방</div>
												
													<div class="_viapsj">
													<div></div>
													<div class="_l2ulkt8">
													
													<div class="_zkkcbwd">
														<span>
														<span class="_1p7iugi">
														<span class="_krjbj">가격:</span>
														₩56,610</span>/1박
														</span>
													</div>
													
													<div class="_vsjqit" style="margin-top: 2px;">
														<span class="_krjbj">가격:</span>
														<span class="_1llb8an">총 요금: ₩56,610</span>
														<span class="_1ici1i3">
														<div class="_17y0hv9" role="presentation">
															<div role="button" tabindex="-1" aria-expanded="false">
															<div class="_ab0zex">
																<button aria-expanded="false" aria-label="요금 내역과 숙소 요금 도움말" type="button" class="_axhm01">
																<span class="_3hmsj">
																	<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 12px; width: 12px; display: block; fill: rgb(34, 34, 34);">
																	<path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd">
																	</path>
																	</svg>
																</span>
																</button> 
															</div>
															</div>
														</div>
														</span>
													</div>
													</div>
													</div>
												</div>
												<!-- 사진 옆 설명 글 끝 -->												
											</div>
											
											<div style="margin-top: 0px; margin-bottom: 0px;">
												<div class="_7qp4lh"></div>
											</div>
											
											
											</div>
										
										</div>
										</div>
									</div>
								</div>
								</div></div></div></div>
							</div>
							</div>
							</div>
							<!-- 사진 포함 리스트 end -->
					</div>
					<!-- 왼쪽 리스트 끝 -->
				
				</div>
				</div>
				
				
					<!-- 리스트 이동 -->
					<!-- 리스트 이동 끝 -->
					
					<!-- 지도 불러오기 -->
					<div aria-hidden="false" class="_10v3f8y9">
					<aside aria-label="검색 기반 위치 핀이 표시되는 지도" class="_zdxht7" style="height: 100vh; padding-top: 80px; margin-top: -80px; position: sticky; top: 0px;">
					<div data-veloute="map/GoogleMap" style="position: relative; width: 100%; height: 100%;">
						<div style="height: 100%; background-color: rgb(230, 227, 223); position: relative; overflow: hidden;">
						<div style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
						<div class="gm-style" style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
							
							
								<div id="map" style="z-index: -1;position: absolute;width: 100%;height: 100%;top: 0px;left: 0px;border: none;"></div>
							    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=327fa35f2eae30fcd772f149b123ba65"></script>
								<script>
									var container = document.getElementById('map');
									var options = {
										center: new kakao.maps.LatLng(33.450701, 126.570667),
										level: 3
									};						
									var map = new kakao.maps.Map(container, options);
								</script>
							
							
						</div>
						</div>
						</div>
					</div>
					</aside>
					</div>
					<!-- 지도 불러오기 끝 -->
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