<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table table-hover">
			<tr>
				<td><h2>Name</h2></td>
				
				
			</tr>
			<c:forEach items="${list}" var="vo">
			
			<tr>
				<td><button class="btn btn-info" title="${vo.s_memberNum }" id="${vo.sendName }">${vo.sendName }</button></td>
				
				
			</tr>
			
			</c:forEach>
		</table>
		<script type="text/javascript">
		$(".btn").click(function() {
			
		     
        	var s_memberNum = $(this).attr("title")
        	var sendName = $(this).attr("id")
        	
        	var ajaxOption = {
                    url : "./messageWindow",
                    
                    data : {r_memberNum:'${member.memberNum}', s_memberNum:s_memberNum, sendName:sendName},
                    type : "POST",
                    dataType : "html"
                    
            };  
        	$.ajax(ajaxOption).done(function(data){
              
                $('.back').children().remove();
               
                $('.back').html(data);
            });
        	
	
})
		</script>
</body>
</html>