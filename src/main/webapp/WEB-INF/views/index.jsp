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


	
	
	
	<script type="text/javascript">
	
		
	      var calendarEl = document.getElementById('calendar');	
	      var disabled = [];
	      
		    //fullcalendar 생성
		      var calendar = new FullCalendar.Calendar(calendarEl, {
		        plugins: [ 'interaction', 'dayGrid', 'moment'],
		        allDay:false,
		        selectable: true,    
		        selectAllow:function(selectInfo){
		        	//해당 날짜만 선택 불가
		        	return checkNotAble(selectInfo.start, disabled);
		        },
		        select: function(selectInfo){
		        	/////////////////////화면 출력 용//////////////////////
		        	var dt_start = selectInfo.start;
		        	var dt_end = selectInfo.end;					
		        	//end의 DD만 subString으로 받아오기        	
		        	var endDay = pad(parseInt((new Date(dt_end)).toISOString().slice(8, 10)),2);	
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
		        	$('#startDate').prop('value',startData);
		        	$('#endDate').prop('value',endData);		        	
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
		      
		      //잘라온 날짜 0으로 padding하기 위한 함수 pad()
		      function pad(n, width) {
		    	  n = n + '';
		    	  return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
		    	}
	
	      
	      
	
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
				$('.guestData').prop('value',totalGuest);
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");		
		});
		$('#adultNum').prop('value',adultNum);
	});
	
	$('.adult-pl').click(function(){
		adultNum ++;
		$('.guestBtn').click(function(){
			var totalGuest = adultNum+childNum+infantNum;		
				$('.totalGuest').prop('value','게스트 '+totalGuest+'명');
				$('.guestData').prop('value',totalGuest);
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
				$('.guestData').prop('value',totalGuest);
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");		
		});
		$('#childNum').prop('value',childNum);
	});
	
	$('.child-pl').click(function(){
		childNum ++;
		$('.guestBtn').click(function(){
			var totalGuest = adultNum+childNum+infantNum;		
				$('.totalGuest').prop('value','게스트 '+totalGuest+'명');
				$('.guestData').prop('value',totalGuest);
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
				$('.guestData').prop('value',totalGuest);
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");		
		});
		$('#infantNum').prop('value',infantNum);
	});
	
	$('.infant-pl').click(function(){
		infantNum ++;
		$('.guestBtn').click(function(){
			var totalGuest = adultNum+childNum+infantNum;		
				$('.totalGuest').prop('value','게스트 '+totalGuest+'명');
				$('.guestData').prop('value',totalGuest);
				$('.totalGuest').prop('style',"border: none;font-weight: 600;color: black;");		
		});
		$('#infantNum').prop('value',infantNum);
	});
	
	
	
	
	

	</script>

</body>
</html>