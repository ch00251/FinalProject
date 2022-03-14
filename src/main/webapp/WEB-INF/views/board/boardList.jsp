<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<p>자유게시판 입니다</p>
<a id="new" href="boardInsertForm" class="btn btn-outline-dark">새글 작성</a>
<table width="100%">
	<thead>
		<tr>
			<th>글번호</th>
			<th width="50%">제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="x" items="${boardList }">
		<tr>
			<td>${x.num }</td>
			<td><a href="boardRetrieve?num=${x.num }">${x.title }</a></td>
			<td>${x.userid }</td>
			<td>${x.regdate }</td>
			<td>${x.viewCount }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</div>
</body>
</html>