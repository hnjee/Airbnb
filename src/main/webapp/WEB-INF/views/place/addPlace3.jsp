<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
			  	 <!-- 지도 불러오기 -->
				 <div aria-hidden="false" class="_10v3f8y9">
					<aside aria-label="검색 기반 위치 핀이 표시되는 지도" class="_zdxht7" style="height: 50vh; padding-top: 80px; margin-top: -80px; position: sticky; top: 0px;">
						<div data-veloute="map/GoogleMap" style="position: relative; width: 100%; height: 100%;">
							<div style="height: 100%; background-color: rgb(230, 227, 223); position: relative; overflow: hidden;">
								<div style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
									<div class="gm-style" style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
										<div id="map2" style="z-index: -1;position: absolute;width: 100%;height: 100%;top: 0px;left: 0px;border: none;"></div>
			
									</div>
								</div>
							</div>
						</div>
					</aside>
				</div>

				
				<script type="text/javascript">
				//역이름 이런걸로 검색 안되고, 직접 주소 입력해야함
				var loc = "서울시 마포구 서교동";	//검색어
				map0(loc);
			</script>