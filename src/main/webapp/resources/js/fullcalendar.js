/**
 * 
 */


 document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
      
    //fullcalendar 생성
      var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [ 'interaction', 'dayGrid', 'moment' ],
        selectable: true,      
        dateClick: function(selectInfo){       	
        	console.log('start : '+selectInfo.start+' end:'+selectInfo.end);          	    
        },       
      	unselectAuto: true
      });
      
      calendar.render();
    });
    