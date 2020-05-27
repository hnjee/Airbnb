<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<!-- <meta http-equiv="refresh" content="1"> -->
<title>My Page</title>
	<c:import url="../template/boot.jsp"></c:import>
	<link rel="stylesheet" type="text/css" href="./resources/css/searchBoxStyle.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/searchBoxStyle.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/headerStyle.css"> 
	<link rel="stylesheet" type="text/css" href="../resources/css/myPageStyle.css"> 
	
	<link rel="stylesheet" type="text/css"  href="../resources/css/indexFooter.css"> 
	<link rel="stylesheet" type="text/css"  href="../resources/css/footer.css">
	<script src="https://kit.fontawesome.com/f3c9922333.js" crossorigin="anonymous"></script>
	
	
</head>

<body>
<c:import url="../jsp/header.jsp"></c:import>

<main id="site-content" tabindex="-1" class="">
<div class="_mwt4r90">
<div style="margin: 0px;">
	
	<!-- 계정 정보 확인 -->
	<section>
	<div style="margin-top: 64px; margin-bottom: 56px; margin-left: 16px;">
	<h1 tabindex="-1" class="_14i3z6h">
		<div class="_1yrl4d7p">계정</div>
	</h1>
	<div style="margin-top: 8px; margin-bottom: 16px;">
		<span class="_1p3joamp">계정 주인 이름, </span>
		<span class="_czm8crp">계정 이메일 · </span>
		<a href="/users/show" class="_12jvhwr" aria-busy="false">
			<span class="_ba3mo2p">프로필로 이동</span>
		</a>
	</div>
	</div>
	</section>
	
	<!-- 메뉴 선택 시작 -->
	<div class="_2h22gn">
	<div class="_1rnz84d">
	<div class="_hq87c8">
	
		<!-- _1m936jew 부터 메뉴 하나 시작 -->
		<div class="_1m936jew">
		<div class="_15wuypg">
		<a href="${pageContext.request.contextPath}/member/memberUpdate" class="_1cvdx4x">
			<div>
			<div style="margin-bottom: 16px;">
				<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 32px; width: 32px; display: block; fill: rgb(96, 182, 181);">
				<path d="m18.66 6.51-14.84 9.65a1 1 0 0 0 .55 1.84h15.62a1 1 0 0 0 1-1v-9.24a1.5 1.5 0 0 0 -2.32-1.26z"></path>
				<path d="m9.25 12a1.25 1.25 0 1 1 -1.25-1.25 1.25 1.25 0 0 1 1.25 1.25zm11.75-8h-14a .5.5 0 0 0 0 1h14a1 1 0 0 1 1 1v12a1 1 0 0 1 -1 1h-1.5a.5.5 0 0 0 0 1h1.5a2 2 0 0 0 2-2v-12a2 2 0 0 0 -2-2zm-5 15h-13a1 1 0 0 1 -1-1v-12a1 1 0 0 1 1-1h1a .5.5 0 0 0 0-1h-1a2 2 0 0 0 -2 2v12a2 2 0 0 0 2 2h13a .5.5 0 0 0 0-1zm-7.17-11.17a4.25 4.25 0 1 0 3.42 4.17 4.21 4.21 0 0 0 -.46-1.92.5.5 0 0 0 -.89.45 3.25 3.25 0 0 1 -.61 3.77 3.67 3.67 0 0 0 -4.56.02 3.25 3.25 0 0 1 2.27-5.57 3.3 3.3 0 0 1 .63.06.5.5 0 1 0 .19-.98zm5.67 3.17h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1zm0 2h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1zm0 2h5.5a.5.5 0 0 0 0-1h-5.5a.5.5 0 0 0 0 1z" fill="#484848"></path>
				</svg>
			</div>
			</div>
			
			<div class="_xcuo0b">
			<div class="_djxl322">
			<div class="_ni9axhe"><div><div>
			<div class="_36rlri">
			<span class="_1p0spma2">개인정보 수정</span>
			</div>
			<div class="_36rlri" style="vertical-align: middle; margin-top: -2px; margin-left: 4px;">
				<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 12px; width: 12px; fill: currentcolor;">
				<path d="m4.29 1.71a1 1 0 1 1 1.42-1.41l8 8a1 1 0 0 1 0 1.41l-8 8a1 1 0 1 1 -1.42-1.41l7.29-7.29z" fill-rule="evenodd"></path>
				</svg>
			</div>
			</div></div></div>
			</div>
			</div>
			
			<div>
				<div class="_1xc0f9k">
				<div class="_czm8crp">개인정보 및 연락처를 수정하세요</div>
				</div>
			</div>
		</a>
		</div>
		</div>
				
		<div class="_1m936jew">
		<div class="_15wuypg">
		<a href="/account-settings/personal-info" class="_1cvdx4x">
			<div>
			<div style="margin-bottom: 16px;">
				<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 32px; width: 32px; display: block; fill: rgb(255, 180, 0);">
				<path d="m5 20.5a.5.5 0 0 1 -.5.5h-.5v.5a.5.5 0 0 1 -1 0v-.5h-.5a.5.5 0 0 1 0-1h .5v-.5a.5.5 0 0 1 1 0v .5h.5a.5.5 0 0 1 .5.5zm1.5 1.5a.5.5 0 1 0 .5.5.5.5 0 0 0 -.5-.5zm16-20h-.5v-.5a.5.5 0 0 0 -1 0v .5h-.5a.5.5 0 0 0 0 1h .5v.5a.5.5 0 0 0 1 0v-.5h.5a.5.5 0 0 0 0-1zm-2.58 4.87a13.41 13.41 0 0 1 -6.76-3.2.37.37 0 0 0 -.63.26l.08 16.22a.38.38 0 0 0 .55.32 11.98 11.98 0 0 0 7.07-13.31.37.37 0 0 0 -.31-.3z"></path><path d="m14.39 8.32a1.93 1.93 0 0 0 -3.66 0l-2.42 4.85a3.09 3.09 0 0 0 -.4 1.61 2.36 2.36 0 0 0 2.23 2.23 3.95 3.95 0 0 0 2.42-1.06 3.95 3.95 0 0 0 2.42 1.06 2.36 2.36 0 0 0 2.23-2.23 3.09 3.09 0 0 0 -.4-1.61zm-2.72 4.38c0-.05.01-1.23.89-1.23s.88 1.18.88 1.23a3.25 3.25 0 0 1 -.88 1.83 3.25 3.25 0 0 1 -.89-1.83zm3.31 3.31a2.92 2.92 0 0 1 -1.71-.77 4.3 4.3 0 0 0 1.17-2.54 2.02 2.02 0 0 0 -1.8-2.22l-.08-.01a2.02 2.02 0 0 0 -1.89 2.15l.01.08a4.29 4.29 0 0 0 1.17 2.54 2.92 2.92 0 0 1 -1.71.77 1.36 1.36 0 0 1 -1.23-1.23 2.13 2.13 0 0 1 .29-1.16l2.42-4.85c.33-.65.55-.76.94-.76s.61.11.94.76l2.42 4.85a2.13 2.13 0 0 1 .29 1.16 1.36 1.36 0 0 1 -1.23 1.23zm7.01-10.35a.5.5 0 0 0 -.43-.4 13.03 13.03 0 0 1 -8.68-4.57.52.52 0 0 0 -.77 0 13.03 13.03 0 0 1 -8.68 4.57.5.5 0 0 0 -.43.4c-1.58 8.19 1.55 14.02 9.3 17.31a.5.5 0 0 0 .39 0c7.75-3.29 10.87-9.11 9.3-17.31zm-9.49 16.3c-7.1-3.09-9.91-8.25-8.57-15.76a13.98 13.98 0 0 0 8.57-4.43 13.98 13.98 0 0 0 8.57 4.43c1.33 7.51-1.48 12.67-8.57 15.76z" fill="#484848"></path>
				</svg>
			</div>
			</div>
			
			<div class="_xcuo0b">
			<div class="_djxl322">
			<div class="_ni9axhe"><div><div>
			<div class="_36rlri">
			<span class="_1p0spma2">로그인 밎 보안</span>
			</div>
			<div class="_36rlri" style="vertical-align: middle; margin-top: -2px; margin-left: 4px;">
				<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 12px; width: 12px; fill: currentcolor;">
				<path d="m4.29 1.71a1 1 0 1 1 1.42-1.41l8 8a1 1 0 0 1 0 1.41l-8 8a1 1 0 1 1 -1.42-1.41l7.29-7.29z" fill-rule="evenodd"></path>
				</svg>
			</div>
			</div></div></div>
			</div>
			</div>
			
			<div>
				<div class="_1xc0f9k">
				<div class="_czm8crp">비밀번호를 변경하고 계정을 안전하게<br>보호하세요</div>
				</div>
			</div>
		</a>
		</div>
		</div>
		
		<div class="_1m936jew">
		<div class="_15wuypg">
		<a href="/account-settings/personal-info" class="_1cvdx4x">
			<div>
			<div style="margin-bottom: 16px;">
				<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 32px; width: 32px; display: block; fill: rgb(96, 182, 181);">
				<path d="m18.5 22a .5.5 0 1 1 .5-.5.5.5 0 0 1 -.5.5zm3.73-12.54a19.71 19.71 0 0 0 -5.88-.4c-.66.06-1.26.15-1.84.25a5.89 5.89 0 0 1 .36 2.66c-.22 2.57-1.93 4.51-3.82 4.34s-3.25-2.39-3.03-4.95a6.13 6.13 0 0 1 .27-1.3c-.16-.01-.3 0-.46-.02a27.97 27.97 0 0 1 -5.2-.8.5.5 0 0 0 -.63.48v9.14a.5.5 0 0 0 .34.47 17.04 17.04 0 0 0 5.49.86c3.14 0 5.83-.98 8.52-.98a23.25 23.25 0 0 1 5.65.82.5.5 0 0 0 .62-.48v-9.6a.5.5 0 0 0 -.39-.49zm-17.23-5.96a.5.5 0 1 0 -.5.5.5.5 0 0 0 .5-.5zm-2.5-1.5h-.5v-.5a.5.5 0 0 0 -1 0v .5h-.5a.5.5 0 0 0 0 1h .5v.5a.5.5 0 0 0 1 0v-.5h.5a.5.5 0 0 0 0-1zm20 20h-.5v-.5a.5.5 0 0 0 -1 0v .5h-.5a.5.5 0 0 0 0 1h .5v.5a.5.5 0 0 0 1 0v-.5h.5a.5.5 0 0 0 0-1z"></path><path d="m21.59 6.02a23.21 23.21 0 0 0 -1.45-.26 21.33 21.33 0 0 0 -4.83-.2 26.76 26.76 0 0 0 -3.13.48l-.46.09a16.94 16.94 0 0 1 -4.87.4 18.25 18.25 0 0 1 -3.37-.53 11.23 11.23 0 0 1 -1.24-.4 4.54 4.54 0 0 1 -.39-.17.62.62 0 0 0 -.87.55v1.45a.5.5 0 0 0 1 0v-.86a12.83 12.83 0 0 0 1.24.39 17.42 17.42 0 0 0 1.73.36c-.17 1.82-1.75 2.68-3.47 2.68a.5.5 0 0 0 -.5.5v6.75c0 .76 3.14 1.85 5.83 1.85a24.54 24.54 0 0 0 4.51-.49 21.51 21.51 0 0 1 4.01-.48q.32 0 .66.02a19.02 19.02 0 0 1 3.07.45 24.07 24.07 0 0 1 1.77.47 1.5 1.5 0 0 0 .47.03c.4-.03.68-.15.68-.61a425.81 425.81 0 0 0 0-1.5.5.5 0 0 0 -1 0 230.48 230.48 0 0 0 0 1.08 25.1 25.1 0 0 0 -1.71-.45c-.24-.05-.47-.09-.7-.13a3.79 3.79 0 0 1 2.91-2.5.5.5 0 0 0 .48-.5c0-.3.01-.68.02-1.25l.05-1.74c.05-1.73.07-3.19.07-4.81a.7.7 0 0 0 -.54-.69zm-19.59 11.23v-.22a1.39 1.39 0 0 1 0 .22zm1.15.24a8.18 8.18 0 0 1 -1.03-.43 4.27 4.27 0 0 1 -.12-.06v-1.28a2.53 2.53 0 0 1 2.11 2.06c-.33-.08-.65-.17-.96-.28zm17.9-6-.05 1.74-.02.84a4.91 4.91 0 0 0 -3.38 3.25 17.2 17.2 0 0 0 -1.55-.16q-.36-.02-.71-.02a22.22 22.22 0 0 0 -4.18.49 23.71 23.71 0 0 1 -4.34.48 11.31 11.31 0 0 1 -1.7-.14c-.08-1.68-1.23-2.83-3.13-3.27v-3.72a3.94 3.94 0 0 0 3.95-3.52c.27.03.55.06.84.08a17.86 17.86 0 0 0 5.12-.42l.46-.09a25.89 25.89 0 0 1 3.01-.46 17.46 17.46 0 0 1 2.18-.04 4.56 4.56 0 0 0 3.53 3.39c-.01.51-.02 1.03-.04 1.58zm.06-2.6a3.63 3.63 0 0 1 -2.51-2.3 22.37 22.37 0 0 1 2.4.33l.12.03c0 .66-.01 1.3-.02 1.95zm-6.49 1.14a6.5 6.5 0 0 1 .26 2.48c-.24 2.82-2.16 5-4.37 4.8-2.2-.2-3.72-2.68-3.48-5.5a6.48 6.48 0 0 1 .67-2.39c.14-.28.29-.55.39-.7a.5.5 0 1 1 .83.55 8.08 8.08 0 0 0 -.33.6 5.49 5.49 0 0 0 -.56 2.02c-.2 2.32.99 4.27 2.57 4.41s3.08-1.57 3.28-3.89a5.5 5.5 0 0 0 -.21-2.1.5.5 0 1 1 .95-.3z" fill="#484848"></path>
				</svg>
			</div>
			</div>
			
			<div class="_xcuo0b">
			<div class="_djxl322">
			<div class="_ni9axhe"><div><div>
			<div class="_36rlri">
			<span class="_1p0spma2">결제 및 대금 수령</span>
			</div>
			<div class="_36rlri" style="vertical-align: middle; margin-top: -2px; margin-left: 4px;">
				<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 12px; width: 12px; fill: currentcolor;">
				<path d="m4.29 1.71a1 1 0 1 1 1.42-1.41l8 8a1 1 0 0 1 0 1.41l-8 8a1 1 0 1 1 -1.42-1.41l7.29-7.29z" fill-rule="evenodd"></path>
				</svg>
			</div>
			</div></div></div>
			</div>
			</div>
			
			<div>
				<div class="_1xc0f9k">
				<div class="_czm8crp">결제, 대금 수령, 쿠폰, 기프트카드 및<br> 세금 검토하기</div>
				</div>
			</div>
		</a>
		</div>
		</div>
		
		<div class="_1m936jew">
		<div class="_15wuypg">
		<a href="/account-settings/personal-info" class="_1cvdx4x">
			<div>
			<div style="margin-bottom: 16px;">
				<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 32px; width: 32px; display: block; fill: rgb(255, 180, 0);"><path d="m19.8516 8.2051 3.542-1.275c.282-.102.429-.413.327-.697-.102-.282-.412-.426-.696-.327l-3.542 1.276c-.282.101-.429.413-.327.696.08.222.289.359.511.359.062 0 .123-.011.185-.032m3.7 3.981-3.291-.77c-.297-.071-.585.112-.653.405-.068.292.113.585.405.654l3.291.77c.042.01.083.015.124.015.247 0 .471-.169.529-.42.069-.292-.113-.585-.405-.654m-6.235-7.522c.164 0 .326-.074.432-.216l2.044-2.693c.182-.238.135-.58-.104-.761-.237-.182-.579-.137-.761.105l-2.044 2.693c-.181.238-.135.58.105.761.097.075.213.111.328.111m-11.777 8.173c.124.852-.371 1.675-1.181 1.967l-.963.346c-.258.093-.542-.04-.635-.298l-1.019-2.83c-.093-.257.041-.542.298-.634l5.648-2.036c.26-.093.547.041.641.301l.025.071c.083.23-.014.487-.229.606l-1.849 1.025c-.529.293-.822.883-.736 1.482"></path><path d="m14.4834 1.6621c-.13-.362-.462-.621-.85-.658-.37-.037-.758.158-.954.49l-1.395 2.381c-.373.637-.816 1.235-1.314 1.779-.186.204-.172.521.032.707.204.187.52.173.707-.031.545-.596 1.029-1.252 1.438-1.949l1.395-2.38 4.7 13.043-2.594-.944c-2.521-.917-5.302-.921-7.831-.011l-4.72 1.7c-.125.047-.26.041-.382-.018-.121-.056-.211-.157-.256-.283l-1.358-3.764c-.045-.125-.038-.26.019-.381.056-.12.157-.212.283-.257l4.72-1.701c.788-.285 1.528-.675 2.234-1.123l1.118 3.104c.073.203.266.33.471.33.057 0 .113-.01.17-.029.26-.094.394-.38.301-.641l-1.327-3.681c-.008-.025-.026-.041-.038-.064-.01-.018-.013-.04-.026-.057-.006-.008-.015-.012-.022-.02-.022-.028-.048-.05-.077-.072-.024-.02-.048-.04-.075-.055-.023-.013-.049-.019-.074-.027-.037-.013-.072-.025-.111-.029-.024-.002-.046.001-.07.002-.04.002-.079.005-.118.017-.01.003-.019.001-.029.004-.024.009-.04.025-.062.037-.019.011-.041.014-.059.027-.783.56-1.639 1.009-2.545 1.335l-4.721 1.701c-.377.137-.678.412-.849.773-.169.363-.189.769-.053 1.146l1.356 3.764c.136.377.41.679.773.85.203.094.42.143.637.143.171 0 .343-.03.51-.09l3.529-1.271 1.253.825c.184.12.266.351.202.56l-.259.835c-.098.321-.03.668.184.927l1.955 2.375c.106.128.142.293.098.453-.044.161-.159.286-.316.341l-.795.287c-.201.073-.421.011-.557-.147l-3.639-4.281c-.177-.21-.492-.236-.705-.057-.21.179-.235.494-.056.705l3.638 4.281c.291.341.717.529 1.151.529.17 0 .342-.03.507-.088l.795-.287c.46-.166.812-.547.941-1.018.129-.472.02-.977-.29-1.353l-1.955-2.373.258-.833c.195-.633-.055-1.33-.608-1.692l-.627-.412.016-.006c2.306-.831 4.847-.829 7.149.01l2.594.943c.362.132.773.041 1.049-.231.272-.273.364-.683.234-1.047z" fill="#484848"></path></svg>
			</div>
			</div>
			
			<div class="_xcuo0b">
			<div class="_djxl322">
			<div class="_ni9axhe"><div><div>
			<div class="_36rlri">
			<span class="_1p0spma2">알림</span>
			</div>
			<div class="_36rlri" style="vertical-align: middle; margin-top: -2px; margin-left: 4px;">
				<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 12px; width: 12px; fill: currentcolor;">
				<path d="m4.29 1.71a1 1 0 1 1 1.42-1.41l8 8a1 1 0 0 1 0 1.41l-8 8a1 1 0 1 1 -1.42-1.41l7.29-7.29z" fill-rule="evenodd"></path>
				</svg>
			</div>
			</div></div></div>
			</div>
			</div>
			
			<div>
				<div class="_1xc0f9k">
				<div class="_czm8crp">알림 환경설정 및 연락 방식을<br>선택하세요</div>
				</div>
			</div>
		</a>
		</div>
		</div>
		
		<div class="_1m936jew">
		<div class="_15wuypg">
		<a href="/account-settings/personal-info" class="_1cvdx4x">
			<div>
			<div style="margin-bottom: 16px;">
				<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 32px; width: 32px; display: block; fill: rgb(96, 182, 181);"><path d="m16.98 11.89a1.83 1.83 0 1 1 -1.83-1.83 1.83 1.83 0 0 1 1.83 1.83m-7.1-1.29a5.14 5.14 0 1 0 7.66 6.79.95.95 0 0 0 -.57-1.48c-3.75-.89-5.08-3.21-5.55-4.88a.94.94 0 0 0 -1.54-.43"></path><path d="m13 17a3 3 0 1 1 3-3 3 3 0 0 1 -3 3zm0-5a2 2 0 1 0 2 2 2 2 0 0 0 -2-2zm-.99-7.69v-1.75a.5.5 0 1 0 -1 0v1.75a.5.5 0 1 0 1 0zm-3.94.89a.5.5 0 0 0 .38-.6l-.38-1.71a.5.5 0 0 0 -.98.2v.01l.38 1.71a.5.5 0 0 0 .49.39.51.51 0 0 0 .11-.01zm-3.38 1.59a.5.5 0 0 0 .21-.68l-.81-1.56a.5.5 0 0 0 -.89.46l.81 1.56a.5.5 0 0 0 .67.21zm10.86-1.97.38-1.71a.5.5 0 0 0 -.98-.22l-.38 1.71a.5.5 0 0 0 .38.6.51.51 0 0 0 .11.01.5.5 0 0 0 .49-.39zm3.46 1.76.81-1.56a.5.5 0 1 0 -.89-.46l-.81 1.56a.5.5 0 1 0 .89.46zm3.69 7.72a.5.5 0 0 0 -.62.33c-.83 2.7-4.6 5.59-9.39 5.85a6.29 6.29 0 0 1 -5.69-6.23c0-3.38 2.1-5.89 5.09-6.21.26-.02.52-.03.78-.03a6.05 6.05 0 0 1 6.13 5.96v.02c0 .19-.01.38-.02.56a.5.5 0 0 0 .45.54.52.52 0 0 0 .54-.45q.03-.32.03-.65a7.02 7.02 0 0 0 -6.92-6.97.47.47 0 0 0 -.08-.02c-.05 0-.09.01-.13.01s-.08-.01-.12-.01a6.94 6.94 0 0 0 -.75.04c-6.58.42-11.26 4.89-11.26 7.96 0 3.01 4.91 6.5 11.25 6.5 5.65 0 10.04-3.35 11.03-6.59a.5.5 0 0 0 -.33-.63zm-20.95.71c0-1.78 2.41-4.76 6.46-6.19a7.44 7.44 0 0 0 -2.21 5.44 7.29 7.29 0 0 0 3.21 6c-4.31-.77-7.46-3.19-7.46-5.25z" fill="#484848"></path></svg>
			</div>
			</div>
			
			<div class="_xcuo0b">
			<div class="_djxl322">
			<div class="_ni9axhe"><div><div>
			<div class="_36rlri">
			<span class="_1p0spma2">개인정보 및 공개 설정</span>
			</div>
			<div class="_36rlri" style="vertical-align: middle; margin-top: -2px; margin-left: 4px;">
				<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 12px; width: 12px; fill: currentcolor;">
				<path d="m4.29 1.71a1 1 0 1 1 1.42-1.41l8 8a1 1 0 0 1 0 1.41l-8 8a1 1 0 1 1 -1.42-1.41l7.29-7.29z" fill-rule="evenodd"></path>
				</svg>
			</div>
			</div></div></div>
			</div>
			</div>
			
			<div>
				<div class="_1xc0f9k">
				<div class="_czm8crp">연결된 앱, 공유하는 정보 및 공개<br>대상 관리하기</div>
				</div>
			</div>
		</a>
		</div>
		</div>
		
		<div class="_1m936jew">
		<div class="_15wuypg">
		<a href="/account-settings/personal-info" class="_1cvdx4x">
			<div>
			<div style="margin-bottom: 16px;">
				<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 32px; width: 32px; display: block; fill: rgb(255, 180, 0);"><path d="m21.31 5.91a1.31 1.31 0 1 1 -1.31-1.31 1.31 1.31 0 0 1 1.31 1.31zm-8.31 9.69a1.31 1.31 0 1 0 1.31 1.31 1.31 1.31 0 0 0 -1.31-1.31zm-7-11a1.31 1.31 0 1 0 1.31 1.31 1.31 1.31 0 0 0 -1.31-1.31z"></path><path d="m22 6.5a2.5 2.5 0 0 1 -2 2.45v13.55a.5.5 0 0 1 -1 0v-13.55a2.5 2.5 0 0 1 0-4.9v-2.55a.5.5 0 0 1 1 0v2.56a2.44 2.44 0 0 1 .33.09.5.5 0 0 1 -.33.94h-.01a1.45 1.45 0 0 0 -.99.01 1.49 1.49 0 0 0 0 2.82 1.4 1.4 0 0 0 1 0 1.5 1.5 0 0 0 1-1.41 1.48 1.48 0 0 0 -.09-.52.5.5 0 0 1 .94-.35 2.5 2.5 0 0 1 .16.87zm-7.8 9.83a.5.5 0 0 0 -.29.64 1.48 1.48 0 0 1 .09.52 1.5 1.5 0 0 1 -1 1.41 1.4 1.4 0 0 1 -1 0 1.49 1.49 0 0 1 0-2.82 1.48 1.48 0 0 1 .5-.09 1.52 1.52 0 0 1 .5.08h.01a.5.5 0 0 0 .32-.94 2.46 2.46 0 0 0 -.32-.08v-13.56a.5.5 0 0 0 -1 0v13.55a2.5 2.5 0 0 0 0 4.9v2.55a.5.5 0 0 0 1 0v-2.55a2.5 2.5 0 0 0 1.84-3.32.5.5 0 0 0 -.64-.29zm-7-11a .5.5 0 0 0 -.29.64 1.48 1.48 0 1 1 -1.41-.98 1.47 1.47 0 0 1 .49.08h.01a.5.5 0 0 0 .33-.94 2.44 2.44 0 0 0 -.33-.09v-2.56a.5.5 0 0 0 -1 0v2.55a2.5 2.5 0 0 0 0 4.9v13.55a.5.5 0 0 0 1 0v-13.55a2.5 2.5 0 0 0 1.84-3.32.5.5 0 0 0 -.64-.29z" fill="#484848"></path></svg>
			</div>
			</div>
			
			<div class="_xcuo0b">
			<div class="_djxl322">
			<div class="_ni9axhe"><div><div>
			<div class="_36rlri">
			<span class="_1p0spma2">글로벌 환경 설정</span>
			</div>
			<div class="_36rlri" style="vertical-align: middle; margin-top: -2px; margin-left: 4px;">
				<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 12px; width: 12px; fill: currentcolor;">
				<path d="m4.29 1.71a1 1 0 1 1 1.42-1.41l8 8a1 1 0 0 1 0 1.41l-8 8a1 1 0 1 1 -1.42-1.41l7.29-7.29z" fill-rule="evenodd"></path>
				</svg>
			</div>
			</div></div></div>
			</div>
			</div>
			
			<div>
				<div class="_1xc0f9k">
				<div class="_czm8crp">기본 언어, 통화, 시간대 설정하기</div>
				</div>
			</div>
		</a>
		</div>
		</div>
		
		
	</div>
	</div>
	</div>
	
	<!-- 여백 공간 주기 -->
	<div style="height: 70px;"></div>
	
</div>
</div>
</main>

<c:import url="../jsp/footer.jsp"></c:import>
</body>
</html>