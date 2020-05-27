<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<c:forEach items="${reviewList}" var="review">
		<div class="review_one" style="margin-top:20px;">
	    	<div class="review_user">
	  	  		<div class="review_user_pic">
	    			<img src="${pageContext.request.contextPath}/resources/images/member/${review.fileName}" height="48" width="48">
	    		</div>
	    		<div class="review_user_info" style="margin-left:16px;  font-family: Circular">
	    			<div style="font-weight: bold;">${review.name}</div>
	    			<div>${review.reviewDate}</div>
	    		</div>
	    	</div>
	    	<div class="review_content">
	    		${review.reviewDesc} 
	    	</div>
	    	<hr>
	  	</div>					
	</c:forEach>
	<div style="margin-bottom: 30px;">
		<div class="pagination">
			<c:if test="${reviewCnt eq 0}">
				<div style="margin-top:10px;"></div>
			</c:if>
			
			<c:if test="${reviewCnt ne 0}">
				<c:if test="${pager.curBlock gt 1}">
					 <span class="front" title="${pager.startNum}"> <a href="#target"> < </a> </span> 					
				</c:if>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<c:if test="${pager.curPage eq i}">
						<span title="${i}" class="pages"> <a class="active" href="#target">${i}</a></span>
					</c:if>
					<c:if test="${pager.curPage ne i}">
						<span title="${i}" class="pages"> <a href="#target">${i}</a></span>
					</c:if>
				</c:forEach>
				<c:if test="${pager.curBlock lt pager.totalBlock}">
					<span class="back" title="${pager.lastNum}"> <a href="#target"> > </a> </span> 
				</c:if>
			</c:if>
		</div>
	</div>
				