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
	<c:import url="./modal/setModal.jsp"></c:import>

	<c:import url="./modal/modalScript.jsp"></c:import>
	 
	<a href="./place/fileTest"> Place Image</a>
	<a href="./member/memberFileInsert">Member Image</a>
	
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>	
	<script type="text/javascript">			
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
				    //fullcalendar 생성
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

			
		 //fullcalendar 생성
	      var calendarEl = document.getElementById('calendar');  
	      var calendar = new FullCalendar.Calendar(calendarEl, {
	        plugins: [ 'interaction', 'dayGrid', 'moment'],
	        allDay:false,
	        defaultTime: '07:00',
	        selectable: true,      
	        select: function(selectInfo){
	        	
	        	//////////화면 출력 용/////////////////////////////////
	        	var dt_start = selectInfo.start;
	        	var dt_end = selectInfo.end;
				
	        	//end의 DD만 subString으로 받아오기        	
	        	var endDay = pad(parseInt((new Date(dt_end)).toISOString().slice(8, 10)),2);	

	        	//startStr, endStr 	: YYYY-MM-DD 형태, DATE형 형식이랑 같음
	        	
	        	dt_start = moment(dt_start).format('MM월 DD일');
	        	dt_end = moment(dt_end).format('MM월');
	        	
	        	//dt_start = (new Date(dt_start)).toISOString().slice(0, 10);
	        	//dt_end = (new Date(dt_start)).toISOString().slice(0, 10);	   
	        	
	        	//확인용 콘솔
	        	console.log('start : '+dt_start+' end:'+dt_end); 
	        	//jsp 화면에 출력
	        	$('.datePick').prop('value',dt_start+' - '+dt_end+' '+endDay+'일');
	        	$('.datePick').prop('style',"border: none;font-weight: 600;color: black;");
	        	///////////////////////////////////////////////////
	        	
	        	//////////controller로 보낼 날짜 데이터///////////////////
	        	var startData = selectInfo.startStr;
	        	// 날짜 값 가져오기 
	        	var endData = selectInfo.endStr;	        	
	       		//var monthData = (new Date(endData)).toISOString().slice(5, 7);
	       		var dayData = pad(String(parseInt((new Date(selectInfo.endStr)).toISOString().slice(8, 11))-1),2);
	       		
	       		// 합치기,,,ㅡㅡ
	       		//endData = (new Date(endData)).toISOString().slice(0, 2);
	        	//var endDataFix = String(parseInt((new Date(selectInfo.endStr)).toISOString().slice(8, 10))-1);
	        	//endData = endData +'/'+ monthData+'/'+dayData;
	        	endData = ((new Date(endData)).toISOString().slice(0, 8))+dayData;
	        	console.log("날짜 데이터 : "+endData);
	        	
	        	//값 보낼 input의 속성에 넣어주기
	        	$('#startDate').prop('value',startData);
	        	$('#endDate').prop('value',endData);
	        },   	        
	      	unselectAuto: true
	      });     
	      calendar.render();
	      
	      //잘라온 날짜 0으로 padding하기 위한 함수
	      function pad(n, width) {
	    	  n = n + '';
	    	  return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
	    	}
		
	      
	      //선택 하지 않았을 때 다음 페이지로 이동 불가	      
	      $('.goList').click(function(e){
	    	  if(!$('.location').prop('value')){    
	    		  e.preventDefault();
	    	  } else if(!$('.guestData').prop('value')){
	    		  e.preventDefault();
	    	  } else if(!$('#startDate').prop('value')){
	    		  e.preventDefault();
	    	  } else if(!$('#endDate').prop('value')){
	    		  e.preventDefault();
	    	  }
	      });
	      
	    //modal 회원가입 시 값 입력 안하면 넘어가는것 방지
	      $('.goJoin').click(function(e){	      	
	    	  if(!$('#checkElname').prop('value')){   
	    		  e.preventDefault();
	    	  } else if(!$('#checkElfamilyName').prop('value')){
	    		  e.preventDefault();
	    	  } else if(!$('#checkElpw').prop('value')){
	    		  e.preventDefault();
	    	  } else if(!$('#checkElphoneNum').prop('value')){
	    		  e.preventDefault();
	    	  } else if(!$('#checkElemail').prop('value')){
	    		  e.preventDefault();
	    	  }else if(!$('#checkAgree').prop("checked")){
	    		  alert("약관에 동의하세요");
	    		  e.preventDefault();
	    	  }
	      });
	    
	    	$(function(){
	    		$('.alarm1').hide();
	    		$('.alarm2').hide();
	    		
	    		 $('#checkElpw').keyup(function(){
	 		    	if($('#checkElpw').prop('value').length<8){
	 		    		$('.alarm1').show();
	 		    	} else{
	 		    		$('.alarm1').hide();
	 		    		$('.alarm2').hide();
	 		    	}
	 		    		
	 		    });
	 			
	 		    $('#checkElCheckpw').keyup(function(){
	 		    	if($('#checkElpw').prop('value')!=$('#checkElCheckpw').prop('value')){
	 		    		$('.alarm2').show();
	 		    	} else{
	 		    		$('.alarm2').hide();
	 		    	}
	 		    });
	    		
	    		
	    		
	    	});
	     
	    
	    
	    /* $('#checkElpw').blur(function(){
	    	if($('#checkElpw').prop('value').length<8){
	    		$('#pwCheck1').append('<p class="alarm1" style="margin-top: 7px; margin-bottom:0px; color: red;">비밀번호는 8자 이상 입력하세요</p>');
	    	} else{
	    		$('.alarm1').remove();
	    		$('.alarm2').remove();
	    	}
	    		
	    });
		
	    $('#checkElCheckpw').blur(function(){
	    	if($('#checkElpw').prop('value')!=$('#checkElCheckpw').prop('value')){
	    		$('#pwCheck2').append('<p class="alarm2" style="margin-top: 7px; margin-bottom:0px; color: red;">비밀번호가 일치하지 않습니다</p>');
	    	} else{
	    		$('.alarm2').remove();
	    	}
	    }); */
  
	</script> 
</body>
</html>