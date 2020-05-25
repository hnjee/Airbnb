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
<h1>Images View Page</h1>


${file.fileName}
<c:catch>
	<c:forEach items="${fileList}" var="file" varStatus="stat">	
		<%--	링크 누르면 사진 다운로드
		<div>
			<a href="../placeFile/fileDown?fileNum=${file.placeFileNum}">${file.oriName}</a>		
		</div> --%>
		
		
		<img alt="" src="${pageContext.request.contextPath}/resources/images/place/${file.fileName}">
		
	</c:forEach>.
<h1>upload imgs</h1>	
	
</c:catch>


</body>
</html>