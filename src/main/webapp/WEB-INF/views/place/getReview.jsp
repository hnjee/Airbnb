<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${reviewList}" var="review">
	<div class="review_one" style="margin-top:20px;">
    	<div class="review_user">
    		<div class="review_user_pic">
    			<img src="https://a0.muscache.com/im/pictures/user/42d3a3e4-f462-4d8f-85cb-1a444865ecb2.jpg?aki_policy=profile_x_medium" height="48" width="48" alt="Jina님의 사용자 프로필" title="Jina님의 사용자 프로필">
    		</div>
    		<div class="review_user_info" style="margin-left:16px;  font-family: Circular">
    			<div style="font-weight: bold;">${review.memberNum}</div>
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
		<c:if test="${pager.curBlock gt 1}">
			 <button class="front"> < </button> 					
		</c:if>

		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			<button title="${i}" class="pages"> ${i}</button>
		</c:forEach>
		
		<c:if test="${pager.curBlock lt pager.totalBlock}">
			<button class="back"> > </button> 
		</c:if>
		<c:if test="${reviewCnt eq 0}">
			<div style="margin-top:10px;"></div>
		</c:if>
		
		<c:if test="${reviewCnt ne 0}">
			<c:if test="${pager.curBlock gt 1}">
				 <span class="front"> <a> < </a> </span> 					
			</c:if>
			<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
				<c:if test="${pager.curPage eq i}">
					<span title="${i}" class="pages"> <a class="active">${i}</a></span>
				</c:if>
				<c:if test="${pager.curPage ne i}">
					<span title="${i}" class="pages"> <a>${i}</a></span>
				</c:if>
			</c:forEach>
			<c:if test="${pager.curBlock lt pager.totalBlock}">
				<span class="back"> <a> > </a> </span> 
			</c:if>
		</c:if>
	</div>
</div>