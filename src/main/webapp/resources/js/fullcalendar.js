/**
 * 
 */


 document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
    
      var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [ 'interaction', 'dayGrid', 'moment' ],
        selectable: true,
        
        dateClick: function(info){       	
        	console.log('date1 : '+info.dateStr);       	
        }        
      });
      
      calendar.on('dateClick', function(info2) {
    	  console.log('date 2:  ' + info2.dateStr);
    	});
      
      calendar.render();
    });
    