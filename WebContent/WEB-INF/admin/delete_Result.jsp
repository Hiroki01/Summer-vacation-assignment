<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<title>管理者用メニュー</title>
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
				<li><a class="drawer-brand" href="/Qualification/Amenu">MENU</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Add_Teacher"><span>INSERT</span>教師登録</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Delete_User"><span>DELETE</span>ユーザ削除</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Update_Id"><span>UPDATE</span>ID更新</a></li>
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
				<p>削除完了しました。</p>
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
