/**
 * 
 */


 document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
    
      var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [ 'interaction', 'dayGrid' ],
        selectable: true,
        dateClick: function(info){
        	alert('selected date : '+info.dateStr);
        },
        select: function(info){
        	console.log(info.startStr);
        	console.log(info.endStr);
        }
      });
    
      calendar.render();
    });
    