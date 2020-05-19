									//역이름 이런걸로 검색 안되고, 직접 주소 입력해야함
									var loc = "${vo.placeLocation}";	//검색어
									map1();
			
										$('.house1').hover(function(){
										var house1_loc = $('#house1').attr('value');
										console.log(house1_loc);
										loc = house1_loc;
										map1();
									});
								
									function map1(){
										
										var container = document.getElementById('map2');
										var options = {
											center: new kakao.maps.LatLng(33.450701, 126.570667),
											level: 3
										};						
										var map = new kakao.maps.Map(container, options);
										var geocoder = new kakao.maps.services.Geocoder();
										geocoder.addressSearch(loc, function(result, status) {
											
											// 정상적으로 검색이 완료됐으면
											if (status === kakao.maps.services.Status.OK) { 
												var coords = new kakao.maps.LatLng(result[0].y, result[0].x); 
												yy = result[0].x; 
												xx = result[0].y; 
												
												// 결과값으로 받은 위치를 마커로 표시 
												var marker = new kakao.maps.Marker({ map: map, position: coords }); 
																							
												// 인포윈도우로 장소에 대한 설명을 표시
												//var iwContent ='<div style="margin:0 auto;">'+loc+'<br>';
												//var infowindow = new kakao.maps.InfoWindow({
												//	content : iwContent 
												//	}); 
												//infowindow.open(map, marker); 
												
												// 지도의 중심을 결과값으로 받은 위치로 이동 
												map.setCenter(coords); 
												
												// ★ resize 마커 중심 
												var markerPosition = marker.getPosition();
												$(window).on('resize', function(){
													map.relayout();
													map.setCenter(markerPosition); 
												}); 
												
												} else { console.log('에러'); }
										});
									
									};