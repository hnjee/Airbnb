<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href='./resources/static/fullcalendar/packages/core/main.css' rel='stylesheet' />
<link href='./resources/static/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
<script src='./resources/static/fullcalendar/packages/core/main.js'></script>
<script src='./resources/static/fullcalendar/packages/daygrid/main.js'></script>
<script src='./resources/static/fullcalendar/packages/interaction/main.js'></script>
<script>
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
    

</script>
</head>
<body>
 
<div id='calendar'></div>
 
</body>
</html>