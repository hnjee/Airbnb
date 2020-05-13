<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../template/boot.jsp"></c:import>
</head>
<body>
	<div class="container">
		<div class="row">
			<form class="form-horizontal">
				
				<div class="form-group" >
					<div class="col-sm-6">
						<button type="button" class="btn btn-primary btn-block"> 페이스 계정으로 로그인</button>
					</div>
				</div>
				
				<div class="form-group" >
					<div class="col-sm-6">
						<button type="button" class="btn btn-default btn-block"> 구글 계정으로 로그인</button>
					</div>
				</div>
				
				<div>
				--------------------------------------------------------- 또는 ---------------------------------------------------------
				</div>
				
				<div class="form-group" >
					<div class="col-sm-6">
						<input type="text" class="form-control" id="id" placeholder="이메일 주소" name="id">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-6">
						<input type="text" class="form-control" id="pw" placeholder="비밀번호" name="pw">
					</div>
				</div>
				
				<div class="form-group">
					<div class= "col-sm-5">
						<div class="checkbox">
							<label><input type="checkbox" name="remember" value="remember">비밀번호 저장</label>
						</div>
					</div>
				</div>
				
				<a>전화번호로 로그인</a>
				
				<div class="form-group">
					<div class="col-sm-10">
						<button type="submit" class="btn btn-danger">로그인</button>
					</div>
				</div>
				
				<div>
				----------------------------------------------------------------------------------------------------------------------
				</div>
				
				<div>
				에어비앤비 계정이 없으세요? <a>회원 가입</a>
				</div>
				
			</form>
		</div>
	</div>

</body>
</html>