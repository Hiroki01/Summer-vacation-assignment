<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script>
$(function() {
	$('select[name="department"]').change(function() {
		var gakka = $('select[name="department"] option:selected').attr("class");
		console.log(gakka);
		var count = $('select[name="course"]').children().length;
		for (var i=0; i<count; i++) {
			var ko-su = $('select[name="course"] option:eq(' + i + ')');
			if(ko-su.attr("class") === gakka) {
				ko-su.show();
			}else {
				if(ko-su.attr("class") === "msg") {
						ko-su.show();
						ko-su.prop('selected',true);
				} else {
					ko-su.hide();
				}
			}
		}
	})
})
</script>
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
		<option value="s1" selected class="msg">学科を選択してください</option>
			<option value="情報システム科" class="s1">情報システム科</option>
			<option value="総合システム工学科"class="s2">総合システム工学科</option>
			<option value="ネットワーク・セキュリティ科" class="s3">ネットワーク・セキュリティ科</option>
			<option value="高度情報工学科"class="s4">高度情報工学科</option>
			<option value="情報ビジネス科"class="b1">情報ビジネス科</option>
			<option value="会計ビジネス科"class="b2">会計ビジネス科</option>
			<option value="デザイン科"class="d1">デザイン科</option>
			<option value="総合デザイン科"class="d2">総合デザイン科</option>
		</select><br>
		 コース<select onFocus="sel_ch()" name="course" required>
		 	<option value="s1" selected="selected" class="msg">コースを選択してください</option>
			<option class="s1" value="システムエンジニアコース"></option>
			<option class="s1" value="スマートフォンアプリ開発コース"></option>
			<option class="s2" value="WEBプログラマコース"></option>
			<option class="s2" value="組込みシステムコース"></option>
			<option class="s3" value="ネットワークエンジニアコース"></option>
			<option class="s3" value="情報セキュリティコース"></option>
			<option class="s4" value="高度情報工学科"></option>
			<option class="b1" value="情報ビジネスコース"></option>
			<option class="b1" value="公共ビジネスコース"></option>
			<option class="b2" value="会計ビジネスコース"></option>
			<option class="b2" value="会計エキスパートコース"></option>
			<option class="d1" value="グラフィックデザインコース"></option>
			<option class="d1" value="アニメ・マンガコース"></option>
			<option class="d1" value="CGクリエイトコース"></option>
			<option class="d1" value="建築インテリアコース"></option>
			<option class="d2" value="総合デザインコース"></option>
		</select> <br>取得済み資格ID<input type="text" name="qu" required> <br>
		パスワード<input type="password" name="pass" required> <br>
		<input type="submit" value="登録"><br>
	</form>
</body>
</html>