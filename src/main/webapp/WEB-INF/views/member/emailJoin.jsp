<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#signIn {
	width: 60%;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<form class="form-horizontal" action="member/memberJoin" method="post">
				<div class="form-group" >
					<div class="col-sm-5">
						<input style="font-size: 16px;" type="email" class="form-control" id="checkElemail"
							placeholder="이메일 주소" name="email">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-5">
						<input style="font-size: 16px;" type="text" class="form-control" id="checkElname"
							placeholder="이름(예: 길동)" name="name">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-5">
						<input style="font-size: 16px;" type="text" class="form-control" id="checkElfamilyName"
							placeholder="성(예: 홍)" name="familyName">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-5" id="pwCheck1">
						<input style="font-size: 16px;" type="password" class="form-control" id="checkElpw"
							placeholder="비밀번호 설정하기" name="pw">
						<p class="alarm1" style="margin-top: 7px; margin-bottom:0px; color: red;">비밀번호는 8자 이상 입력하세요</p>
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-5" id="pwCheck2">
						<input style="font-size: 16px;" type="password" class="form-control" id="checkElCheckpw"
							placeholder="비밀번호 확인하기" name="pw">
							<p class="alarm2" style="margin-top: 7px; margin-bottom:0px; color: red;">비밀번호가 일치하지 않습니다</p>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-5">
						<input style="font-size: 16px;" type="text" class="form-control" id="checkElphoneNum"
							placeholder="예) 010-1234-5678" name="phoneNum">
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-5">
						<div class="checkbox">

							<label><input type="checkbox" name="agree" value="agree" id="checkAgree">
								(필수)에어비앤비 서비스 약관 ,결제 서비스 약관,차별 금지 정책에 동의합니다.또한, 에어비앤비 개인정보 처리방침에
								따른 개인정보 이용 및 처리에도 동의합니다. </label>

						</div>
					</div>
				</div>

				<div class="form-group" >
					<div class="col-sm-8">
						<input type="submit" class="btn btn-block goJoin" style="width: 538.5px; box-sizing: border-box; background: rgb(255, 90, 95); color: white;" value="가입하기"
							id="signIn">

					</div>
				</div>
				
				<div style="margin-top: 16px; margin-bottom: 16px; width: 538.5px;overflow:hidden;">
					<div style="border-bottom: 1px solid #EBEBEB !important;"></div>
				</div>
			
				<div>
					이미 에어비앤비 계정이 있나요? <a>로그인</a>
				</div>
			</form>
		</div>
	</div>
	
	
	
</body>
</html>