<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.QualificationDTO"%>
<!DOCTYPE html>
<html>

<head>
<title>生徒用ページ</title>
<meta content="text/html; charset=utf-8">
<link rel="stylesheet" href="/Qualification/css/table.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/menu.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css"
	type="text/css" />
<script type="text/javascript" src="/Qualification/js/menu.js">
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
</head>

<body>
	<p class="pagetop">
		<a href="#content">トップ</a>
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
			<table class="example" id="TBL">

				<caption>更新結果</caption>

				<thead>
					<tr>
						<th>資格名</th>
						<th>受験日</th>
						<th>結果</th>
					</tr>
				</thead>

				<tbody>
					<%
						QualificationDTO anko = (QualificationDTO) request.getAttribute("kousin");
					%>
					<tr>
						<td><%=anko.getName()%></td>
						<td><%=anko.getDate()%></td>
						<td><%=anko.getResult()%></td>
					</tr>
				</tbody>
			</table>
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
