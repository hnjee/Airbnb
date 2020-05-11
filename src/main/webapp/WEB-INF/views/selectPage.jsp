<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="./resources/css/listHeaderStyle.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/selectPage.css">
	<link rel="stylesheet" type="text/css"  href="./resources/css/listFooter.css"> 
	<style type="text/css">
		footer{
			padding: 0px 80px 80px 80px;
		}
	</style>
</head>
<body>
	<!-- Header start -->
	<c:import url="./jsp/listHeader.jsp"></c:import>
	<!-- <div id="header1"> </div> -->
	<!-- Header End -->

	<!-- Main Start -->
	<main id="selectPageContent">
		<div id="picWrap">
			<div id="pic1"></div>
			<div class="pic2">
				<div></div>
				<div></div>
			</div>
			<div class="pic2">
				<div></div>
				<div></div>
			</div>
		</div>
			
		<div id="descWrap">
			
		</div>
	</main>
	<!-- Main End -->


	<!-- Footer Start -->
	<c:import url="./jsp/footer.jsp"></c:import>
	<!-- Footer End -->
</body>
</html>