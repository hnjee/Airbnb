/**
 * 
 */
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