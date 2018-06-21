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
		<option value="情報システム科" selected></option>
		<option value="総合システム工学科"></option>
		<option value="ネットワーク・セキュリティ科"></option>
		<option value="高度情報工学科"></option>
		<option value="情報ビジネス科"></option>
		<option value="会計ビジネス科"></option>
		<option value="デザイン科"></option>
		<option value="総合デザイン科"></option>
	</select>
	<select name="course">
	<%
	String select[] = request.getParameterValues("deparment");
	if(select.equals("情報システム科")){ %>
		<option value="s1">システムエンジニアコース</option>
		<option value="s2">スマートフォンアプリ開発コース</option>
	<%} %>
	</select>
	<input type="text" name="name"><br>
	<input type="text" name="name"><br>
	<input type="text" name="name"><br>
</form>
</body>
</html>