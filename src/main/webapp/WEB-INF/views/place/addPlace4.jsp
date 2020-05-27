<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="./addPlaceDone" id="formData" method="post" enctype="multipart/form-data">
		
		<div class="_1mbllh6j">
			<div class="_s1tlw0m">편의 시설을 등록해주세요.</div>
		</div>
		
		<filedset>
		  <input type="checkbox" id="Shower" name="amenity" value="1">Shower
		  <input type="checkbox" id="vehicle2" name="amenity" value="2">Kitchen
		  <input type="checkbox" id="vehicle3" name="amenity" value="3">Wifi<br>
		  <input type="checkbox" id="vehicle3" name="amenity" value="4">Heating
		  <input type="checkbox" id="TV" name="amenity" value="5">TV
		  <input type="checkbox" id="Accessible" name="amenity" value="6">휠체어
		</filedset>

		<div class="_1mbllh6j">
			<div class="_s1tlw0m">숙소 이미지를 저장해주세요.</div>
		</div>
		
		<input type="button" id="add" class="btn btn-info" value="AddFile">
		<input type="hidden" readonly="readonly" id="placeNum" name="placeNum"
			value="${placeNum}">
		<div id="file">
			<div class="form-group" id="f1">
				<label for="files">File :</label><input type="file"
					class="form-control files" name="files"><i
					class="glyphicon glyphicon-remove remove"></i>
			</div>
			<div class="form-group" id="f2">
				<label for="files">File :</label><input type="file"
					class="form-control files" name="files"><i
					class="glyphicon glyphicon-remove remove"></i>
			</div>
			<div class="form-group" id="f3">
				<label for="files">File :</label><input type="file"
					class="form-control files" name="files"><i
					class="glyphicon glyphicon-remove remove"></i>
			</div>
			<div class="form-group" id="f4">
				<label for="files">File :</label><input type="file"
					class="form-control files" name="files"><i
					class="glyphicon glyphicon-remove remove"></i>
			</div>
			<div class="form-group" id="f5">
				<label for="files">File :</label><input type="file"
					class="form-control files" name="files"><i
					class="glyphicon glyphicon-remove remove"></i>
			</div>
		</div>

		


	</form>

	<script type="text/javascript">
		var cnt = 5;
		$('#file').on("click", ".remove", function() {
			if (cnt > 5) {
				$(this).parent().remove();
				cnt--;
			} else {
				alert('사진은 최소 5개 이상 넣어주세요.')
			}
		});

		$('#add')
				.click(
						function() {
							$('#file')
									.append(
											'<div class="form-group" id="f'+cnt+'">	 <label for="files">File :</label><input type="file" class="form-control files" name="files"><i class="glyphicon glyphicon-remove remove"></i> </div>');
							cnt++;
						});

		$('#nextPage').on("click", function() {
			//title, contents 데이터 유무 검증
			var ch3 = true;

			$(".files").each(function() {
				if ($(this).val() == '') {
					ch3 = false;
				}
			});

			if (ch3) {
				//form 전송 (submit event 강제 발생)
				$('#formData').submit();
			} else {
				//submit event 종료
				alert("파일을 업로드 하세요");
			}
		});
	</script>


</body>
</html>