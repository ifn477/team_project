<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
<form action="qna-save" method="post">
<table border="1" align="center">
<tr><td><input type="hidden" name="userId" value="${member.userId}"></td></tr>
<tr><th style="text-align: center;">문의글 작성</th></tr>
<tr><td><input type="text"  placeholder="문의 제목을 입력해주세요" name="q_title"></td></tr>
<tr><td><textarea rows="10" cols="30"  placeholder="문의 내용을 입력해주세요" name="q_content"></textarea></td></tr>
<tr>
	<td align="center">
	    <input type="checkbox" name="q_secret" value="Y"/><span class="ml_10">비밀글 설정</span>
   </td>
</tr>
<tr><td><input type="submit" value="입력">
 		<button type="button" onclick="location.href='main'">취소</button></td></tr>
</table>
</form>
</body>
</html>