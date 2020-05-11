<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="./resources/css/selectHeaderStyle.css">
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
			<div id="pic1">
				<img  src="https://a0.muscache.com/im/pictures/e1295260-5ce4-496b-84f2-a90ae2612811.jpg?aki_policy=xx_large"height="712.5" width="951">
			</div>
			<div class="pic2">
				<div class="pic">
					<img src="https://a0.muscache.com/im/pictures/7436dc02-1515-44e8-80d4-64ab18d657c3.jpg?aki_policy=large" height="355.5" width="474">
				</div>
				<div class="pic">
					<img  src="https://a0.muscache.com/im/pictures/e0085908-7090-41c6-80d5-9337740b8126.jpg?aki_policy=large" height="355.5" width="474">
				</div>
			</div>
			<div class="pic2">
				<div class="pic">
					<img src="https://a0.muscache.com/im/pictures/47f57809-8ce1-47f6-800c-6a7ec5a75eaa.jpg?aki_policy=large" height="355.5" width="474">
				</div>
				<div class="pic">
					<img src="https://a0.muscache.com/im/pictures/83a03dac-eda7-482a-a218-086f7a1270c6.jpg?aki_policy=large"  height="355.5" width="474">
				</div>
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