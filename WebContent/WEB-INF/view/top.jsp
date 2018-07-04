<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset=UTF-8>
<link rel="stylesheet" href="/Qualification/css/table.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/menu.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css"
	type="text/css" />
<script type="text/javascript" src="/Qualification/js/menu.js" /></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<title>新規登録用画面（生徒用）</title>
</head>

<body>

	<div class="content">
		<div id="top">
			<div class="header">
				<h1>
					<a href="/Qualification/TopShow">資格取得状況一見</a>
				</h1>
			</div>
			<!-- /header -->
		</div>
		<!-- /top-->
		<div class="main">
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
				session.setAttribute("status", null);
						break;
					} else if (status.equals("nai")) {
			%>
			<p>存在しないユーザです。</p>
			<%
				session.setAttribute("status", null);
						break;
					} else if (status.equals("Exception")) {
			%>
			<p>エラーが発生しました。</p>
			<%
				session.setAttribute("status", null);
						break;
					}
				}
			%>
			<br>

			<form action="/Qualification/Login" method="post">
				<table class="example">
					<caption>ログイン画面</caption>
					<tbody>
						<tr>
							<td>ユーザID</td><td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td><td><input type="text" name="id" required></td>
							</tr><tr>
							<td>パスワード</td><td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td><td><input type="password" name="pass" required></td>					<tr>

					</tbody>
					</table>
						<input type="submit" value="ログイン">
			</form>
			<a href="/Qualification/Add">新規ユーザー登録（生徒用）</a> <br>
			<div id="bar"></div>
		</div>
		<!--main-->
	</div>
	<!--contents-->
	<footer class="footer">
		<small>&copy; 1999-<span id="thisYear"></span> hirasawa junjun
		</small>

		<script type="text/javascript">
			date = new Date();
			thisYear = date.getFullYear();
			document.getElementById("thisYear").innerHTML = thisYear;
		</script>
	</footer>
</body>

</html>
