<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href='./resources/static/fullcalendar/packages/core/main.css' rel='stylesheet' />
<link href='./resources/static/fullcalendar/packages/daygrid/main.css' rel='stylesheet' />
<script src='./resources/static/fullcalendar/packages/core/main.js'></script>
<script src='./resources/static/fullcalendar/packages/daygrid/main.js'></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
    
      var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [ 'dayGrid' ]
      });
    
      calendar.render();
    });
    

</script>
</head>
<body>
 
<div id='calendar' ></div>
 
</body>
</html>