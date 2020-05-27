<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<input type="hidden"  id="placeName" value="${pVo.placeName}">
<input type="hidden"  id="pType" value="${pVo.placeType}">
<input type="hidden"  id="pMaxGuest" value="${pVo.placeMaxGuest}">
<input type="hidden"  id="pBed" value="${pVo.bed}">
<input type="hidden"  id="pBathroom" value="${pVo.bathroom}">

<input type="hidden"  id="pPrice" value="${pVo.placePrice}">
<input type="hidden"  id="pDesc" value="${pVo.placeDesc}">
<input type="hidden"  id="pRule" value="${pVo.placeRule}">
<input type="hidden"  id="pCheckInTime" value="${pVo.checkInTime}">
<input type="hidden"  id="pCheckOutTime" value="${pVo.checkOutTime}">


				<div class="_1mbllh6j">
	<div class="_s1tlw0m">숙소 주소를 적어주세요.</div>
</div>

<textarea class="input-block" id="placeLocation" placeholder="예) 서울시 마포구 서교동" 
						style="height : 50px;"  ></textarea>
						
<div class="_1mbllh6j">
	<div class="_s1tlw0m">숙소 이미지를 저장해주세요.</div>
</div>


<form action="../place/fileTest" id="formData" method="POST" enctype="multipart/form-data">

<input type="button" id="add" class="btn btn-info" value="AddFile">

<div id="file"></div>

<button type="button" id="writeButton" class="btn btn-default">Submit</button>
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
	
	$('#writeButton').on("click",function(){
		//title, contents 데이터 유무 검증
		var ch3 = true;
		
		$(".files").each(function() {
			if($(this).val()==''){
				ch3=false;
			}
		});
	


</script>



