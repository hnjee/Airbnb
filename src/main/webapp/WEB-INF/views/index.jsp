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
	<link rel="stylesheet" type="text/css"  href="./resources/css/indexFooter.css"> 
	<link rel="stylesheet" type="text/css"  href="./resources/css/footer.css">

</head>

<body>
	<c:import url="./jsp/header.jsp"></c:import>
	<c:import url="./jsp/searchBox.jsp"></c:import> 
	<c:import url="./jsp/index_contents.jsp"></c:import>
	<c:import url="./jsp/footer.jsp"></c:import>

	<c:import url="./modal/modalScript.jsp"></c:import>
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>	

	
	
	<!-- <script type="text/javascript" src="./resources/js/fullcalendar.js"></script> -->
	
	<script type="text/javascript">
	
	//calendar 동작
	 document.addEventListener('DOMContentLoaded', function() {
	      var calendarEl = document.getElementById('calendar');
	      
	    //fullcalendar 생성
	      var calendar = new FullCalendar.Calendar(calendarEl, {
	        plugins: [ 'interaction', 'dayGrid', 'moment'],
	        selectable: true,      
	        select: function(selectInfo){
	        	var dt_start = selectInfo.start;
	        	var dt_end = selectInfo.end;
	        	dt_start = moment(dt_start).format('MM/DD');
	        	dt_end = moment(dt_end).format('MM/DD');
	        	
	        	//dt_start = (new Date(dt_start)).toISOString().slice(0, 10);
	        	//dt_end = (new Date(dt_start)).toISOString().slice(0, 10);	        	
	        	console.log('start : '+dt_start+' end:'+dt_end);    
	        	$('.datePick').prop('value',dt_start+' - '+dt_end);
	        	$('.datePick').prop('style',"border: none;font-weight: 600;color: black;");
	        },       
	      	unselectAuto: true
	      });
	     
	      calendar.render();
	    });
	
	
	
	//searchBox 동작
	var adultNum=0;
	var childNum=0;
	var infantNum=0;
	

	
	$('.adult-min').click(function(){
		if(adultNum>0){
			adultNum --;
		}
		$('.guestBtn').click(function(){
			var totalGuest = adultNum+childNum+infantNum;		
				$('.totalGuest').prop('value','게스트 '+totalGuest+'명');
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");		
		});
		$('#adultNum').prop('value',adultNum);
	});
	
	$('.adult-pl').click(function(){
		adultNum ++;
		$('.guestBtn').click(function(){
			var totalGuest = adultNum+childNum+infantNum;		
				$('.totalGuest').prop('value','게스트 '+totalGuest+'명');
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");
		});
		$('#adultNum').prop('value',adultNum);
		
	});

	$('.child-min').click(function(){
		if(childNum>0){
			childNum --;
		}
		$('.guestBtn').click(function(){
			var totalGuest = adultNum+childNum+infantNum;		
				$('.totalGuest').prop('value','게스트 '+totalGuest+'명');
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");		
		});
		$('#childNum').prop('value',childNum);
	});
	
	$('.child-pl').click(function(){
		childNum ++;
		$('.guestBtn').click(function(){
			var totalGuest = adultNum+childNum+infantNum;		
				$('.totalGuest').prop('value','게스트 '+totalGuest+'명');
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");		
		});
		$('#childNum').prop('value',childNum);
	});

	$('.infant-min').click(function(){
		if(infantNum>0){
			infantNum --;
		}
		$('.guestBtn').click(function(){
			var totalGuest = adultNum+childNum+infantNum;		
				$('.totalGuest').prop('value','게스트 '+totalGuest+'명');
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");		
		});
		$('#infantNum').prop('value',infantNum);
	});
	
	$('.infant-pl').click(function(){
		infantNum ++;
		$('.guestBtn').click(function(){
			var totalGuest = adultNum+childNum+infantNum;		
				$('.totalGuest').prop('value','게스트 '+totalGuest+'명');
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");		
		});
		$('#infantNum').prop('value',infantNum);
	});
	
	
	
	
	

	</script>

</body>
</html>