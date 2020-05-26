<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>Member File Test</h1>
<form action="../member/memberFileInsert" id="formData" method="POST" enctype="multipart/form-data">

<input type="text" name="memberNum">

<div class="form-group" id="f'+cnt+'">	
 <label for="files">File :</label>
 <input type="file" class="form-control files" name="file">
 <i class="glyphicon glyphicon-remove remove"></i> 
 </div>


<button type="button" id="writeButton" class="btn btn-default">Submit</button>
</form>

<a href="../member/memberFileView?memberNum=m13">member file View</a>


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
	
	
	$('#writeButton').on("click",function(){
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