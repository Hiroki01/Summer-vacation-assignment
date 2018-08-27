<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="studentDTO.StudentDTO"%>
<!DOCTYPE html>
<html>
<head>
<title>個人情報更新画面</title>
<meta content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/Qualification/css/table.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css">
<link rel="stylesheet" href="/Qualification/css/form.css">
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
					href="/Qualification/Insert_qualifications"><span>INSERT</span>受験予定登録</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Search_qualifications"><span>HAVE</span>合格済み資格</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Update_qualifications"><span>UPDATE</span>受験結果更新</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/All_qualifications"><span>ALL</span>受験済み一覧</a></li>
				<li><a class="drawer-menu-item" href="/Qualification/Profile"><span>PROFILE</span>プロフィール</a></li>
				<li><a class="drawer-menu-item"
					href="/Qualification/Logout"><span>Logout</span>ログアウト</a></li>
			</ul>
		</nav>
	</header>
	<main role="main"> <!-- Page content --> </main>
	<%
		StudentDTO re = (StudentDTO) request.getAttribute("pro");
	%>

	<script>
		$(document).ready(function() {
			$('.drawer').drawer();
		});
	</script>
	<div id="container">

		<div id="main">
			<section id="new" class="box">
				<form action="/Qualification/ProfileResult" name="f" class="contact"
					method="post">
					<p>以下のフォームにご入力の上、「入力内容の確認画面へ」ボタンをクリックしてください。</p>

					<p class="attention">
						<img src="/Qualification/image/required1.gif" alt="必須" width="26"
							height="15"> マークの項目は入力必須となります。
					</p>
					<table style="color:black;">
						<tbody>
							<tr>
								<th><label for="name">氏名：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><input type="text" name="name" required
									value="<%=re.getName()%>"><br> <span
									class="supplement">例） 田中 太郎</span></td>
							</tr>
							<tr>
								<th><label for="name">氏名（カタカナ）：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><input type="text" name="namek" required
									value="<%=re.getNamek()%>"><br> <span
									class="supplement">例） タナカ タロウ</span></td>
							</tr>
							<tr>
								<th><label for="gender">性別：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><select name="gender" required>
										<%
											if (("男").equals(re.getGender())) {
										%>
										<option value="男" selected>男</option>
										<option value="女">女</option>
										<option value="ウホッ">ウホッ</option>
										<option value="ノンケ">ノンケ</option>
										<option value="その他">その他</option>
										<%
											} else if (("女").equals(re.getGender())) {
										%>
										<option value="男">男</option>
										<option value="女" selected>女</option>
										<option value="ウホッ">ウホッ</option>
										<option value="ノンケ">ノンケ</option>
										<option value="その他">その他</option>
										<%
											} else if (("ウホッ").equals(re.getGender())) {
										%>
										<option value="男">男</option>
										<option value="女">女</option>
										<option value="ウホッ" selected>ウホッ</option>
										<option value="ノンケ">ノンケ</option>
										<option value="その他">その他</option>
										<%
											} else if (("ノンケ").equals(re.getGender())) {
										%>
										<option value="男">男</option>
										<option value="女">女</option>
										<option value="ウホッ">ウホッ</option>
										<option value="ノンケ" selected>ノンケ</option>
										<option value="その他">その他</option>
										<%
											} else {
										%>
										<option value="男">男</option>
										<option value="女">女</option>
										<option value="ウホッ">ウホッ</option>
										<option value="ノンケ">ノンケ</option>
										<option value="その他" selected>その他</option>
										<%
											}
										%>
								</select></td>
							</tr>
							<tr>
								<th><label for="email">メールアドレス:</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><input type="email" name="email" required
									value="<%=re.getEmail()%>"><span class="supplement">（半角英数字）</span><br>
									<span class="supplement">ご入力お間違えの無いように</span></td>
							</tr>
							<tr>
								<th><label for="department"> 学科：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><select name="department" required>
										<%
											switch (re.getDepartment()) {
												case "情報システム科" :
										%>
										<option value="情報システム科" class="s1" selected>情報システム科</option>
										<option value="総合システム工学科" class="s2">総合システム工学科</option>
										<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
										<option value="高度情報工学科" class="s4">高度情報工学科</option>
										<option value="情報ビジネス科" class="b1">情報ビジネス科</option>
										<option value="会計ビジネス科" class="b2">会計ビジネス科</option>
										<option value="デザイン科" class="d1">デザイン科</option>
										<option value="総合デザイン科" class="d2">総合デザイン科</option>
										<%
											break;
												case "総合システム工学科" :
										%>
										<option value="情報システム科" class="s1">情報システム科</option>
										<option value="総合システム工学科" class="s2" selected>総合システム工学科</option>
										<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
										<option value="高度情報工学科" class="s4">高度情報工学科</option>
										<option value="情報ビジネス科" class="b1">情報ビジネス科</option>
										<option value="会計ビジネス科" class="b2">会計ビジネス科</option>
										<option value="デザイン科" class="d1">デザイン科</option>
										<option value="総合デザイン科" class="d2">総合デザイン科</option>
										<%
											break;
												case "ネットワーク・セキュリティ科" :
										%>
										<option value="情報システム科" class="s1">情報システム科</option>
										<option value="総合システム工学科" class="s2">総合システム工学科</option>
										<option value="ネットワーク・セキュリティ科" class="s3" selected>ネットワーク・セキュリティ科</option>
										<option value="高度情報工学科" class="s4">高度情報工学科</option>
										<option value="情報ビジネス科" class="b1">情報ビジネス科</option>
										<option value="会計ビジネス科" class="b2">会計ビジネス科</option>
										<option value="デザイン科" class="d1">デザイン科</option>
										<option value="総合デザイン科" class="d2">総合デザイン科</option>
										<%
											break;
												case "高度情報工学科" :
										%>
										<option value="情報システム科" class="s1">情報システム科</option>
										<option value="総合システム工学科" class="s2">総合システム工学科</option>
										<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
										<option value="高度情報工学科" class="s4" selected>高度情報工学科</option>
										<option value="情報ビジネス科" class="b1">情報ビジネス科</option>
										<option value="会計ビジネス科" class="b2">会計ビジネス科</option>
										<option value="デザイン科" class="d1">デザイン科</option>
										<option value="総合デザイン科" class="d2">総合デザイン科</option>
										<%
											break;
												case "情報ビジネス科" :
										%>
										<option value="情報システム科" class="s1">情報システム科</option>
										<option value="総合システム工学科" class="s2">総合システム工学科</option>
										<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
										<option value="高度情報工学科" class="s4">高度情報工学科</option>
										<option value="情報ビジネス科" class="b1" selected>情報ビジネス科</option>
										<option value="会計ビジネス科" class="b2">会計ビジネス科</option>
										<option value="デザイン科" class="d1">デザイン科</option>
										<option value="総合デザイン科" class="d2">総合デザイン科</option>
										<%
											break;
												case "会計ビジネス科" :
										%>
										<option value="情報システム科" class="s1">情報システム科</option>
										<option value="総合システム工学科" class="s2">総合システム工学科</option>
										<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
										<option value="高度情報工学科" class="s4">高度情報工学科</option>
										<option value="情報ビジネス科" class="b1">情報ビジネス科</option>
										<option value="会計ビジネス科" class="b2" selected>会計ビジネス科</option>
										<option value="デザイン科" class="d1">デザイン科</option>
										<option value="総合デザイン科" class="d2">総合デザイン科</option>
										<%
											break;
												case "デザイン科" :
										%>
										<option value="情報システム科" class="s1">情報システム科</option>
										<option value="総合システム工学科" class="s2">総合システム工学科</option>
										<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
										<option value="高度情報工学科" class="s4">高度情報工学科</option>
										<option value="情報ビジネス科" class="b1">情報ビジネス科</option>
										<option value="会計ビジネス科" class="b2">会計ビジネス科</option>
										<option value="デザイン科" class="d1" selected>デザイン科</option>
										<option value="総合デザイン科" class="d2">総合デザイン科</option>
										<%
											break;
												case "総合デザイン科" :
										%>
										<option value="情報システム科" class="s1">情報システム科</option>
										<option value="総合システム工学科" class="s2">総合システム工学科</option>
										<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
										<option value="高度情報工学科" class="s4">高度情報工学科</option>
										<option value="情報ビジネス科" class="b1">情報ビジネス科</option>
										<option value="会計ビジネス科" class="b2">会計ビジネス科</option>
										<option value="デザイン科" class="d1">デザイン科</option>
										<option value="総合デザイン科" class="d2" selected>総合デザイン科</option>
										<%
											break;
										default :%>
										<option value="情報システム科" class="s1">情報システム科</option>
										<option value="総合システム工学科" class="s2">総合システム工学科</option>
										<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
										<option value="高度情報工学科" class="s4">高度情報工学科</option>
										<option value="情報ビジネス科" class="b1">情報ビジネス科</option>
										<option value="会計ビジネス科" class="b2">会計ビジネス科</option>
										<option value="デザイン科" class="d1">デザイン科</option>
										<option value="総合デザイン科" class="d2">総合デザイン科</option>
										<%
											}
										%>
								</select></td>
							</tr>
							<tr>
								<th><label for="course"> コース：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><select name="course" required>
										<%
											switch (re.getCourse()) {
												case "システムエンジニアコース" :
										%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース" selected>システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "スマートフォンアプリ開発コース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース" selected>スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "WEBプログラマコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース" selected>WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "組込みシステムコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース" selected>組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "ネットワークエンジニアコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース" selected>ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "情報セキュリティコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース" selected>情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "高度情報工学科" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科" selected>高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "情報ビジネスコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース" selected>情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "公共ビジネスコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース" selected>公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "会計ビジネスコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース" selected>会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "会計エキスパートコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース" selected>会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "グラフィックデザインコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース" selected>グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "アニメ・マンガコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース" selected>アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "CGクリエイトコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース" selected>CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "建築インテリアコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース" selected>建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
												case "総合デザインコース" :
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース" selected>総合デザインコース</option>
										</optgroup>
										<%break;
												default:
													%>
										<option value="s1" class="msg">コースを選択してください</option>
										<optgroup label="情報システム科">
											<option class="s1" value="システムエンジニアコース">システムエンジニアコース</option>
											<option class="s1" value="スマートフォンアプリ開発コース">スマートフォンアプリ開発コース</option>
										</optgroup>
										<optgroup label="総合システム工学科">
											<option class="s2" value="WEBプログラマコース">WEBプログラマコース</option>
											<option class="s2" value="組込みシステムコース">組込みシステムコース</option>
										</optgroup>
										<optgroup label="ネットワーク・セキュリティ科">
											<option class="s3" value="ネットワークエンジニアコース">ネットワークエンジニアコース</option>
											<option class="s3" value="情報セキュリティコース">情報セキュリティコース</option>
										</optgroup>
										<optgroup label="高度情報工学科">
											<option class="s4" value="高度情報工学科">高度情報工学科</option>
										</optgroup>
										<optgroup label="情報ビジネス科">
											<option class="b1" value="情報ビジネスコース">情報ビジネスコース</option>
											<option class="b1" value="公共ビジネスコース">公共ビジネスコース</option>
										</optgroup>
										<optgroup label="会計ビジネス科">
											<option class="b2" value="会計ビジネスコース">会計ビジネスコース</option>
											<option class="b2" value="会計エキスパートコース">会計エキスパートコース</option>
										</optgroup>
										<optgroup label="デザイン科">
											<option class="d1" value="グラフィックデザインコース">グラフィックデザインコース</option>
											<option class="d1" value="アニメ・マンガコース">アニメ・マンガコース</option>
											<option class="d1" value="CGクリエイトコース">CGクリエイトコース</option>
											<option class="d1" value="建築インテリアコース">建築インテリアコース</option>
										</optgroup>
										<optgroup label="総合デザイン科">
											<option class="d2" value="総合デザインコース">総合デザインコース</option>
										</optgroup>
										<%break;
											}
										%>
								</select></td>
							</tr>
							<tr>
								<th><label for="gaku">学年：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><select name="school_year" required>
										<%
											switch (Integer.parseInt(re.getSchool_year())) {
												case 1 :
										%>
										<option value="1" selected>1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%break;
												case 2 :
													%>
										<option value="1">1</option>
										<option value="2" selected>2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%break;
												case 3 :
													%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3" selected>3</option>
										<option value="4">4</option>
										<%break;
												case 4 :
													%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4" selected>4</option>
										<%break;
													default :%>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<%
										}%>
								</select></td>
							</tr>
							<tr>
								<th><label for="set_in">組：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><select name="set_in" required>
										<%
										switch (Integer.parseInt(re.getSet_in())) {
												case 1 :
										%>
										<option value="1" selected>1</option>
										<option value="2">2</option>
										<%break;
												case 2 :
													%>
										<option value="1">1</option>
										<option value="2" selected>2</option>
										<%break;
													default :%>
										<option value="1">1</option>
										<option value="2">2</option>
										<%} %>
								</select></td>
							</tr>
							<tr>
								<th><label for="pass"> パスワード：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><input type="password" name="pass1" ><br>
									<span class="supplement">使用中のパスワード</span></td>
							</tr>
							<tr>
								<th><label for="pass"> パスワード：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><input type="password" name="pass2" ><br>
									<span class="supplement">新しいパスワード</span></td>
							</tr>
							<tr>
								<th><label for="pass"> パスワード：</label></th>
								<td class="arbitrary"><img
									src="/Qualification/image/required1.gif" alt="必須" width="26"
									height="15"></td>
								<td><input type="password" name="pass3" ><br>
									<span class="supplement">新しいパスワード（確認用）</span></td>
							</tr>
						</tbody>
					</table>
					<p class="button">
						<input type="submit" value="入力内容の確認画面へ">
					</p>
					<br>
				</form>
			</section>
			<div id="bar"></div>
		</div>
		<!--main-->
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
