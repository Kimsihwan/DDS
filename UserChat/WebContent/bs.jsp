<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<title>Insert title here</title>
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
.dongari li {
	display: inline;
	margin-left: 8px;
	border-left: 1px solid gray;
}
.dongari li:first-child {
	margin-left: 260px;
	border-left: none;
}
.art{
	width:700px;
	height:300px;
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="theme12.css">
<link rel="stylesheet" href="custom.css">
<link rel="stylesheet" href="font.css">
<link rel="shortcut icon" href="images/logo1.png" />
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>봉사동아리</title>
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
			<ul class="dongari">
				<li><a href="art.jsp">예술동아리</a></li>
				<li>&nbsp;&nbsp;&nbsp;<a href="exercise.jsp">운동동아리</a></li>
				<li>&nbsp;&nbsp;&nbsp;<a href="cm.jsp">친목동아리</a></li>
				<li>&nbsp;&nbsp;&nbsp;<a href="#"><span style="background-color:#FFE08C">봉사동아리</span></a></li>
				<li>&nbsp;&nbsp;&nbsp;<a href="jg.jsp">종교동아리</a></li>
			
			</ul>
			
			
			      <!-- Project One -->
      <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="art" src="images/DND.jpg" alt=""style="margin-left:300px;">
          </a>
        </div>
        <div class="col-md-5">
          <h3>로타렉트</h3>
          <p>안녕하세요 저희는 동의과학대학교 봉사동아리 로타렉트입니다.<br>
			새로운 회원을 모집합니다.<br>
			-다양한 봉사활동으로 봉사시간과 장학금 받기<br>
			-동아리 회원들과 재밌는 학교생활 즐기기<br>
			-2주에 한번 주회가 있으며 끝나고 회식 자리 갖기<br>
			저희와 함꼐 재밌는 학교생활을 즐기고 싶으신 분, 친목 도모, 봉사활동에 관심이 있으신 분,<br>
			장학금을 생각하고 있으신 분 등 동아리 내 분위기도 아주 즐겁고<br>
			회원들도 낯가림 없이 먼저 다가와주는 성격이니 아무 부담 걱정 하지 말고 가입하세요.
          </p>
          
        </div>
      </div>
      <!-- /.row -->
      <hr>
       <!-- Project Two -->
      <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="art" src="images/생동감.jpg" alt=""style="margin-left:300px;">
          </a>
        </div>
        <div class="col-md-5">
          <h3>생동감</h3>
          <p>2</p>
          
        </div>
      </div>
      <!-- /.row -->


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