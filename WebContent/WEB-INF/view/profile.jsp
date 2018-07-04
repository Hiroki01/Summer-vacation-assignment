<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<link rel="stylesheet" href="/Qualification/css/menu.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css"
	type="text/css" />
<script type="text/javascript" src="/Qualification/js/menu.js"></script>
	<script>
	$(document).ready(function() {
		var pagetop = $('.pagetop');
		$(window).scroll(function() {
			if ($(this).scrollTop() > 100) {
				pagetop.fadeIn();
			} else {
				pagetop.fadeOut();
			}
		});
		pagetop.click(function() {
			$('body, html').animate({
				scrollTop : 0
			}, 100);
			return false;
		});
	});
</script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<title>プロフィール</title>
</head>
<body>
<p class="pagetop">
		<a href="#content">トップへ</a>
	</p>
	<div class="content">
		<div id="top">
			<div class="header">
				<h1>
					<a href="/Qualification/Smenu">資格取得状況一見</a>
				</h1>
				<nav id="menubar">
					<ul>
						<li  class="current"><a href="/Qualification/All_qualifications">受験資格一覧</a></li>
						<li><a href="/Qualification/Search_qualifications">所持資格検索</a></li>
						<li><a href="/Qualification/Insert_qualifications">受験資格登録</a></li>
						<li><a href="/Qualification/Update_qualifications">受験結果更新</a></li>
						<li><a href="/Qualification/Profile">プロフィール画面</a></li>
					</ul>
				</nav>
				<!-- /#menu -->
			</div>
			<!-- /header -->
		</div>
		<!-- /top-->
		<div class="main">
			<br>
			<div class="section">
				<div class="inner">
					<h3>お知らせボックス</h3>
					<ul>
						<li>書くことねぇ（ ＾ω＾）</li>
						<li>プロフ設定事項変更</li>
						<li>資格類追加中</li>
						<li>DEMOはじめました</li>
					</ul>

				</div>
			</div>
			<br>
			<div class="heading">
				<h1>生徒用資格情報閲覧ページについて</h1>
			</div>
			<!-- heading -->
			<p>
				生徒用の資格情報登録、更新ページとなっています。<br> このまま各種ページの説明に移ります。
			</p>
			<br>
			<div class="heading">
				<h1>所持資格一覧</h1>
			</div>
			<!-- heading -->
			<p>自分の持っている資格を確認することができます。</p>
			<br>
			<div class="heading">
				<h1>所持資格検索(特定）</h1>
			</div>
			<!-- heading -->
			<p>資格名を検索窓に入れることでその情報だけを取り出すことができます。</p>
			<br>
			<div class="heading">
				<h1>プロフィール画面について</h1>
			</div>
			<!-- heading -->
			<p>
				基本的な情報の書き換えができます。<br> IDの書き換えにつきましては、先生に依頼してください。
			</p>
			<br> <br> <br>

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