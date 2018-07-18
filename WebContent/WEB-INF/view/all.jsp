<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.QualificationDTO" %>
<!DOCTYPE html>
<html>

<head>
<title>受験済み資格全表示</title>
<meta content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/Qualification/css/table.css"
	type="text/css" />
<link rel="stylesheet" href="/Qualification/css/style.css">
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
			</ul>
		</nav>
	</header>
	<main role="main"> <!-- Page content --> </main>

	<script>
        $(document).ready(function() {
            $('.drawer').drawer();
        });

    </script>
	<div id="container">

		<div id="main">

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
