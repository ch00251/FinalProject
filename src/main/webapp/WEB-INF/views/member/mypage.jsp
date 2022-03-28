<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

</script>
<style>
	.bottom{
		display: table;
  		margin-left: auto;
 		margin-right: auto;
	}
	.bottom .btn{
		margin:10px;
	}
	form{
		display: table;
  		margin-left: auto;
 		margin-right: auto;
	}
</style> 
<form action="#" method="get">
<input type="hidden" value="${login.userid }" name="userid">
<p>마이페이지 입니다</p>
<label style="margin-right: 16px;" for="userid">아이디</label>
<input type="text" name="userid" id="userid"  value="${login.userid }" disabled="disabled">
<span id = "idVerify" style="text-shadow:1px 1px 1px #000;"></span>
<br>  
<label style="margin-right: 32px;" for="username">이름</label>
<input type="text" name="username" value="${login.username }" id = "name">
<br> 

<label for="phone">전화번호</label>
<select name="phone1">
	<option value="010" <c:if test="${login.phone1=='010'}">selected</c:if>>010</option>
	<option value="011" <c:if test="${login.phone1=='011'}">selected</c:if>>011</option>
</select> -
<input type="text" name="phone2"  id = "phone2" value="${login.phone2}"> - <input type="text" name="phone3" value="${login.phone3}" id = "phone3">
<br>
<label style="margin-right: 16px;" for="email">이메일</label>
<input type="text" name="email1" id = "email" value="${login.email1 }"> @
<input style="margin-right: 5px;" type="text" name="email2" id="emailinfo"  value="${login.email2 }">
<select id = "emailPortal">
	<option value="daum.net" <c:if test="${login.email2=='daum.net' }">selected</c:if>>daum.net</option>
	<option value="naver.com" <c:if test="${login.email2=='naver.com' }">selected</c:if>>naver.com</option>
	<option value="gmail.com" <c:if test="${login.email2=='gmail.com' }">selected</c:if>>google.com</option>
</select>
<br>
<div class="bottom">
<input class="btn btn-outline-dark" type="submit" value="수정">	
<input class="btn btn-outline-dark" type="reset" value="취소">
</div>
</form>