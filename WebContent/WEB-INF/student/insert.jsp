<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.QuaDTO"%>
<!DOCTYPE html>
<html>
<head>
<title>受験予定登録画面</title>
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
			<section id="new" class="box">
			<%
				ArrayList<QuaDTO> re = (ArrayList<QuaDTO>) request.getAttribute("sikakudao");
			%>
			<br>
			<form action="/Qualification/InsertResult" name="f" class="contact"
				method="post">
				<p>以下のフォームにご入力の上、「登録」ボタンをクリックしてください。</p>

				<p class="attention">
					<img src="/Qualification/image/required1.gif" alt="必須" width="26"
						height="15"> マークの項目は入力必須となります。
				</p>
				<table class="example"style="color:black;">
					<tbody>
						<tr>
							<th><label for="name">受験資格名</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><select name="juken" required>
									<%
										for (QuaDTO sikaku : re) {
									%>
									<option value=<%=sikaku.getName()%>><%=sikaku.getName()%></option>
									<%
										}
									%>
							</select></td>
						</tr>
						<tr>
							<th><label for="name">年</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><select name="year" required>
									<option value="">-</option>
									<option value="2011">2011</option>
									<option value="2012">2012</option>
									<option value="2013">2013</option>
									<option value="2014">2014</option>
									<option value="2015">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018">2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
									<option value="2021">2021</option>
									<option value="2022">2022</option>
									<option value="2023">2023</option>
									<option value="2024">2024</option>
									<option value="2025">2025</option>
									<option value="2026">2026</option>
									<option value="2027">2027</option>
									<option value="2028">2028</option>
									<option value="2029">2029</option>
									<option value="2030">2030</option>
							</select></td>
						</tr>
						<tr>
							<th><label for="name">月</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><select name="month" required>
									<option value="">-</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select></td>
						</tr>
						<tr>
							<th><label for="name">日</label></th>
							<td class="arbitrary"><img
								src="/Qualification/image/required1.gif" alt="必須" width="26"
								height="15"></td>
							<td><select name="day">
									<option value="">-</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
							</select></td>
						</tr>
					</tbody>
				</table>
				<p class="button">
					<input type="submit" value="登録">
				</p>
				<br>
			</form>
			<br>
			<div id="bar"></div>
			</section>
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