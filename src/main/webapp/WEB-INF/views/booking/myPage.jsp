<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
	<c:import url="../template/boot.jsp"></c:import> 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<link rel="stylesheet" type="text/css" href="../resources/css/searchBoxStyle.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
	<link rel="stylesheet" type="text/css" href="../resources/css/headerStyle.css"> 

	<link rel="stylesheet" type="text/css"  href="../resources/css/indexFooter.css"> 
	<style type="text/css">
		.content {
			width:100%;
			min-height: 720px;
			height:100%;
		}
		.contents {
			width:85%;
			height : 100%;
			min-width: 1000px;
			min-height: 600px;
			border: 1px red solid;
			margin: 0 auto;
			padding: 0 35px;
			box-sizing: border-box;
			
		}
		.back{
			width: 100%;
			min-height: 600px;
			background-image: url("../resources/w3images/back.png");
			background-repeat: no-repeat;
			background-position: center;
		}
		
	</style>
	
</head>
<body>
<c:import url="../jsp/header.jsp"></c:import>
<div class="content">
	
<div class="contents">

  <h2><b>여행</b></h2>
  <ul class="nav nav-tabs">
    <li class="active c" id="yet"><a href="#"><b>예정된 예약</b></a></li>
    <li class="c" id="already"><a href="#"><b>이전 예약</b></a></li>
    
  </ul>
		
		<div class="back">
			
		</div>
	</div>
</div>

<hr>
<c:import url="../jsp/footer.jsp"></c:import>
</body>
<script type="text/javascript">

	$("#yet").click(function() {
	$(this).attr("class", "active");
	$("#already").removeClass("active");
	})

	$("#already").click(function() {
	$(this).attr("class", "active");
	$("#yet").removeClass("active");
})
</script>

</html>