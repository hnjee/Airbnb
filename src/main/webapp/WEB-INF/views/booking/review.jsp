<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}

.bnb{
	font-size: 1.4em;
}

.review {
	width : 60%;
	height: 100%;
	min-width: 500px;
	display: inline-block;
	margin-left: 50px;
}

.img {
	float: left;
}
</style>
</head>

<body>
<div class="img">
<img src="${pageContext.request.contextPath}/resources/images/place/${fileList[0].fileName}" width="250px" height="180px" >
</div>
<div class="review">
<span class="bnb">${vo.placeName}</span> <br>
	<div class="starRev">
	  <span title="0.5" class="starR1 on">별1_왼쪽</span>
	  <span title="1.0" class="starR2">별1_오른쪽</span>
	  <span title="1.5" class="starR1">별2_왼쪽</span>
	  <span title="2.0" class="starR2">별2_오른쪽</span>
	  <span title="2.5" class="starR1">별3_왼쪽</span>
	  <span title="3.0" class="starR2">별3_오른쪽</span>
	  <span title="3.5" class="starR1">별4_왼쪽</span>
	  <span title="4.0" class="starR2">별4_오른쪽</span>
	  <span title="4.5" class="starR1">별5_왼쪽</span>
	  <span title="5.0" class="starR2">별5_오른쪽</span>
	
	</div>
	<form action="./reviewInsert" method="post">
				<input name="placeNum" value="${vo.placeNum }" hidden="true">
				<input name="memberNum" value="${member.memberNum }" hidden="true">
				<input name="reviewRate" class="reviewRate" hidden="true">
				
			    <div class="form-group">
			      <textarea class="form-control" rows="5" id="comment" placeholder="여기에 리뷰를 입력하세요" name="reviewDesc"></textarea>
			    </div>
			    <input type="submit" class="btn btn-primary" value="리뷰 등록" style="float: right">
			    <input type="button" class="btn btn-success" value="뒤로 가기" style="float:right">
		</form>
</div>

<script type="text/javascript">
	$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  $(".reviewRate").val($(this).attr("title"));
	  return false;
	});
	$('.btn-success').click(function(){
		var ajaxOption = {
	            url : "./already",
	            
	            data : {memberNum:'${member.memberNum}'},
	            type : "POST",
	            dataType : "html"
	            
	    };  
		$.ajax(ajaxOption).done(function(data){
	       
	        $('.back').children().remove();
	       
	        $('.back').html(data);
	    });
	})
	$('.btn-primary').click(function(){
		
		alert("리뷰 등록 성공");
		
	})
	
</script>
</body>
</html>