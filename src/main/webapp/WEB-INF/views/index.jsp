<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>숙소, 체험, 장소를 모두 한 곳에서</title>
	<style type="text/css">
	modal	 {
			width:50%;
			height:100%;
			margin: 50%;
			padding: 50% 25% 0% 0%;
			box-sizing: content-box;
			}
	</style> 
	<c:import url="./template/boot.jsp"></c:import> 
	<c:import url="./template/fullcalendarLoad.jsp"></c:import>
	<c:import url="./modal/setModal.jsp"></c:import>   
	<script src='./resources/js/fullcalendar.js'></script>

	<link rel="stylesheet" type="text/css" href="./resources/css/searchBoxStyle.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/searchBoxStyle.css">
	<link rel="stylesheet" type="text/css" href="./resources/css/headerStyle.css"> 
	<link rel="stylesheet" type="text/css" href="./resources/css/index_contents.css">
	<link rel="stylesheet" type="text/css"  href="./resources/css/footer.css">
	
	
</head>

<body>
	<c:import url="./jsp/header.jsp"></c:import>
	<c:import url="./jsp/searchBox.jsp"></c:import> 
	<c:import url="./jsp/index_contents.jsp"></c:import>
	<c:import url="./jsp/footer.jsp"></c:import>
	<c:import url="./modal/modalScript.jsp"></c:import>
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>	
</body>
</html>