<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset=UTF-8>
<link rel="stylesheet" href="/Qualification/css/form.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css"
	type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<title>新規登録用画面（生徒用）</title>
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
		session.setAttribute("status", null);
			} else if (status.equals("Null")) {
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
			<br>
			<form action="/Qualification/AddResult" name="f" class="contact"
				method="post">
				<p>以下のフォームにご入力の上、「入力内容の確認画面へ」ボタンをクリックしてください。</p>

				<p class="attention">
					<img src="/Qualification/image/required1.gif" alt="必須" width="26"
						height="15"> マークの項目は入力必須となります。
				</p>
				<table>
					<tbody>
						<tr>
							<th><label for="id">学籍番号：</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><input type="text" name="id" required> <br>
								<span class="supplement">注意） 1000001以下は入力できません</span></td>
						</tr>
						<tr>
							<th><label for="name">氏名：</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><input type="text" name="name" required><br>
								<span class="supplement">例） 田中 太郎</span></td>
						</tr>
						<tr>
							<th><label for="name">氏名（カタカナ）：</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><input type="text" name="namek" required><br>
								<span class="supplement">例） タナカ タロウ</span></td>
						</tr>
						<tr>
							<th><label for="gender">性別：</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><select name="gender" required>
									<option value="男">男</option>
									<option value="女">女</option>
									<option value="ウホッ">ウホッ</option>
									<option value="ノンケ">ノンケ</option>
									<option value="その他">その他</option>
							</select></td>
						</tr>
						<tr>
							<th><label for="email">メールアドレス:</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><input type="email" name="email" required><span>
								class="supplement">（半角英数字）</span><br> <span
								class="supplement">ご入力お間違えの無いように</span></td>
						</tr>
						<tr>
							<th><label for="department"> 学科：</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><select name="department" required>
									<option value="s1" selected class="msg">学科を選択してください</option>
									<option value="情報システム科" class="s1">情報システム科</option>
									<option value="総合システム工学科" class="s2">総合システム工学科</option>
									<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
									<option value="高度情報工学科" class="s4">高度情報工学科</option>
									<option value="情報ビジネス科" class="b1">情報ビジネス科</option>
									<option value="会計ビジネス科" class="b2">会計ビジネス科</option>
									<option value="デザイン科" class="d1">デザイン科</option>
									<option value="総合デザイン科" class="d2">総合デザイン科</option>
							</select></td>
						</tr>
						<tr>
							<th><label for="course"> コース：</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><select name="course" required>
									<option value="s1" selected="selected" class="msg">コースを選択してください</option>
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
							</select></td>
						</tr>
						<tr>
							<th><label for="gaku">学年：</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><select name="school_year" required>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
							</select></td>
						</tr>
						<tr>
							<th><label for="set_in">組：</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><select name="set_in" required>
									<option value="1">1</option>
									<option value="2">2</option>
							</select></td>
						</tr>
						<tr>
							<th><label for="pass"> パスワード：</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><input type="password" name="pass" required><br> <span
								class="supplement">ご入力お間違えの無いように</span></td>
						</tr>
					</tbody>
				</table>
				<p class="button">
					<input type="submit" value="入力内容の確認画面へ">
				</p>
				<br>
			</form>
			<br>
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
