<%@page import="com.dto.BoardDTO"%>
<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.bottom{
		display: table;
  		margin-left: auto;
 		margin-right: auto;
	}
	.comments{
		display: table;
  		margin-left: auto;
 		margin-right: auto;
	}
	ul{
		margin:0; 
		padding:0;
	}
	li{
		display: inline;
	}
	th{
		width: 10%;
		background-color: #93bf85;
	}
	.contents{
		height: 200px;
	}
	textarea{
		width: 800px;
		height: 50px;
	}
</style>
</head>
<body>
<div class="container">
	<p style="display:table; margin-left: auto; margin-right: auto;">글 상세 페이지</p>
	<table width="80%" border="1" style="display:table;margin-left: auto; margin-right: auto;">
		<tr>
			<th>제목</th>
			<td>${boardRetrieve.title }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${boardRetrieve.userid }</td>
		</tr>
		<tr>
			<td colspan="2">
				<ul>
					<li>
						<strong>작성일</strong>
						<span>${boardRetrieve.regdate }</span>
					</li>
					<li>
						<strong>조회수</strong>
						<span>${boardRetrieve.viewCount }</span>
					</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td colspan="2"><div class="contents">${boardRetrieve.content }</div></td>
		</tr>
	</table>
</div>
<br />
<div class="bottom">
<%
	MemberDTO d=(MemberDTO)session.getAttribute("login");
	String id=d.getUserid();
	BoardDTO dd=(BoardDTO)session.getAttribute("board");
	String userid=dd.getUserid();
	int num=dd.getNum();
	System.out.println("로그인 한 아이디:"+id);
	System.out.println("글 작성한 아이디:"+userid);
	if(id.equals(userid)){ %>
		<a class="btn btn-outline-dark" href="loginCheck/boardList">목록 보기</a>
		<a class="btn btn-outline-dark" href="boardUpdate?num=<%=num%>">수정하기</a>
		<a class="btn btn-outline-dark" href="loginCheck/boardDelete?num=<%=num%>">삭제하기</a>
	<%}else{%>
		<a class="btn btn-outline-dark" href="loginCheck/boardList">목록 보기</a>
	<%}%>
</div>
</body>
<br />
</html>