<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<script type="text/javascript">
	function functionName() {
		var department = document.forms.formName.selectName1; //変数select1を宣言
		var course = document.forms.formName.selectName2; //変数select2を宣言

		course.options.length = 0;

		if (department.options[department.selectedIndex].value == "情報システム科") {
			select2.options[0] = new Option("システムエンジニアコース");
			select2.options[1] = new Option("スマートフォンアプリ開発コース");
		} else if (department.options[department.selectedIndex].value == "ネットワークセキュリティ科") {
			course.options[0] = new Option("ネットワークエンジニアコース");
			course.options[1] = new Option("情報セキュリティコース");
		} else if (department.options[department.selectedIndex].value == "総合システム工学科") {
			course.options[0] = new Option("WEBプログラマコース");
			course.options[1] = new Option("組込みシステムコース");
		} else if (department.options[department.selectedIndex].value == "高度情報工学科") {
			course.options[0] = new Option("高度情報工学科");
		} else if (department.options[department.selectedIndex].value == "情報ビジネス科") {
			course.options[0] = new Option("情報ビジネスコース");
			course.options[1] = new Option("公共ビジネスコース");
		} else if (department.options[department.selectedIndex].value == "会計ビジネス科") {
			course.options[0] = new Option("会計ビジネスコース");
			course.options[1] = new Option("会計エキスパートコース");
		} else if (department.options[department.selectedIndex].value == "デザイン科") {
			course.options[0] = new Option("グラフィックデザインコース");
			course.options[1] = new Option("アニメ・マンガコース");
			course.options[2] = new Option("CGクリエイトコース");
			course.options[3] = new Option("建築インテリアコース");
		} else if (department.options[department.selectedIndex].value == "総合デザイン科") {
			course.options[0] = new Option("総合デザインコース");
		}
	}
</script>
<title>新規登録用画面（生徒用）</title>
</head>
<body>
	<form action="/Qualification/AddResult" method="post">
		学籍番号：<input type="text" name="id" required><br>
		氏名<input type="text" name="name" required><br>
			性別<select name="gender" required>
			<option value="男">男</option>
			<option value="女">女</option>
			<option value="ウホッ">ウホッ</option>
			</select><br>
			メールアドレス<input type="email" name="email" required>
			<br> 学科<select name="department" onChange="functionName()" required>
				<option value="情報システム科" selected>情報システム科</option>
				<option value="総合システム工学科">総合システム工学科</option>
				<option value="ネットワーク・セキュリティ科">ネットワーク・セキュリティ科option>
				<option value="高度情報工学科">高度情報工学科</option>
				<option value="情報ビジネス科">情報ビジネス科</option>
				<option value="会計ビジネス科">会計ビジネス科</option>
				<option value="デザイン科">デザイン科</option>
				<option value="総合デザイン科">総合デザイン科</option>
		</select><br> コース<select name="course" required>
		</select> <br>取得済み資格ID<input type="text" name="qu" required>
		<br> パスワード<input type="password" name="pass" required>
		<br>
	</form>
</body>
</html>