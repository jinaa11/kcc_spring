<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Upload with Ajax</h1>



	<style>
.uploadResult {
	width: 100%;
	background-color: gray;
}

.uploadResult ul {
	display: flex;
	flex-flow: row;
	justify-content: center;
	align-items: center;
}

.uploadResult ul li {
	list-style: none;
	padding: 10px;
}

.uploadResult ul li img {
	width: 100px;
}
</style>

	<style>
.bigPictureWrapper {
	position: absolute;
	display: none;
	justify-content: center;
	align-items: center;
	top: 0%;
	width: 100%;
	height: 100%;
	background-color: gray;
	z-index: 100;
}

.bigPicture {
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>

	<div class='bigPictureWrapper'>
		<div class='bigPicture'></div>
	</div>


	<div class='uploadDiv'>
		<input type='file' name='uploadFile' multiple>
	</div>

	<div class='uploadResult'>
		<ul>

		</ul>
	</div>


	<button id='uploadBtn'>Upload</button>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		$(function() {
			var cloneObj = $(".uploadDiv").clone();

			$("#uploadBtn").on("click", function(e) {

				// FormData: 자바스크립트 객체
				var formData = new FormData();
				var inputFile = $("input[name='uploadFile']");
				var files = inputFile[0].files;

				console.log(files);

				//add filedate to formdata
				for (var i = 0; i < files.length; i++) {
					if (!checkExtension(files[i].name, files[i].size)) {
						return false;
					}

					formData.append("uploadFile", files[i]);
				}

				$.ajax({
					url : '/uploadAjaxAction',
					// processData, contentType 반드시 false로 지정해야만 전송됨
					processData : false,
					contentType : false,
					data : formData,
					type : 'POST',
					success : function(result) {
						showUploadedFile(result);
						$(".uploadDiv").html(cloneObj.html());
					}
				}); //$.ajax
			}); // end on

			var uploadResult = $(".uploadResult ul");

			// 서버가 성공했을 때 호출
			function showUploadedFile(uploadResultArr) {
				var str = "";

				$(uploadResultArr).each(function(i, obj) {
					str += "<li>" + obj.fileName + "</li>";
				});

				uploadResult.append(str);
			}
		}); // end main

		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		var maxSize = 5242880; //5MB

		function checkExtension(fileName, fileSize) {

			if (fileSize >= maxSize) {
				alert("파일 사이즈 초과");
				return false;
			}

			if (regex.test(fileName)) {
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}
	</script>

</body>
</html>
