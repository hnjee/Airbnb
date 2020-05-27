<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="_1mbllh6j">
	<div class="_s1tlw0m">숙소 이미지를 저장해주세요.</div>
</div>


<form action="./addPlaceDone" id="formData" method="post" enctype="multipart/form-data">

<input type="button" id="add" class="btn btn-info" value="AddFile">
<input type="hidden" readonly="readonly" id="placeNum"  name="placeNum" value="${placeNum}">
<div id="file"></div>

</form>

<script type="text/javascript">
	var cnt =1;
	$('#file').on("click",".remove",function(){
		$(this).parent().remove();
		cnt--;
	});
	
	
	$('#add').click(function(){
		if(cnt<6){
			$('#file').append('<div class="form-group" id="f'+cnt+'">	 <label for="files">File :</label><input type="file" class="form-control files" name="files"><i class="glyphicon glyphicon-remove remove"></i> </div>');
			cnt++;
		} else{
			alert('파일은 최대 5개');
		}	
	});
	
	
	$('#nextPage').on("click",function(){
		//title, contents 데이터 유무 검증
		var ch3 = true;
		
		$(".files").each(function() {
			if($(this).val()==''){
				ch3=false;
			}
		});
		
		if(ch3){
			//form 전송 (submit event 강제 발생)
			$('#formData').submit();
		} else{
			//submit event 종료
			alert("파일을 업로드 하세요");
		}			
	});


</script>


</body>
</html>