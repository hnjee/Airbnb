<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${vo.placeName}</title>
	
	<!-- 화면 css -->
	<link rel="stylesheet" type="text/css" href="../resources/css/selectHeaderStyle.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/placeSelect.css">
	<link rel="stylesheet" type="text/css"  href="../resources/css/footer.css"> 

	<!-- contents부분 template-->
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 	<!-- fullcalendar css-->
 	<link rel="stylesheet" type="text/css" href='../resources/static/fullcalendar/packages/core/main.css' />
	<link rel="stylesheet" type="text/css" href='../resources/static/fullcalendar/packages/daygrid/main.css' />
	<!-- jquery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<style type="text/css">
		body,h1,h2,h3,h4,h5,h6 {
			font-family: "Raleway", Arial, Helvetica, sans-serif;
			color: rgb(72, 72, 72);
		}
		.mySlides {
			display: none
		}
		.w3-container{
			padding: 0;
		}

		._37g0dr4{
			font-family: Circular !important;
		}
		footer{
			box-sizing: content-box !important;
		}
	</style>
</head>
<body>
	
	<!-- Header start -->
	<c:import url="../jsp/selectHeader.jsp"></c:import>
	<!-- Header End --> 
	
	<!-- Main Start -->
	<main id="mainWrap">
		<!-- 1. 위쪽 사진 -->
		<div id="picWrap">
			<!-- 1-1. 대표 사진들 -->
			<div id="pics">
				<div id="pic1">
					<img src="${pageContext.request.contextPath}/resources/images/place/${fileList[0].fileName}" height="712.5" width="951">
				</div>
				<div class="pic2">
					<div class="pic">
						<img src="${pageContext.request.contextPath}/resources/images/place/${fileList[1].fileName}" height="355.5" width="474">
					</div>
					<div class="pic">
						<img  src="${pageContext.request.contextPath}/resources/images/place/${fileList[2].fileName}" height="355.5" width="474">
					</div>
				</div>
				<div class="pic2">
					<div class="pic">
						<img src="${pageContext.request.contextPath}/resources/images/place/${fileList[3].fileName}" height="355.5" width="474">
					</div>
					<div class="pic">
						<img src="${pageContext.request.contextPath}/resources/images/place/${fileList[4].fileName}"  height="355.5" width="474">
					</div>
				</div>
			</div>
			
			<!-- 1-2. 링크 복사 -->
			<div id="btnTop">
				<button class="picBtn" onclick="myFunction()"> 링크복사 </button>
				<script>
				function myFunction() {
				  $("#myInput").attr("type", "text");
				  var copyText = document.getElementById("myInput");
				  copyText.setAttribute("value", window.location.href);
				  console.log(copyText);
				  copyText.select();
				  copyText.setSelectionRange(0, 99999);
				  document.execCommand("copy");
				  $("#myInput").attr("type", "hidden");
				  alert("링크 복사가 완료되었습니다");
				}
			</script>
			</div>
			
			<!-- 1-3. 사진 모두 보기 (모달) -->
			<div id="btnBtm">
				<button class="picBtn" onclick="document.getElementById('id01').style.display='block'"> 사진 모두 보기 </button>
			</div>
			<!-- Picture Modal -->
			<div id="id01" class="w3-modal">
				<div class="w3-modal-content w3-animate-opacity">
			    <div>
			      <div class="w3-container">
		    		<div id="modal_top">
		    		
		    			<span id="curPicNum">1</span>/${fileTotalNum}
		    			<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
		    		</div>
		   	  		<div id="madal_con">
			     		<button id="modal_leftBtn" style="position: absolute; top: 316px; left: 15px"class="w3-button w3-xlarge w3-circle modalBtn"> <svg aria-hidden="true" role="presentation" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" style="display: block; fill: none; height: 12px; width: 12px; stroke: currentcolor; stroke-width: 5.33333; overflow: visible;"><g fill="none"><path d="m20 28-11.29289322-11.2928932c-.39052429-.3905243-.39052429-1.0236893 0-1.4142136l11.29289322-11.2928932"></path></g></svg> </button>
						<c:catch>
							<c:forEach items="${fileList}" var="file" varStatus="status">	
								<img class="modal_img" id="img${status.count}" src="${pageContext.request.contextPath}/resources/images/place/${file.fileName}">
							</c:forEach>
						</c:catch>
			     		<button id="modal_rightBtn" style="position: absolute; top: 316px; left:1252px;"class="w3-button w3-xlarge w3-circle modalBtn"> <svg aria-hidden="true" role="presentation" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" style="display: block; fill: none; height: 12px; width: 12px; stroke: currentcolor; stroke-width: 5.33333; overflow: visible;"><g fill="none"><path d="m12 4 11.2928932 11.2928932c.3905243.3905243.3905243 1.0236893 0 1.4142136l-11.2928932 11.2928932"></path></g></svg> </button>
		     		</div>
			      </div>
			    </div>
			    </div>
			</div>
			<script>
				// Get the modal
				var modal = document.getElementById('id01');
				
				// When the user clicks anywhere outside of the modal, close it
				$(document).click(function(e){
					if(e.target == modal){
						modal.style.display = "none";	
					}
				});
				
				//처음 세팅 
				var imgNum = 1;
				$('#curPicNum').html(imgNum);
				$('#img1').addClass('show');
				
				//버튼 클릭시 세팅
				$('#modal_leftBtn').click(function(){
					var imgNum = $('#curPicNum').html();
					$('#img'+imgNum).removeClass('show');
		
					if(imgNum>1){
						imgNum--;
					} 
					$('#curPicNum').html(imgNum);
					$('#img'+imgNum).addClass('show');
				});
				
				$('#modal_rightBtn').click(function(){
					var imgNum = $('#curPicNum').html();
					$('#img'+imgNum).removeClass('show');
		
					if(imgNum<'${fileTotalNum}'){
						imgNum++;
					} 
					$('#curPicNum').html(imgNum);
					$('#img'+imgNum).addClass('show');
				});
			</script>
		</div>
		
		
		<!-- 2. 아래쪽 설명/예약 -->
		<div id="descWrap">
			<!-- 2-1. 왼쪽 설명 파트-->
			<div id="desc">	
				<div id="desc_title">
				  	<div id="titLeft">
				  		<div id="mainTit">
				  			${vo.placeName}
				  		</div>
						<div id="subTit">
							<a href="">${vo.placeLocation}</a>
						</div>
				  	</div>
				  	
					<div id="titRight">
						<div id="hostPic">
							<img src="${pageContext.request.contextPath}/resources/images/member/${hostFile.fileName}" height="64" width="64">
						</div>
						<div id="hostName">
							${vo.name}
						</div>
					</div>
			 	</div>
			   
				<div class="w3-container">
				    <hr>
				    <h4><strong>The space</strong></h4>
				    <div class="w3-row w3-large">
				      <div class="w3-col s6">
				        <p><i class="fa fa-fw fa-male"></i> Max people: ${vo.placeMaxGuest}</p>
				        
				        <p><i class="fa fa-fw fa-bath"></i> Bathrooms: ${vo.bathroom}</p>
				        <p><i class="fa fa-fw fa-bed"></i> Bed: ${vo.bed}</p>
				      </div>
				      <div class="w3-col s6">
				        <p><i class="fa fa-fw fa-clock-o"></i> Check In: After ${vo.checkInTime}:00</p>
				        <p><i class="fa fa-fw fa-clock-o"></i> Check Out: ${vo.checkOutTime}:00</p>
				      </div>
				    </div>
				    <hr>
				    
				    <h4><strong>Amenities</strong></h4>
					 <div class="w3-row w3-large">
				      <div class="w3-col s6">
				        <p id="am1" ><i class="fa fa-fw fa-shower"></i> Shower</p>
				        <p id="am2" ><i class="fa fa-fw fa-wifi"></i> WiFi</p>
				        <p id="am3"><i class="fa fa-fw fa-tv"></i> TV</p>
				      </div>
				      <div class="w3-col s6">
				        <p id="am4" style="display:none;"><i class="fa fa-fw fa-cutlery"></i> Kitchen</p>
				        <p id="am5" style="display:none;"><i class="fa fa-fw fa-thermometer"></i> Heating</p>
				        <p id="am6" style="display:none;"><i class="fa fa-fw fa-wheelchair"></i> Accessible</p>
				      </div>
				    </div>
					<hr>
					<!-- 숙소에 해당하는 Amenities만 받아와서 표시하는 스크립트 -->
					<script type="text/javascript">
						var list = new Array();
	
						//javascript Jquery에서 컨트롤러로부터 받은 List 객체를 넘겨줄 경우 다음과 같이 JSTL을 혼용하여 사용할 수 있다.
						<c:forEach items="${amenities}" var="am">
							list.push("${am.amenityKind}");
						</c:forEach>
						for(var i=0; i<list.length; i++){
							$('#am'+list[i]).addClass('show');
						}
					</script>
					
				    <h4><strong>호스트의 숙소 소개</strong></h4>
				   	<p style="white-space:pre-line;">${vo.placeDesc}</p>
				    <p style="margin-top:10px;">We accept: <i class="fa fa-credit-card w3-large"></i> <i class="fa fa-cc-mastercard w3-large"></i> <i class="fa fa-cc-amex w3-large"></i> <i class="fa fa-cc-cc-visa w3-large"></i><i class="fa fa-cc-paypal w3-large"></i></p>
				  </div>
				  <hr>
			  
				  <!-- 예약 가능 여부 -->
				  <h4><strong>예약 가능 여부</strong></h4>
				  <div id="selectCalendar"><!-- 달력 --></div>
				  <a id="target"></a>
				  <hr>

			   	 <!-- Review -->
				 <h4><strong>후기</strong></h4>	
			     <div class="review">	    
			    	<div class="review_rating">
			    		<div class="review_rating_1"> 
			    			<div style="width:18px; height:25px; line-height:20px;">
			    			<img style="width:15px; height:12px; vertical-align: middle;"src="data:image/svg+xml,%3Csvg viewBox='0 0 1000 1000' xmlns='http://www.w3.org/2000/svg' fill='%23008489'%3E%3Cpath d='M972 380c9 28 2 50-20 67L725 619l87 280c11 39-18 75-54 75-12 0-23-4-33-12L499 790 273 962a58 58 0 0 1-78-12 50 50 0 0 1-8-51l86-278L46 447c-21-17-28-39-19-67 8-24 29-40 52-40h280l87-279c7-23 28-39 52-39 25 0 47 17 54 41l87 277h280c24 0 45 16 53 40z'/%3E%3C/svg%3E"/>
			    			</div>
			    			<div style="padding-right: 15px;  text-align: center;">${rateAvg}</div>
			    		</div>
			    		<div class="review_rating_1" style="height: 12px !important; border-right: 1px solid rgb(235, 235, 235) !important; position:relative; top:8px; "></div>
			    		<div class="review_rating_1" style="padding-left:13px;">${reviewCnt} <span style="font-weight:normal;">후기</span></div>
			    	
			    		<div class="review_search">
			    			<div style="width:154px; height:34px; padding: 6px 7px; box-sizing: border-box; overflow: hidden;">
			    				<input type="text" id="search" placeholder="후기 검색" style=" outline-style: none;">
			    			</div>
			    			<div id="searchBtn" style="width:31px; height: 34px; padding: 6px 0;">
			    				<button id="goSearch" type="button" style="background: none; border: none; padding-left: 5px; padding-right: 5px;">
			    					<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><path d="m10.4 18.2c-4.2-.6-7.2-4.5-6.6-8.8.6-4.2 4.5-7.2 8.8-6.6 4.2.6 7.2 4.5 6.6 8.8-.6 4.2-4.6 7.2-8.8 6.6m12.6 3.8-5-5c1.4-1.4 2.3-3.1 2.6-5.2.7-5.1-2.8-9.7-7.8-10.5-5-.7-9.7 2.8-10.5 7.9-.7 5.1 2.8 9.7 7.8 10.5 2.5.4 4.9-.3 6.7-1.7v.1l5 5c .3.3.8.3 1.1 0s .4-.8.1-1.1" fill-rule="evenodd"></path></svg>
			    				</button>
			    			</div>
			    		</div>
			   		</div>
			   		
			   		<div id="reviews">
				   		<c:forEach items="${reviewList}" var="review">
							<div class="review_one" style="margin-top:20px;">
						    	<div class="review_user">
						  	  		<div class="review_user_pic">
						    			<img src="${pageContext.request.contextPath}/resources/images/member/${review.fileName}" height="48" width="48">
						    		</div>
						    		<div class="review_user_info" style="margin-left:16px;  font-family: Circular">
						    			<div style="font-weight: bold;">${review.name}</div>
						    			<div>${review.reviewDate}</div>
						    		</div>
						    	</div>
						    	<div class="review_content">
						    		${review.reviewDesc} 
						    	</div>
						    	<hr>
						  	</div>					
						</c:forEach>
						<div style="margin-bottom: 30px;">
							<div class="pagination">
								<c:if test="${reviewCnt eq 0}">
									<div style="margin-top:10px;"></div>
								</c:if>
								
								<c:if test="${reviewCnt ne 0}">
									<c:if test="${pager.curBlock gt 1}">
										 <span class="front" title="${pager.startNum}"> <a href="#target"> < </a> </span> 					
									</c:if>
									<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
										<c:if test="${pager.curPage eq i}">
											<span title="${i}" class="pages"> <a class="active" href="#target">${i}</a></span>
										</c:if>
										<c:if test="${pager.curPage ne i}">
											<span title="${i}" class="pages"> <a href="#target">${i}</a></span>
										</c:if>
									</c:forEach>
									<c:if test="${pager.curBlock lt pager.totalBlock}">
										<span class="back" title="${pager.lastNum}"> <a href="#target"> > </a> </span> 
									</c:if>
								</c:if>
							</div>
						</div>
					</div>
				</div>
				
			     <!-- review ajax -->
				 <script type="text/javascript">	
				 	var search="";
					$("#reviews").on("click", ".pages",function(){
						var curPage = $(this).attr("title");
						$(this).addClass("active");
						$.get("getReview?placeNum=${vo.placeNum}&search="+search+"&curPage="+curPage, function(result){
							$("#reviews").html(result);
						});
					});
					$("#reviews").on("click",".front",function(){
						var startNum = parseInt($(this).attr("title"))-1;
						$.get("getReview?placeNum=${vo.placeNum}&search="+search+"&curPage="+startNum, function(result){
							
							$("#reviews").html(result);
						});
					});
					$("#reviews").on("click", ".back",function(){
						var lastNum = parseInt($(this).attr("title"))+1;
						$.get("getReview?placeNum=${vo.placeNum}&search="+search+"&curPage="+lastNum, function(result){
							$("#reviews").html(result);
						});
					});
					
					$("#searchBtn").on("click", "#goSearch", function(){
						search = $("#search").val();
						$.get("getReview?placeNum=${vo.placeNum}&search="+search, function(result){
							$("#reviews").html(result);
						});
					});
				</script>
			  
				 <!-- Map API -->
			 	 <h4><strong>${vo.placeLocation}</strong></h4>
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
				 <!-- 지도 불러오기 끝 -->
			 	 <p style="margin-top:10px;">정확한 위치 정보는 예약이 확정된 후 알려드립니다.</p>
			   	 <hr>
			 
			 
			     <!-- Host 소개 -->
			    <div id="hostInfo">
			    	<div id="hostInfo1">
			    		<div id="hostInfoDesc">
			    			<h4 style="margin: 0 0 8px 0;"><strong>Host: ${vo.name}님 </strong></h4>
			    			South Korea, 한국 · 회원 가입: 2016년 5월
			    		</div>
			    		<div id="hostInfoPic">
			    			<img src="${pageContext.request.contextPath}/resources/images/member/${hostFile.fileName}" height="64" width="64">
			    		</div>
			    	</div>
			    	<div id="hostInfo2"> ★ 후기 ${reviewCnt}개 </div>
			    	<div id="hostInfo4" style="margin-top: 15px; white-space:pre-line;"> ${vo.hostDesc} </div>
			    	
			    	<div id="hostInfo3">
			    		<button class="sendMessage">호스트에게 연락하기</button>
			    	</div>
			    	 <!-- 클릭하면 이메일 전송 -->
			    	  <hr>
			    </div>
			   	 
			     <!-- 숙소 이용 규칙 -->
			    <h4><strong>숙소 이용규칙</strong></h4>
			    <p style="white-space:pre-line;">${vo.placeRule}</p>
			</div>
		
			<!-- 2-2. 오른쪽 예약 파트-->
			<div id="resWrap">
				<div id="banner">
					<div id="res">
					<div id="res1">
						<div id="res1_1">
							<span id="afterCost">₩${vo.placePrice}</span>
							<span id="day">/박</span>
						</div>
						<div id="res1_2">
							<img src="data:image/svg+xml,%3Csvg viewBox='0 0 1000 1000' xmlns='http://www.w3.org/2000/svg' fill='%23008489'%3E%3Cpath d='M972 380c9 28 2 50-20 67L725 619l87 280c11 39-18 75-54 75-12 0-23-4-33-12L499 790 273 962a58 58 0 0 1-78-12 50 50 0 0 1-8-51l86-278L46 447c-21-17-28-39-19-67 8-24 29-40 52-40h280l87-279c7-23 28-39 52-39 25 0 47 17 54 41l87 277h280c24 0 45 16 53 40z'/%3E%3C/svg%3E"/>
							<span id="res1_2_1">${rateAvg}</span>
							<span id="res1_2_2">(후기 ${reviewCnt}개)</span>
						</div>
						<div class="line"></div>
					</div>
					

					<form id="res2" action="../booking/stepOne" method="get" >
						<div id="res2_1">
							<div>
								<label>날짜</label>
								<div class="res2_1_1">
									<input value="${vo.placeNum}" name="placeNum" hidden="true">
									<input class="date" id="startDate" value="${startDate}" name="checkInDate">
									<span id="to">
										<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 24px; width: 24px; display: block; fill: currentcolor;"><path d="m0 12.5a.5.5 0 0 0 .5.5h21.79l-6.15 6.15a.5.5 0 1 0 .71.71l7-7v-.01a.5.5 0 0 0 .14-.35.5.5 0 0 0 -.14-.35v-.01l-7-7a .5.5 0 0 0 -.71.71l6.15 6.15h-21.79a.5.5 0 0 0 -.5.5z" fill-rule="evenodd"></path></svg>
									</span>
									<input class="date" id="endDate" value="${endDate}" name="checkOutDate">
									<input class = "totalGuest" value ="${guestData}" name="guestTotal" hidden="true">
								</div>
							</div>
							<div>
								<label>인원</label>
								<button class="res2_1_1" id="guestBtn" type="button">
									<div id="guest">게스트 <span id="totalGuestNum">${guestData}</span>명</div>
									<span>
										<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: currentcolor; position: relative; top: 5px;left:8px;"><path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path></svg>
									</span>
								</button>
								
								<!-- 게스트 인원 선택 Dropdown 시작 -->
								<div id="guestDropdown" style="position: relative; z-index: 100;">
									<div class="gc" style="height: 35px;">
										<div style="width: 172px; padding: 6.5px 0;">성인</div>
										<div style="width: 120px;" >
											<div class="gc_1" style="width: 54px;">
												<button type="button" id="adultSub">
													<span class="_m5uqah"><svg viewBox="0 0 24 24" role="img" aria-label="차감" focusable="false" style=" height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect></svg></span>
												</button>
											</div>
											<div class="gc_1" id="adultNum" style="width: 11px; height: 35px; padding: 6.5px 0; ">${adultNum}</div>
											<div class="gc_1"  style="width: 55px; vertical-align: middle !important; text-align: right !important;">
												<button type="button" id="adultAdd">
													<span class="_1y1icpxd"><svg viewBox="0 0 24 24" role="img" aria-label="추가" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect><rect height="12" rx="1" width="2" x="11" y="6"></rect></svg></span>
												</button>
											</div>
										</div>
									</div>
									<div class="gc" style="height: 44px; margin:24px 0 ;">
										<div style="width: 172px;">
											<div>어린이</div>
											<div class="gc_sub">2~12세</div>
										</div>
										<div style="width: 120px; padding: 4.5px 0;" >
											<div class="gc_1" style="width: 54px;">
												<button type="button" id="childSub">
													<span class="_m5uqah"><svg viewBox="0 0 24 24" role="img" aria-label="차감" focusable="false" style=" height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect></svg></span>
												</button>
											</div>
											<div class="gc_1" id="childNum" style="width: 11px; height: 35px; padding: 6.5px 0; ">${childNum}</div>
											<div class="gc_1"  style="width: 55px; vertical-align: middle !important; text-align: right !important;">
												<button type="button" id="childAdd">
													<span class="_1y1icpxd"><svg viewBox="0 0 24 24" role="img" aria-label="추가" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect><rect height="12" rx="1" width="2" x="11" y="6"></rect></svg></span>
												</button>
											</div>
										</div>
									</div>
									<div class="gc" style="height: 44px;  margin:24px 0 ;">
										<div style="width: 172px;">
											<div>유아</div>
											<div class="gc_sub">2세 미만</div>
										</div>
										<div style="width: 120px; padding: 4.5px 0; box-sizing: border-box;" >
											<div class="gc_1" style="width: 54px; ">
												<button type="button" id="infantSub">
													<span class="_m5uqah"><svg viewBox="0 0 24 24" role="img" aria-label="차감" focusable="false" style=" height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect></svg></span>
												</button>
											</div>
											<div class="gc_1" id="infantNum" style="width: 11px; height: 35px; padding: 6.5px 0; ">${infantNum}</div>
											<div class="gc_1"  style="width: 55px; vertical-align: middle !important; text-align: right !important;">
												<button type="button" id="infantAdd">
													<span class="_1y1icpxd"><svg viewBox="0 0 24 24" role="img" aria-label="추가" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><rect height="2" rx="1" width="12" x="6" y="11"></rect><rect height="12" rx="1" width="2" x="11" y="6"></rect></svg></span>
												</button>
											</div>
										</div>
									</div>
									<div class="gc_last">
										<div style="height: 36px; margin-bottom: 16px; overflow-wrap: break-word !important;">
											최대 ${vo.placeMaxGuest}명. 유아는 숙박인원에 포함되지<br>않습니다.
										</div>
										<div style="height: 22px; text-align: right !important;">
				
											<button type="button" id="gcClose">닫기</button>
										</div>
									</div>
								</div>
								<!-- 게스트 선택 Dropdown 끝 -->
								
								<!-- 게스트 선택 Dropdown 열기, 닫기 / 게스트 숫자 변경 버튼 제어 스크립트 -->
								<script type="text/javascript">
									$('#guestBtn').click(function(){
										if(document.getElementById("guestDropdown").classList.contains('show')){
											//열려있으면 닫기
											$('#guestDropdown').removeClass('show');
										} else{
											//닫혀있으면 열기 
											$('#guestDropdown').addClass('show');
										}
									});
									$('#gcClose').click(function(){
										$('#guestDropdown').removeClass('show');
									});
									
									/* 버튼 제어 */
									// 맨 처음 버튼 설정 
									var adultNum = parseInt($('#adultNum').html());
									var childNum = parseInt($('#childNum').html());	
									var infantNum = parseInt($('#infantNum').html());	
									console.log(adultNum);
									console.log(childNum);
									console.log(infantNum);
									console.log('${vo.placeMaxGuest}');
									
									if(adultNum == 0){
										$('#adultSub').prop('disabled', true);
									}
									if(childNum == 0){
										$('#childSub').prop('disabled', true);
									}
									if(infantNum == 0){
										$('#infantSub').prop('disabled', true);
									}
									if(adultNum+childNum=='${vo.placeMaxGuest}'){
										$('#adultAdd').prop('disabled', true);
										$('#childAdd').prop('disabled', true);
									} 
						
									//버튼 클릭 후 설정 
									$('#adultAdd').click(function(){
										adultNum = parseInt($('#adultNum').html())+1 ;
										$('#adultNum').html(adultNum);
										
										childNum = parseInt($('#childNum').html());
										$('#totalGuestNum').html(adultNum+childNum);
										
										if(adultNum>0){
											$('#adultSub').prop('disabled', false);
										}
										
										childNum = parseInt($('#childNum').html());
										if(adultNum+childNum == '${vo.placeMaxGuest}'){
											$('#adultAdd').prop('disabled', true);
											$('#childAdd').prop('disabled', true);
										}	
										
									});
									$('#adultSub').click(function(){
										adultNum = parseInt($('#adultNum').html())-1;
										$('#adultNum').html(adultNum);
										
										childNum = parseInt($('#childNum').html());
										$('#totalGuestNum').html(adultNum+childNum);
										
										if(adultNum <= 1){
											$('#adultSub').prop('disabled', true);
										} 
									
										if(adultNum+childNum < '${vo.placeMaxGuest}'){
											$('#adultAdd').prop('disabled', false);
											$('#childAdd').prop('disabled', false);
										}
									});
									
									$('#childAdd').click(function(){
										childNum = parseInt($('#childNum').html())+1 ;
										$('#childNum').html(childNum);
										adultNum = parseInt($('#adultNum').html());
										$('#totalGuestNum').html(adultNum+childNum);
										
										if(childNum>0){
											$('#childSub').prop('disabled', false);
										}
										
										adultNum = parseInt($('#adultNum').html());
										if(adultNum+childNum == '${vo.placeMaxGuest}'){
											$('#adultAdd').prop('disabled', true);
											$('#childAdd').prop('disabled', true);
										}
										
										
									});
									$('#childSub').click(function(){
										childNum = parseInt($('#childNum').html())-1;
										$('#childNum').html(childNum);
										adultNum = parseInt($('#adultNum').html());
										$('#totalGuestNum').html(adultNum+childNum);
										
										if(childNum == 0){
											$('#childSub').prop('disabled', true);
										} 
										
										if(adultNum+childNum < '${vo.placeMaxGuest}'){
											$('#adultAdd').prop('disabled', false);
											$('#childAdd').prop('disabled', false);
										}
									});
									
									$('#infantAdd').click(function(){
										infantNum = parseInt($('#infantNum').html())+1 ;
										$('#infantNum').html(infantNum);
										
										if(infantNum>0){
											$('#infantSub').prop('disabled', false);
										}
										if(infantNum>4){
											$('#infantAdd').prop('disabled', true);
										}
									});
									
									$('#infantSub').click(function(){
										infantNum = parseInt($('#infantNum').html())-1;
										$('#infantNum').html(infantNum);
										
										if(infantNum == 0){
											$('#infantSub').prop('disabled', true);
										} 
										if(infantNum>0){
											$('#infantAdd').prop('disabled', false);
										}
										
									});
								</script>
							</div>
						</div>
						
						<div id="rWrap" style="position: absolute; z-index:2; top: 140px;">
						<div id="res2_2" >
							<div class="res2_2_1">
								<div class="res2_2_2">
									<div id="res_pay">
										<p id="placePrice"></p>
										<p>&nbspx&nbsp</p> 
										<p id="totalNight"></p> 
										<p>박&nbsp</p>
									</div>
									<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg>
								</div>
								<span id="totalNightPay"></span>
							</div>
							<div class="res2_2_1">
								<div class="res2_2_2">
									<div>서비스 수수료&nbsp</div>
									<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg>
								</div>
								<span class="servicePay"></span>
							</div>
							<div class="res2_2_1">
								<div class="res2_2_2">
									<div>숙박세와 수수료&nbsp</div>
									<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg>
								</div>
								<span class="servicePay"></span>
							</div>
							<div id="tot">
								<div>총 합계</div>
								<span id="totalPay"></span>
							</div>
						</div>

						<div id="res2_3" >
							<button id="rese">예약하기</button>
							<div>예약 확정 전에는 요금이 청구되지 않습니다. <br> 일부 예약에는 보증금이 있을 수 있습니다.</div>
						</div>
						</div>
					</form>
				</div>
				<div id="report">
					<a href="">이 숙소 신고하기</a>
				</div>
			</div> <!-- topFixer -->
			</div> <!-- resWrap -->
		
			<script type="text/javascript">
			$('#rese').click(function() {
				$('.totalGuest').val($("#totalGuestNum").html());
			})
			<!-- banner fixed  -->
			$('#banner').addClass("banner_abs");
        	$('.banner_abs').css('top', '32px');
			    $(window).scroll(  
					    function(){  
					    	var scroll = $(window).scrollTop();
					    	var val = $(document).height() - 1052 - 135;
				 			if ($(window).scrollTop()<585){
				 				$('#banner').removeClass("banner_fix");  
					        	$('#banner').addClass("banner_abs");
					        	$('.banner_abs').css('top', '32px');
				 			} 
				 			else if(($(window).scrollTop()>=580) && ($(window).scrollTop()<val)){
					        	$('#banner').removeClass("banner_abs");  
					        	$('#banner').addClass("banner_fix");
					        	$('.banner_fix').css('top', '114px');
					        }
					        else{  
					            $('#banner').removeClass("banner_fix");  
					        	$('#banner').addClass("banner_abs"); 
					            $('.banner_abs').css('top', val-560);
					        }   
					    }  
					);  
			</script>
			<input style="color: white" type="text" id="myInput"> 
		</div> <!-- descWrap-->
	</main>
	<!-- Main End -->
	

	<!-- Footer Start -->
	<c:import url="../jsp/footer.jsp"></c:import>
	<!-- Footer End -->
	
	<!-- Java Script 파일 삽입-->
	<!-- Kakao API -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=327fa35f2eae30fcd772f149b123ba65&libraries=services"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=327fa35f2eae30fcd772f149b123ba65"></script>							
	<script type="text/javascript">
	//역이름 이런걸로 검색 안되고, 직접 주소 입력해야함
	var loc ="${vo.placeLocation}";	//검색어
	map1();
	
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
				
				} else { 
					console.log('${vo.placeLocation}');
					console.log('에러'); 
					}
		});
	};
	</script>
	
	<!-- fullcalendar -->
	<script src='../resources/static/fullcalendar/packages/core/main.js'></script>
	<script src='../resources/static/fullcalendar/packages/daygrid/main.js'></script>
	<script src='../resources/static/fullcalendar/packages/interaction/main.js'></script>
	<script src='../resources/static/fullcalendar/packages/moment/moment.js'></script>
	<!-- <script src="../resources/js/selectCalendar.js"></script> -->
	<script type="text/javascript">
		//-----------------------------------------------------------------
		//(+forBanner) 가격에 콤마넣는 함수 
		function addComma(x) {
			 return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		//(+forBanner) 처음 페이지 받아올 때 배너에 데이터 넣기
		//1. 총 몇 박인지 
		var startDay0 = pad(parseInt((new Date("${startDate}")).toISOString().slice(8, 10)),2);
		var endDay0 = pad(parseInt((new Date("${endDate}")).toISOString().slice(8, 10)),2);
		var totalNight0 = endDay0-startDay0;
		$('#totalNight').html(totalNight0);
		$('#placePrice').html('₩'+addComma('${vo.placePrice}'));
		$('#afterCost').html('₩'+addComma('${vo.placePrice}'));
		
    	//2. 총 얼만지 
    	var totalNightPay = '${vo.placePrice}'*totalNight0;
    	var servicePay = totalNightPay*0.03;
    	var totalPay = totalNightPay+servicePay*2;
    	$('#totalNightPay').html('₩'+addComma(totalNightPay));
    	$('.servicePay').html('₩'+addComma(servicePay));
    	$('#totalPay').html('₩'+addComma(totalPay));	
    	//-----------------------------------------------------------------

		var calendarEl = document.getElementById('selectCalendar');	
		
		var disabled = [];
		<c:forEach items="${bookingList}" var="days">
			disabled.push("${days.checkInDate}");
			disabled.push("${days.checkOutDate}");
		</c:forEach>
	
	    //fullcalendar 생성
	      var calendar = new FullCalendar.Calendar(calendarEl, {
	        plugins: [ 'interaction', 'dayGrid', 'moment'],
	        allDay:false,
	        selectable: true,    
	        selectAllow:function(selectInfo){
	        	//예약된 날짜만 선택 불가
	        	return checkNotAble(selectInfo.start, disabled);
	        },
	        select: function(selectInfo){
	        	/////////////////////화면 출력 용//////////////////////
	        	var dt_start = selectInfo.start;
	        	var dt_end = selectInfo.end;		
	        	
	        	//end의 DD만 subString으로 받아오기        	
				//-----------------------------------------------------------------
	        	//(+forBanner) select 달력에서 선택하면 데이터 받아오기 
	        	//1. 총 몇 박인지 계산 
	        	var startDay = pad(parseInt((new Date(dt_start)).toISOString().slice(8, 10)),2);
	        	var endDay = pad(parseInt((new Date(dt_end)).toISOString().slice(8, 10)),2);
	        	var totalNight = endDay-startDay-1;
	        	$('#totalNight').html(totalNight);
	        	//2. 총 숙박 금액 계산하기 
	        	totalNightPay = '${vo.placePrice}'*totalNight;
		    	servicePay = totalNightPay*0.03;
		    	totalPay = totalNightPay+servicePay*2;
		    	$('#totalNightPay').html('₩'+addComma(totalNightPay));
		    	$('.servicePay').html('₩'+addComma(servicePay));
		    	$('#totalPay').html('₩'+addComma(totalPay));
		    	//-----------------------------------------------------------------
		    	
	        	//startStr, endStr 	: YYYY-MM-DD 형태, DATE형 형식이랑 같음		        	
	        	dt_start = moment(dt_start).format('MM월 DD일');
	        	dt_end = moment(dt_end).format('MM월');		        	
	   
	        	//jsp 화면에 출력
	        	$('.datePick').prop('value',dt_start+' - '+dt_end+' '+endDay+'일');
	        	$('.datePick').prop('style',"border: none;font-weight: 600;color: black;");

	        	///////////////controller로 보낼 날짜 데이터//////////////
	        	var startData = selectInfo.startStr;
	        	var endData = selectInfo.endStr;	        	
	       		var dayData = pad(String(parseInt((new Date(selectInfo.endStr)).toISOString().slice(8, 11))-1),2);		       		
	        	endData = ((new Date(endData)).toISOString().slice(0, 8))+dayData;
	        	console.log("날짜 데이터 : "+endData);		        	
	        	//parameter로 보낼 input의 속성에 넣어주기 
	        	
	        	// (+forBanner) 배너로 날짜 넣어주기 
	        	$('#startDate').prop('value',startData);
	        	$('#endDate').prop('value',endData);		        
	        	console.log(startData - endData); 
	        },		       
            dayRender: function (dayRenderInfo) {
                if (!checkNotAble(dayRenderInfo.date, disabled)) {
                	dayRenderInfo.el.style.backgroundColor= "rgb(204, 204, 204)";                    	
                }
                else{
                	dayRenderInfo.el.style.backgroundColor= "rgb(255, 255, 255)";
                }
            }	   
	      });     
	      calendar.render();
	      
	      //	String->Date 함수 to_date()
	      function to_date(date_str)
	      {
	          var yyyyMMdd = String(date_str);
	          var sYear = yyyyMMdd.substring(0,4);
	          var sMonth = yyyyMMdd.substring(5,7);
	          var sDate = yyyyMMdd.substring(8,10);
	          return new Date(Number(sYear), Number(sMonth)-1, Number(sDate));
	      }
	      
	      
	      //disabled은 예약된 체크인, 체크아웃 날짜 받아오는 배열 
	      //리턴 값 true면 예약 가능, false면 예약 불가
	      function checkNotAble(date, disabled)
	        {
	    	  var allow = true; 
	    	  if(disabled != null){
	    		  for (var i = 0; i < disabled.length/2; i++) {
			            if(date-to_date(disabled[i*2])>=0 && to_date(disabled[i*2+1])-date>0){
			            	console.log(date-to_date(disabled[i*2])>=0 && to_date(disabled[i*2+1])-date>0);
			            	allow = false;
			            }
		            }	
	    	  }    
	            return allow;
	        }
			
	      //잘라온 날짜 0으로 padding하기 위한 함수
	      function pad(n, width) {
	    	  n = n + '';
	    	  return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
	    	}
	      
	      
	      function dropAction() {
	    	  document.getElementById("dropDownContent").classList.toggle("show");
	    	}
	      
	      window.onclick = function(event) {
	    	  if (!event.target.matches('.dropBtn')) {
	    	    var dropdowns = document.getElementsByClassName("dropdown-menu");
	    	    var i;
	    	    for (i = 0; i < dropdowns.length; i++) {
	    	      var openDropdown = dropdowns[i];
	    	      if (openDropdown.classList.contains('show')) {
	    	        openDropdown.classList.remove('show');
	    	      }
	    	    }
	    	  }
	    	}

	      
	      $(".sendMessage").click(function() {
	    	  $(location).attr('href',"${pageContext.request.contextPath}/message/send?r_memberNum=${vo.memberNum}&receiveName=${vo.name}&placeNum=${vo.placeNum}");
		})
	      

	</script>
		
</body>
</html>

