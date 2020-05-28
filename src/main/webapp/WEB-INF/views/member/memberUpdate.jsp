<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보 수정 - 계정 관리 - 에어비앤비</title>
<c:import url="../template/boot.jsp"></c:import>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="../resources/css/memberUpdateStyle.css"> 
<link rel="stylesheet" type="text/css" href="../resources/css/headerStyle.css"> 
<link rel="stylesheet" type="text/css"  href="../resources/css/footer.css">
<style type="text/css">
	*{
		box-sizing: border-box;
	}
	._1lg7nazm{
		border-bottom: 1px solid #DDDDDD;
	}
</style>
</head>
<body>
<div data-application="true"><div dir="ltr"><div>

<div class="_is5jnq">
<div class="_16grqhk">

	<!-- header 시작 -->
	<div class="_siy8gh">
	<div class="_1gw6tte">	
	<c:import url="../jsp/header.jsp"></c:import>
	</div>
	</div>
	
	<div class="_xca6kx"></div>
	
	<!-- main 시작 -->
	<main id="site-content" tabindex="-1" class="" style="overflow: auto; margin-bottom: 50px;">
	<div class="_mwt4r90">
	<div style="margin: 0px;">
	<div style="margin-bottom: 48px;">
	<section>
	
		<!-- 계정 웅앵웅 -->	
		<div style="margin-top: 40px; margin-bottom: 40px;">
		<nav aria-label="계정">
		<ol class="_1ckj08w">
			<li class="_36rlri">
			<span class="_121z06r2">
			<a href="/account-settings" class="_sgg9wmi" aria-busy="false">계정</a>
			</span>
			</li>
		
			<li class="_36rlri">
			<div class="_36rlri" style="margin-left: 16px; margin-right: 16px;">
			<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 10px; width: 10px; fill: rgb(118, 118, 118);">
			<path d="m4.29 1.71a1 1 0 1 1 1.42-1.41l8 8a1 1 0 0 1 0 1.41l-8 8a1 1 0 1 1 -1.42-1.41l7.29-7.29z" fill-rule="evenodd"></path>
			</svg>
			</div>
			<span aria-current="step" class="_121z06r2">개인정보</span>
			</li>
		</ol>
		</nav>
		
		<div style="margin-top: 12px;">
		<h1 tabindex="-1" class="_14i3z6h">
		<div class="_1yrl4d7p">개인정보</div>
		</h1>
		</div>
		</div>
	
		<!-- 수정 Form 시작 -->
		<div class="_2h22gn">
		<div class="_169grxv2">
			<!-- collapse 아코디언 -->
			<div class="" id="accordion" role="tablist" aria-multiselectable="true">
            
            <!-- 수정 대상 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">프로필 사진</div>
				<div style="margin-top: 8px; margin-bottom: 24px;height:100px;">
				<div class="_czm8crp">
						<img style="float: left;" src="${pageContext.request.contextPath}/resources/images/member/${file.fileName}" height="100" width="100">
				<div style="margin-left:65px; margin-top: 45px; float: left;">
				<form action="../member/memberUpdate" method="POST" enctype="multipart/form-data">
					
					
					<div style="margin-right: 13px;float: left;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="memberPic">프로필 사진</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<input class="_14fdu48d" id="file" name="file" type="file"></div>
					</div>
					</div>
					</div>
					</div>
					
					
					<button type="submit" class="_kt3i5a4" aria-busy="false" style="float: left;">
					<span class="_ftj2sg4">저장</span>
					</button>
					
				</form>
				</div>
				
				</div>
				
				<!-- collapse 부분 -->
				<div id="collapse5" class="panel-collapse collapse" aria-expanded="false">
				
				</div>
				<!-- collapse 부분 끝-->
				
				</div>
				</div>
				
				
			</div>
			</div>
			</div>
            
            
            
            <!-- 수정 대상 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">실명 이름</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">${member.familyName} ${member.name}</div>
				
				<!-- collapse 부분 -->
				<div id="collapse1" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top: 8px; margin-bottom: 20px;">
					<div class="_czm8crp">허가증이나 여권 등 여행 서류에 기재되어 있는 이름을 말합니다.</div>
					</div>
					
					<div style="margin-bottom: 16px;">
					<div class="_2h22gn">
					<div class="_en5l15m">
					<div class="_9hxttoo">
					<div style="margin-bottom: 8px;">
					<label class="_rin72m" for="name">
					<div class="_czm8crp">이름</div>
					</label>
					</div>
					
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					<input class="_14fdu48d" id="name" name="name" type="text" value="${member.name}"></div>
					</div>
					</div>
					</div>
					</div>
					
					<div class="_en5l15m">
					<div class="_9hxttoo">
					<div style="margin-bottom: 8px;">
					<label class="_rin72m" for="last_name">
					<div class="_czm8crp">성</div>
					</label>
					</div>
					
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					<input class="_14fdu48d" id="familyName" name="familyName" type="text" value="${member.familyName}"></div>
					</div>
					</div>
					
					</div>
					</div>
					</div>
					</div>
				
					<div id="airlock-inline-container"></div>
					
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>
					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->
				
				</div>
				</div>
				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
					<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1" aria-expanded="false" aria-controls="collapse1">
					<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
					</a>
				</div>
				</div>
				</div>
				
			</div>
			</div>
			</div>
			
			
			<!-- 수정 대상 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">이메일 주소</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">${member.email}</div>
				
				<!-- collapse 부분 -->
				<div id="collapse2" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top: 8px; margin-bottom: 20px;">
					<div class="_czm8crp">언제든지 확인하실 수 있는 주소를 사용하세요</div>
					</div>
					
					<div style="margin-bottom: 24px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="email">이메일 주소</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<input class="_14fdu48d" id="email" name="email" type="text" value="${member.email}"></div>
					</div>
					</div>
					</div>
					</div>
					
					<div id="airlock-inline-container"></div>
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>
					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->
				
				</div>
				</div>
				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2" aria-expanded="false" aria-controls="collapse2">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			
			<!-- 수정 대상 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">비밀번호</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">안전하게 비밀번호를 변경하세요</div>
				
				<!-- collapse 부분 -->
				<div id="collapse3" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 20px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top: 8px; margin-bottom: 20px;">
					
					</div>
					
					<div style="margin-bottom: 10px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="pw">비밀번호</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<input class="_14fdu48d" id="pwIn" name="pw" type="password" value="${member.pw}"></div>
					</div>
					</div>
					</div>
					</div>
					
					<!-- 비밀번호 검증 시 추가되는 p태그 -->
					<p class="alarm3" style="margin-top: 0px; margin-bottom:10px; color: red;">비밀번호는 8자 이상 입력하세요</p>
					<p class="alarm4" style="margin-top: 0px; margin-bottom:10px; color: red;">새로운 비밀번호를 등록하세요</p>
					
					<div id="airlock-inline-container"></div>
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>
					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->
				
				</div>
				</div>
				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3" aria-expanded="false" aria-controls="collapse3">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
			
			
			<!-- 수정 대상 -->
			<div class="_s50zru">
			<div style="margin-top: 24px;">
			<div class="_hgs47m">
				<div class="_n5lh69r">
				<div class="_1p3joamp">전화번호</div>
				<div style="margin-top: 8px; margin-bottom: 24px;">
				<div class="_czm8crp">${member.phoneNum}</div>
				<!-- collapse 부분 -->
				<div id="collapse4" class="panel-collapse collapse" aria-expanded="false">
				<div style="margin-top: 8px; margin-bottom: 20px;">
				<form action="../member/memberUpdate" method="POST">
					<div style="margin-top: 8px; margin-bottom: 15px;">
					<div class="_czm8crp">알림, 미리 알림 및 로그인에 도움이 됩니다.</div>
					</div>
					
					<div style="margin-bottom: 12px;">
					<div class="_9hxttoo">
					<label class="_krjbj" for="phoneNum">전화번호</label>
					<div dir="ltr">
					<div class="_1wcr140x">
					<div class="_178faes">
					
					<input class="_14fdu48d" id="phoneNum" name="phoneNum" type="text" value="${member.phoneNum}"></div>
					</div>
					</div>
					</div>
					</div>
					
					<p class="alarm5" style="margin-top: 0px; margin-bottom:10px; color: red;">전화번호 형식에 맞춰 입력하세요</p>
					
					<div id="airlock-inline-container"></div>
					<button type="submit" class="_kt3i5a4" aria-busy="false">
					<span class="_ftj2sg4">저장</span>
					</button>
					
				</form>
				</div>
				</div>
				<!-- collapse 부분 끝-->

				</div>
				</div>
				
				<div class="_1rtgmd8y">
				<div class="_1p3joamp">
				<div class="_1asnseo">
				<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
				<button type="button" class="_b0ybw8s" aria-busy="false">수정</button>
				</a>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
		
			<div style="float: right; margin-top:15px;">
			<a href="./memberDelete" style="float:left; border: none !important;
	
    color: #000000 !important; font-size: 14px; font-weight: bold;  text-decoration: underline;">회원탈퇴</a>
			<span style="float:left; margin-left: 8px; position:relative; top:4px;" class="_2frf98"><svg viewBox="0 0 16 16" role="presentation" aria-hidden="true" focusable="false" style="height:14px;width:14px;display:block;fill:currentColor"><path d="m5.3 16c .3 0 .6-.1.8-.4l6.8-6.7c.5-.5.5-1.3 0-1.8l-6.8-6.7c-.5-.5-1.2-.5-1.7 0s-.5 1.2 0 1.7l5.8 5.9-5.8 5.9c-.5.5-.5 1.2 0 1.7.2.3.5.4.9.4"></path></svg></span>
			</div>
		</div>
		</div>
		<!-- 수정 폼 끝 -->
		
		
		<!-- 오른쪽 배너 -->
		<div class="_17pxz94u">
		<div class="_16tcko6">
			<section>
			<div style="margin-top: 32px; margin-bottom: 32px;">
			<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 40px; width: 40px; display: block; fill: rgb(96, 182, 181);">
			<path d="m18.66 6.51-14.84 9.65a1 1 0 0 0 .55 1.84h15.62a1 1 0 0 0 1-1v-9.24a1.5 1.5 0 0 0 -2.32-1.26z"></path>
			<path d="m9.25 12a1.25 1.25 0 1 1 -1.25-1.25 1.25 1.25 0 0 1 1.25 1.25zm11.75-8h-14a .5.5 0 0 0 0 1h14a1 1 0 0 1 1 1v12a1 1 0 0 1 -1 1h-1.5a.5.5 0 0 0 0 1h1.5a2 2 0 0 0 2-2v-12a2 2 0 0 0 -2-2zm-5 15h-13a1 1 0 0 1 -1-1v-12a1 1 0 0 1 1-1h1a .5.5 0 0 0 0-1h-1a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h13a .5.5 0 0 0 0-1zm-7.17-11.17a4.25 4.25 0 1 0 3.42 4.17 4.21 4.21 0 0 0 -.46-1.92.5.5 0 0 0 -.89.45 3.25 3.25 0 0 1 -.61 3.77 3.67 3.67 0 0 0 -4.56.02 3.25 3.25 0 0 1 2.27-5.57 3.3 3.3 0 0 1 .63.06.5.5 0 1 0 .19-.98zm5.67 3.17h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1zm0 2h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1zm0 2h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1z" fill="#484848"></path>
			</svg>
			
			<div style="margin-top: 16px; margin-bottom: 16px;">
			<h2 tabindex="-1" class="_14i3z6h">
			<div class="_1p0spma2">다른 사람에게 어떤 정보가 공개되나요?</div>
			</h2>
			</div>
			
			<div class="_czm8crp">에어비앤비는 예약이 확정된 후에만 호스트 및 게스트의 연락처 정보를 공개합니다.</div>
			</div>
			</section>
		</div>
		</div>
		<!-- 오른쪽 배너 끝 -->
		
		</div>
		
		
		
	</section>
	</div>
	</div>
	</div>
	</main>
	
	<c:import url="../jsp/footer.jsp"></c:import>
	

</div>
</div>

</div></div></div>


	<script type="text/javascript">
	$(function(){
		
		$('.alarm3').hide();
		$('.alarm4').hide();
		$('.alarm5').hide();
		
		 $('#pwIn').keyup(function(){
		    	if($('#pwIn').prop('value').length<8){
		    		$('.alarm3').show();
		    	} else{
		    		$('.alarm3').hide();
		    	}	
		    });
		 
		 $('#pwIn').keyup(function(){
		    	 if("${member.pw}"==$('#pwIn').prop('value')){
		    		$('.alarm4').show();
		    	} else{
		    		$('.alarm4').hide();
		    	}	
		    });
		 
		 $('#phoneNum').keyup(function(){
		    	if($('#phoneNum').prop('value').length<13){
		    		$('.alarm5').show();
		    	} else{
		    		$('.alarm5').hide();
		    	}	
		    });
		 
		 
	});

	</script>


</body>
</html>