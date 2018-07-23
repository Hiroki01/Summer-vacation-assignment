<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>ログイン画面</title>
<meta content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/Qualification/css/table.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css">
</head>

<body>
	<main role="main"> <!-- Page content --> </main>

	<script>
        $(document).ready(function() {
            $('.drawer').drawer();
        });

    </script>

	<div id="container">

		<div id="main">

			<section id="new" class="box">
				<h2 id="newinfo_hdr" class="close"></h2>
				<%
				HttpSession sessions = request.getSession(true);

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
			<form action="/Qualification/Login" method="post">
				<table class="example">
					<caption>ログイン画面</caption>
					<tbody>
						<tr>
							<td style="color:black">ユーザID</td><td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td><td><input type="text" name="id" required></td>
							</tr><tr>
							<td style="color:black">パスワード</td><td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td><td><input type="password" name="pass" required></td>					<tr>

					</tbody>
					</table>
						<input type="submit" value="ログイン">
			</form>

			<a href="/Qualification/Add">新規ユーザー登録（生徒用）</a> <br>
			</section>
		</div>
		<!--main-->
		<footer>
			<small>&copy; 1999-<span id="thisYear"></span> hirasawa
				junjun
			</small>
		</footer>

	</div>
	<!--/container-->

	<script type="text/javascript">
        date = new Date();
        thisYear = date.getFullYear();
        document.getElementById("thisYear").innerHTML = thisYear;

    </script>


	<script type="text/javascript">
        if (OCwindowWidth() <= 800) {
            open_close("newinfo_hdr", "newinfo");
        }

    </script>

</body>

</html>