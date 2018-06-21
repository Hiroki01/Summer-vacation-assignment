<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<SCRIPT>
function sel_ch(){
	var j = document.f.department.selectedIndex;
	var sel = document.f.department.options[j].text;
		if(sel == "情報システム科"){
			document.f.course.options[0].text = "システムエンジニアコース"
			document.f.course.options[1].text = "スマートフォンアプリ開発コース"
		}else if(sel == "総合システム工学科"){
			document.f.course.options[0].text = "WEBプログラマコース"
			document.f.course.options[1].text = "組込みシステムコース"
		}else if(sel == "ネットワーク・セキュリティ科"){
			document.f.course.options[0].text = "ネットワークエンジニアコース";
			document.f.course.options[1].text = "情報セキュリティコース";
		}else if(sel == "高度情報工学科"){
			document.f.course.options[0].text = "高度情報工学科";
		}else if(sel == "情報ビジネス科"){
			document.f.course.options[0].text = "情報ビジネスコース";
			document.f.course.options[1].text = "公共ビジネスコース";
		}else if(sel == "会計ビジネス科"){
			document.f.course.options[0].text = "会計ビジネスコース";
			document.f.course.options[1].text = "会計エキスパートコース";
		}else if(sel == "デザイン科"){
			document.f.course.options[0].text = "グラフィックデザインコース";
			document.f.course.options[1].text = "アニメ・マンガコース";
			document.f.course.options[2].text = "CGクリエイトコース";
			document.f.course.options[3].text = "建築インテリアコース";
		}else if(sel == "総合デザイン科"){
			document.f.course.options[0].text = "総合デザインコース";
		}
}
</SCRIPT>
<title>新規登録用画面（生徒用）</title>
</head>
<body>
	<form action="/Qualification/AddResult" name="f" method="post">
		学籍番号：<input type="text" name="id" required><br> 氏名<input
			type="text" name="name" required><br> 性別<select
			name="gender" required>
			<option value="男">男</option>
			<option value="女">女</option>
			<option value="ウホッ">ウホッ</option>
		</select><br> メールアドレス<input type="email" name="email" required> <br>
		学科<select name="department" required>
			<option value="情報システム科" selected>情報システム科</option>
			<option value="総合システム工学科">総合システム工学科</option>
			<option value="ネットワーク・セキュリティ科">ネットワーク・セキュリティ科</option>
			<option value="高度情報工学科">高度情報工学科</option>
			<option value="情報ビジネス科">情報ビジネス科</option>
			<option value="会計ビジネス科">会計ビジネス科</option>
			<option value="デザイン科">デザイン科</option>
			<option value="総合デザイン科">総合デザイン科</option>
		</select><br> コース<select onFocus="sel_ch()" name="course" required>
			<option></option>
			<option></option>
			<option></option>
			<option></option>
		</select> <br>取得済み資格ID<input type="text" name="qu" required> <br>
		パスワード<input type="password" name="pass" required> <br>
		<input type="submit" value="登録"><br>
	</form>
</body>
</html>