<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    


<!-- 모달 설정 -->
<input type="hidden" data-toggle="modal" id="setMemberJoin" data-target="#mMemberJoin">
<input type="hidden" data-toggle="modal" id="setEmailJoin" data-target="#emailJoin">
<input type="hidden" data-toggle="modal" id="setAgree" data-target="#agree">
<input type="hidden" data-toggle="modal" id="setPicAdd" data-traget="picAdd">

<!-- 회원 가입 -->
<div id="mMemberJoin" class="modal" role="dialog">
 	<c:import url="./modal/modal.jsp">
 	<c:param name="modal" value="memberJoin"></c:param>
 	</c:import>
</div>

<!-- 이메일로 로그인 -->
<div id="emailJoin" class="modal" role="dialog" >
	<c:import url="./modal/modal.jsp">
	<c:param name="modal" value="emailJoin"></c:param>
	</c:import>
</div>

<!-- 동의 화면 -->
<div id="agree" class="modal" role="dialog" >
	<c:import url="./modal/modal.jsp">
	<c:param name="modal" value="agree"></c:param>
	</c:import>
</div>

<!-- 사진 추가 -->
<div id="picAdd" class="modal" role="dialog">
	<c:import url="./modal/modal.jsp">
	<c:param name="modal" value="addPic"></c:param>
	</c:import>
</div>
