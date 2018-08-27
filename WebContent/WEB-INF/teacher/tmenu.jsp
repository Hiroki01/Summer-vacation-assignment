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
							of specific qualification examination result</span>資格受験結果表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Accepted_class"><span> Class
							qualification acquisition status display</span>クラス毎資格取得状況表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Class_qualification"><span>
							Class-by-class qualification examination status display</span>クラス毎資格受験状況表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Student_number"><span> Search
							by Student ID Number</span>学籍番号毎検索</a></li>
							<li><a class="drawer-menu-item"
					href="/Qualification/Logout"><span>Logout</span>ログアウト</a></li>
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
				<h2 id="newinfo_hdr" class="close">
					<span>更新情報・お知らせ</span>
				</h2>
				<dl id="newinfo">
					<dt>2018/07/11</dt>
					<dd>
						試作なう<span class="newicon">NEW</span>
					</dd>
					<dt>2018/00/00</dt>
					<dd>書くことないよねぇ</dd>
					<dt>2018/00/00</dt>
					<dd>書くことないよねぇ</dd>
					<dt>2018/00/00</dt>
					<dd>書くことないよねぇ</dd>
					<dt>2018/00/00</dt>
					<dd>書くことないよねぇ</dd>
					<dt>2018/00/00</dt>
					<dd>書くことないよねぇ</dd>
				</dl>
			</section>

			<section class="box">

				<h2>
					<span>使用方法等</span>必読
				</h2>

				<h3>資格取得者検索</h3>
				<p>
					調べたい資格名を入力して、合格者のみを表示します。
				</p>

				<h3 class="color1">資格受験結果表示</h3>
				<p>
					調べたい資格名を入力して、受験者全員を表示します。
				</p>

				<h3>クラス毎資格取得状況表示</h3>
				<p>学科・学年・クラスを指定して、合格しているものをクラス全員分表示します。</p>

				<h3>クラス毎資格受験状況表示</h3>
				<p>
						学科・学年・クラスを指定して、受験したものをクラス全員分表示します。
				</p>
				<h3>学籍番号毎検索</h3>
				<p>
					学籍番号を入力することで、特定の個人の受験状況を確認することができます。
				</p>

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
