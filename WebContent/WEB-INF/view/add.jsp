<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>新規登録用画面（生徒用）</title>
</head>
<body>
	<form action="/Qualification/AddResult" name="f" method="post">
		学籍番号：<input type="text" name="id" required><br>
		氏名：<input type="text" name="name" required><br>
			性別：<select name="gender" required>
			<option value="男">男</option>
			<option value="女">女</option>
			<option value="ウホッ">ウホッ</option>
			<option value="ノンケ">ノンケ</option>
		</select><br>
		 メールアドレス：<input type="email" name="email" required> <br>
		学科：<select name="department" required>
		<option value="s1" selected class="msg">学科を選択してください</option>
			<option value="情報システム科" class="s1">情報システム科</option>
			<option value="総合システム工学科"class="s2">総合システム工学科</option>
			<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
			<option value="高度情報工学科"class="s4">高度情報工学科</option>
			<option value="情報ビジネス科"class="b1">情報ビジネス科</option>
			<option value="会計ビジネス科"class="b2">会計ビジネス科</option>
			<option value="デザイン科"class="d1">デザイン科</option>
			<option value="総合デザイン科"class="d2">総合デザイン科</option>
		</select><br> コース：<select name="course" required>
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
		</select> <br>
		取得済み資格ID：<input type="text" name="qu"> <br>
		パスワード：<input type="password" name="pass" required> <br>
		<input type="submit" value="登録"><br>
	</form>
</body>
</html>