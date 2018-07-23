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
				<li><a class="drawer-brand" href="#">MENU</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Qualified_owner"><span>Search
							qualified people</span>資格取得者検索</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Search_qualifications"><span>Indication
							of specific qualification examination result</span>特定資格受験結果表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Update_qualifications"><span> Class
							qualification acquisition status display</span>クラス毎資格取得状況表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Update_qualifications"><span>
							Class-by-class qualification examination status display</span>クラス毎資格受験状況表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Update_qualifications"><span>
							Indication of qualification acquisition status for each grade</span>学年毎資格取得状況表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Update_qualifications"><span>Laboratory
							examination status display for each grade</span>学年毎資格受験状況表示</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/All_qualifications"><span> Search
							by Student ID Number</span>学籍番号毎検索</a></li>
				<li><a class="drawer-menu-item" href="/Qualification/Profile"><span>PROFILE</span>プロフィール</a></li>
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

				<h3>受験予定登録</h3>
				<p>
					受験予定の資格を登録することができます。<br>間違えると更新できませんので確認をしっかり行ってください。
				</p>

				<h3 class="color1">合格済み資格</h3>
				<p>
					合格している資格のみを表示するページです。<br>次受験の資格の参考にしてください。
				</p>

				<h3>受験結果更新</h3>
				<p>受験予定登録ページで登録してあり、受験結果が出たものだけ更新してください。</p>

				<h3>受験済み一覧</h3>
				<p>
					受験登録をしたものが全て表示されます。<br>不合格、未受験も対象です。
				</p>
				<h3>プロフィール</h3>
				<p>
					登録アカウント情報の変更を行えるページです。<br>登録ID（学籍番号）は変更できないので、変更したい場合は担当教師に依頼してください。
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
