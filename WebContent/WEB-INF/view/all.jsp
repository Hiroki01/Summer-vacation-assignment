<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.QualificationDTO" %>
<!DOCTYPE html>
<html>

<head>
<meta charset=UTF-8>
<link rel="stylesheet" href="/Qualification/css/table.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css"
	type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<title>新規登録用画面（生徒用）</title>
</head>

<body>
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
			<table class="example">

				<caption>あなたの所持資格一覧</caption>

				<thead>
					<tr>
						<th>資格名</th>
						<th>受験日</th>
						<th>結果</th>
					</tr>
				</thead>

				<tbody>
				<%ArrayList<QualificationDTO> re = (ArrayList<QualificationDTO>)request.getAttribute("result");
				for(QualificationDTO anko : re){
				%>
					<tr>
						<td><%=anko.getName() %></td>
						<td><%=anko.getDate() %></td>
						<td><%=anko.getResult() %></td>
					</tr>
					<%} %>
				</tbody>

			</table>
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
