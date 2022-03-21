<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<style>
.parent{
    width: 90%;
    margin: 10px auto;
}
.logo {
    float: left;
    width:25%;
    box-sizing: border-box;
    display:inline
}

.title{
    float: left;
    margin-left: 5%;
    width:45%;
    height : 200px;
    box-sizing: border-box;
    display:inline
}

.button{
    float: right;
    width:25%;
    height : 200px;
    box-sizing: border-box;
}
</style>
<div class = "parent">
	<div class = "logo">
		<a href="/GreenFootPrints"><img src="images/logo.PNG"></a>
	</div>
	<div class = "title">
		<a href="/GreenFootPrints"><img src="images/title.PNG"></a>
	</div>
	<div class = "button" style="float: right;">
		<!-- 로그인이 안된 경우 -->
		<c:if test="${empty login }">
			<a class="btn btn-outline-dark" href="loginForm" style = "float: right;">로그인</a>&nbsp;
			<a class="btn btn-outline-dark" href="#" style = "float: right;">회원가입</a>&nbsp;
		</c:if>
		<!-- 로그인이 된 경우 -->
		<c:if test="${!empty login }">
			<a class="btn btn-outline-dark" href="#" style = "float: right;">마이페이지</a>&nbsp;
			<a class="btn btn-outline-dark" href="#" style = "float: right;">로그아웃</a>&nbsp;
		</c:if>
	</div>
</div>