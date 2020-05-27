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
				<td>${vo.sendName }</td>
				
				
			</tr>
			
			</c:forEach>
		</table>
		
</body>
</html>