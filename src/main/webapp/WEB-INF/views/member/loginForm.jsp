<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<c:if test="${!empty mesg }">
<script>
	alert('${mesg}');
</script>
</c:if>
<script type="text/javascript">
	$(document).ready(function(){
		$("form").on("submit", function(event){
			var userid=$("#userid").val();
			var passwd=$("#passwd").val();
			if(userid.length==0){
				alert("아이디를 입력하세요.");
				$("#userid").focus();
				event.preventDefault();
			}else if(passwd.length==0){
				alert("비밀번호를 입력하세요.");
				$("#passwd").focus();
				event.preventDefault();
			}
		})
	});
</script>
<style>
	.login{
		text-align: center;
	}
	#userid{
		margin-left: 15px;
	}
</style> 
<div class="login">
<form action="login" method="get">
	<label for="id">아이디</label>
	<input type="text" name="userid" id="userid" /><br>
	<label for="pwd">비밀번호</label>
	<input type="text" name="passwd" id="passwd" />
<br><br />
<input class="btn btn-outline-dark" type="submit" value="로그인">
<input class="btn btn-outline-dark" type="reset" value="취소">
</form>
</div>