<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<title>教師用メニュー</title>
<meta content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/Qualification/css/table.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css">
<!-- drawer.css -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.1/css/drawer.min.css">
<!-- jquery & iScroll -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/iScroll/5.1.3/iscroll.min.js"></script>
<!-- drawer.js -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/drawer/3.2.1/js/drawer.min.js"></script>
<script type="text/javascript" src="js/openclose.js"></script>
</head>

<body class="drawer drawer--left">
	<header role="banner">
		<button type="button" class="drawer-toggle drawer-hamburger"
			style="background-color: gray">
			<span class="sr-only" style="color: aqua">toggle navigation</span> <span
				class="drawer-hamburger-icon" style="color: white"></span>
		</button>
		<nav class="drawer-nav" role="navigation" id="menubar">
			<ul class="drawer-menu">
				<li><a class="drawer-brand" href="/Qualification/Tmenu">MENU</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Qualified_owner"><span>Search
							qualified people</span>資格取得者検索</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Designated_qualified_person"><span>Indication
							of specific qualification examination result</span>特定資格受験結果表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Accepted_class"><span> Class
							qualification acquisition status display</span>クラス毎資格取得状況表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Class_qualification"><span>
							Class-by-class qualification examination status display</span>クラス毎資格受験状況表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Student_number"><span> Search
							by Student ID Number</span>学籍番号毎検索</a></li>
			</ul>
		</nav>
	</header>
	<main role="main"> <!-- Page content --> </main>

	<script>
		$(document).ready(function() {
			$('.drawer').drawer();
		});
	</script>
	<div id="container">

		<div id="main">

			<section id="new" class="box">
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
				<form action="/Qualification/Desingnated" method="post">
					<table class="example">
						<caption style="color:write;">資格受験者検索</caption>
						<tbody style="color: black">
							<tr>
								<td>調べたい資格名入力</td>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><input type="text" name="qnames" required></td>
							</tr>
							<tr>
								<td><input type="submit" value="検索"></td>
							</tr>
						</tbody>
					</table>

				</form>

			</section>
		</div>
		<!--/main-->



		<p id="pagetop">
			<a href="#">↑</a>
		</p>

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
