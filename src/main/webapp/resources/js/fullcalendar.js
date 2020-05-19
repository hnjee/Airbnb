/**
 * 
 */
document.addEventListener('DOMContentLoaded', function() {

		    var calendarEl = document.getElementById('calendar');
		    
		  //fullcalendar 생성
		    var calendar = new FullCalendar.Calendar(calendarEl, {
		      plugins: [ 'interaction', 'dayGrid', 'moment'],
		      allDay:false,
		      defaultTime: '07:00',
		      selectable: true,      
		      select: function(selectInfo){
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
		      },   
		      
		    	unselectAuto: true
		    });     
		    calendar.render();
		    
		    //잘라온 날짜 0으로 padding하기 위한 함수
		    function pad(n, width) {
		  	  n = n + '';
		  	  return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
		  	}

	      
	      
	      
	      });