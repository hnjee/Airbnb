		
		var calendarEl = document.getElementById('selectCalendar');			
		var dateList = new Array();
		
	    var disabled = ['2020-05-01','2020-05-12'];
	      
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