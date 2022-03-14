<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#titlelabel{
		margin-right: 15px;
	}
</style>
</head>
<body>
<div class="container">
	<p>새글 추가 폼입니다.</p>
	<form action="boardInsert" method="post">
		<div>
			<label for="writer">작성자</label>
			<input type="text" id="userid" name="userid"/>
		</div>
		<div>
			<label id="titlelabel" for="title">제목</label>
			<input type="text" id="title" name="title"/>
		</div>
		<div>
			<label for="content">내용</label>
			<textarea name="content" id="content" cols="30" rows="10"></textarea>
		</div>
		<button class="btn btn-outline-dark" type="submit" onclick="submitContents(this);">등록</button>
		<button class="btn btn-outline-dark" type="reset">취소</button>
	</form>
</div>
</body>
</html>