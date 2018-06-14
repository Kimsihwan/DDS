<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">

<title>DDS</title>
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

.box {
	margin-top: 90px;
	margin-left: 190px;
	width: 80%;
}

.box li {
	display: inline;
	margin-left: 40px;
}

.box1 {
	width: 20%;
}

.under li {
	display: inline;
	list-style: none;
	border-left: 1px solid gray;
	margin-left: 8px;
	color: gray;
}

.under li:first-child {
	border-left: none;
}

.under_menu img, .under {
	display: inline;
}

#image {
	width: 850px;
	height: 400px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="theme12.css">
<link rel="stylesheet" href="custom.css">
<link rel="stylesheet" href="font.css">
<link rel="shortcut icon" href="images/logo1.png" />
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<title>메인화면</title>
<script src="js/bootstrap.js"></script>
</head>
<body>

	<a href="design.jsp"> <img class="logo_tiger"
		src="images/logo1.png"> <img class="logo_DDS"
		src="images/logo_DDS.png"></a>
	<ul class="login">
		<li>로그인</li>
		<li>&nbsp;&nbsp;&nbsp;회원가입</li>
		<li>&nbsp;&nbsp;&nbsp;Id, Pwd찾기</li>
	</ul>
	<nav class="navbar navbar-default" style="margin-top: 10px;">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
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
			</ul>
		</div>
	</nav>
	<div class="s" style="display: inline;">

		<div class="container"
			style="width: 800px; height: 330px; margin-left: 270px; margin-top: 20px;">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img id="image" src="images/slide.jpg" alt="1">
					</div>
					<div class="item">
						<img id="image" src="images/main.jpg" alt="2">
					</div>

				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>

			</div>

		</div>

	</div>

	<div class="box">
		<ul>
			<li><a href="request.jsp"><img class="box1" src="images/box1.png"></a></li>
			<li><img class="box1" src="images/box2.png"></li>
			<li><img class="box1" src="images/box3.png"></li>
			<li><img class="box1" src="images/box4.png"></li>
		</ul>
	</div>
	<div class="panel-group"
		style="display: flex; justify-content: flex-start; align-items: stretch; height: 200px;">


		<div class="panel panel-primary"
			style="margin-top: 5px; margin-left: 270px; flex-basis: 400px;">
			<div class="panel-heading" style="text-align: center;">Best 게시물</div>
			<div class="panel-body">
				<ul style="padding-left: 10px;">
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
				</ul>
			</div>
		</div>
		<div class="panel panel-primary"
			style="flex-basis: 400px; margin-left: 50px;">
			<div class="panel-heading" style="text-align: center;">자유 게시판</div>
			<div class="panel-body">Panel Content</div>
		</div>
		<div class="panel panel-primary"
			style="flex-basis: 300px; height: 415px; margin-left: 50px;">
			<div class="panel-heading" style="text-align: center;">Best 동아리</div>
			<div class="panel-body">Panel Content</div>
		</div>
	</div>


	<div class="panel-group"
		style="display: flex; justify-content: flex-start; align-items: stretch; height: 200px;">


		<div class="panel panel-primary"
			style="margin-top: 5px; margin-left: 270px; flex-basis: 400px;">
			<div class="panel-heading" style="text-align: center;">갤러리</div>
			<div class="panel-body">
				<ul style="padding-left: 10px;">
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
				</ul>
			</div>
		</div>
		<div class="panel panel-primary"
			style="flex-basis: 400px; margin-left: 50px;">
			<div class="panel-heading" style="text-align: center;">공지사항</div>
			<div class="panel-body">Panel Content</div>
		</div>
	</div>
	<hr>
	<div class="under_menu">
		<img src="images/logo_under.png"
			style="width: 250px; margin-left: 350px;">
		<ul class="under">
			<li>DDS소개</li>
			<li>&nbsp;&nbsp;&nbsp;운영진 소개</li>
			<li>&nbsp;&nbsp;&nbsp;광고 문의</li>
			<li>&nbsp;&nbsp;&nbsp;FAQ</li>
			<li>&nbsp;&nbsp;&nbsp;게시판 이용규칙</li>
			<li>&nbsp;&nbsp;&nbsp;개인정보 보호정책</li>
			<li>&nbsp;&nbsp;&nbsp;공지사항</li>
			<li>&nbsp;&nbsp;&nbsp;English</li>
		</ul>
	</div>

</body>
</html>
</body>
</html>