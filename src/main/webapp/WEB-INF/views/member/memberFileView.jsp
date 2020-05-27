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
<h1>Member Images View Page</h1>



<img alt="" src="${pageContext.request.contextPath}/resources/images/member/${file.fileName}">
		
	


</body>
</html>