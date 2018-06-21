<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>新規登録用画面（生徒用）</title>
</head>
<body>
<form action="/Qualification/AddResult" method="post">
	<input type="text" name="id"><br>
	<input type="text" name="name"><br>
	<input type="text" name="gender"><br>
	<select name="department">
		<option value="情報システム科" selected>
		<option value="デザイン科">
		<option value="ビジネス科">
	</select>
	<%
	String select[] = request.getParameterValues("deparment");
	if(select.equals("情報システム科")){ %>
	<input type="text" name="name"><br>
	<input type="text" name="name"><br>
	<input type="text" name="name"><br>
</form>
</body>
</html>