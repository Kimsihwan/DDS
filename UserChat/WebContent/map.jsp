<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<title>캠퍼스맵</title>
<style>
.logo_tiger {
	width: 50px;
	margin-left: 280px;
	margin-top: 20px;
}

.logo_DDS {
	width: 300px;
	margin-top: 20px;
}

.login li:first-child {
	border-left: none;
	margin-left: 500px;
}

.login li {
	display: inline;
	list-style: none;
	border-left: 1px solid gray;
	margin-left: 8px;
	color: gray;
}

.logo_tiger, .logo_DDS, .login {
	display: inline;
}
.h1{
margin-left:300px;
}
.campusmap{
list-style:none;
}
.img1{
margin-left:400px;
border:1px solid black;
border-radius:10px;
}
.img2{
margin-left:400px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="theme12.css">
<link rel="stylesheet" href="custom.css">
<link rel="stylesheet" href="font.css">
<link rel="shortcut icon" href="images/logo1.png" />
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>JSP Ajax 실시간 회원제 채팅 서비스</title>
<script src="js/bootstrap.js"></script>
</head>
<body>

	<a href="design.jsp">
	<img class="logo_tiger" src="images/logo1.png" >
	<img class="logo_DDS" src="images/logo_DDS.png"></a>
	<ul class="login">
		<li>로그인</li>
		<li>&nbsp;&nbsp;&nbsp;회원가입</li>
		<li>&nbsp;&nbsp;&nbsp;Id, Pwd찾기</li>
	</ul>
	<nav class="navbar navbar-default" style="margin-top: 10px;">
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav"
				style="margin-left: 240px; margin-top: 10px;">

				<li class="dropdown" style="margin-left: 25px;"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" role="buton"
					aria-haspopup="true" aria-expanded="false">동아리 홍보<span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="art.jsp">예술 동아리</a></li>
						<li><a href="exercise.jsp">운동 동아리</a></li>
						<li><a href="cm.jsp">친목 동아리</a></li>
						<li><a href="bs.jsp">봉사 동아리</a></li>
						<li><a href="jg.jsp">종교 동아리</a></li>
					</ul></li>

				<li class="dropdown" style="margin-left: 25px;"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" role="buton"
					aria-haspopup="true" aria-expanded="false">동아리 가입<span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="request.jsp">가입 신청 방법</a></li>
						<li><a href="requestfile.jsp">가입 신청</a></li>
					</ul></li>

				<li><a href="boardView.jsp">&nbsp&nbsp&nbsp자유게시판</a></li>
				<li><a href="box.jsp">&nbsp&nbsp&nbsp&nbsp갤러리</a></li>
				<li class="dropdown" style="margin-left: 25px;"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown" role="buton"
					aria-haspopup="true" aria-expanded="false">실시간 채팅<span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="find.jsp">친구찾기</a></li>
						<li><a href="box.jsp">채팅하기</a></li>
					</ul></li>
				<li><a href="map.jsp">&nbsp&nbsp&nbsp&nbsp캠퍼스맵</a></li>
				<li><a href="boardView.jsp">&nbsp&nbsp&nbsp&nbspQ&A</a></li>

			</ul>
		</div>
	</nav>
	<div>
	<h1 class="h1">캠퍼스맵</h1>
	<ul class="campusmap">
	<li><img class="img1"src="images/campusmap.png"></li>
	<li><img class="img2" src="images/창조관.png"></li>
	</ul>
	</div>
</body>
</html>