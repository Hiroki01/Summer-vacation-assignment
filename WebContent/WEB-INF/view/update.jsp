<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.QualificationDTO"%>
<!DOCTYPE html>
<html>

<head>
<meta charset=UTF-8>
<link rel="stylesheet" href="/Qualification/css/table.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/menu.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css"
	type="text/css" />
<script type="text/javascript" src="/Qualification/js/menu.js" /></script>
<script>
        function getCELL() {
            var myTbl = document.getElementById('TBL');
            // trをループ。rowsコレクションで,行位置取得。

            for (var i = 0; i < myTbl.rows.length; i++) {
                // tr内のtdをループ。cellsコレクションで行内セル位置取得。
                for (var j = 0; j < myTbl.rows[i].cells.length; j++) {
                    var Cells = myTbl.rows[i].cells[j];
                    //i番行のj番列のセル "td"
                   // onclickで 'Mclk'を実行。thisはクリックしたセル"td"のオブジェクトを返す。

                    Cells.onclick = function() {
                        Mclk(this);
                    }
                }
            }
        }

        function Mclk(Cell) {
            var rowINX = '行位置：' + Cell.parentNode.rowIndex; //Cellの親ノード'tr'の行位置
            var cellINX = 'セル位置：' + Cell.cellIndex;
            var cellVal = 'セルの内容：' + Cell.innerHTML;//取得した値の書き出し
            res = rowINX + '<br/> ' + cellINX + '<br/>' + cellVal;
            document.getElementById('Mbox0').innerHTML = res;
        }
        // try ～ catch 例外処理、エラー処理
        // イベントリスナーaddEventListener,attachEventメソッド
        try {
            window.addEventListener("load", getCELL, false);
        } catch (e) {
            window.attachEvent("onload", getCELL);
        }

    </script>
<title>受験結果更新</title>
</head>

<body>
	<div class="content">
		<div id="top">
			<div class="header">
				<h1>
					<a href="/Qualification/TopShow">資格取得状況一見</a>
				</h1>
				<nav id="menubar">
					<ul>
						<li class="current"><a
							href="/Qualification/All_qualifications">受験資格一覧</a></li>
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
			<p>
				<input id="input1" type="text" value="" size="10">
			</p>
			<table class="example" id="TBL">

				<caption>あなたの受験結果未更新</caption>

				<thead>
					<tr>
						<th>資格名</th>
						<th>受験日</th>
						<th>結果</th>
					</tr>
				</thead>

				<tbody>
					<%
						ArrayList<QualificationDTO> re = (ArrayList<QualificationDTO>) request.getAttribute("mijuken");
						for (QualificationDTO anko : re) {
					%>
					<tr>
						<td><%=anko.getName()%></td>
						<td><%=anko.getDate()%></td>
						<td><%=anko.getResult()%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<br>
			<div id="Div">
			<form action="/Qualification/InsertResult" method="post">
				<p id="Mbox0">セルをクリックしたらここに書き出します。</p>
				<input type="submit" value="更新">
				</form>
			</div>


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
