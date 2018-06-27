<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<link rel="stylesheet" href="/Qualification/css/style.css"
	type="text/css" />
	<link rel="stylesheet" href="/Qualification/css/form.css"
	type="text/css" />
<title>盛岡情報ビジネス専門学校資格取得状況管理システム</title>
</head>
<body>
	<%
		HttpSession sessions = request.getSession(true);

		/* 認証失敗から呼び出されたのかどうか */
		Object status = session.getAttribute("status");

		while (status != null) {
			if (status.equals("NO")) {
	%>
	<p>
		IDが数値型ではないです。<br> 再度IDを数値型に直して入力してください。
	</p>
	<%
		//session.setAttribute("status", null);
			//} else if (status.equals("Null")) {
	%>
	<p>存在しないユーザです。</p>
	<%
		session.setAttribute("status", null);
			} else if (status.equals("Exception")) {
	%>
	<p>エラーが発生しました。</p>
	<%
		session.setAttribute("status", null);
			}
		}
	%>
	<form action="/Qualification/Login" method="post">
		<p>ログイン画面</p>
		ユーザID:<input type="text" name="id" required><br> パスワード:<input
			type="password" name="pass" required><br> <input
			type="submit" value="ログイン"><br>
	</form>
	<a href="/Qualification/Add">新規ユーザー登録（生徒用）</a>
</body>
</html>