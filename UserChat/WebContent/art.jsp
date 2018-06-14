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
<title>예술동아리</title>
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
				<li><a href="#"><span style="background-color:#FFE08C">예술동아리</span></a></li>
				<li>&nbsp;&nbsp;&nbsp;<a href="exercise.jsp">운동동아리</a></li>
				<li>&nbsp;&nbsp;&nbsp;<a href="cm.jsp">친목동아리</a></li>
				<li>&nbsp;&nbsp;&nbsp;<a href="bs.jsp">봉사동아리</a></li>
				<li>&nbsp;&nbsp;&nbsp;<a href="jg.jsp">종교동아리</a></li>
			
			</ul>
			
			
			      <!-- Project One -->
      <div class="row">
        <div class="col-md-7">
            <img class="art" src="images/댄스.jpg" alt=""style="margin-left:300px;">
          </a>
        </div>
        <div class="col-md-5">
          <h3> DND</h3>
          <p>안녕하세요 동의과학대학교 댄스동아리 DND입니다.<br>
			저희동아리에서 신입부원과 매니저를 모집합니다!<br>
          DIT학생이라면 누구든지 지원 가능가능!!<br>
		매니저에 관심있으신 분들 문의사항이 있다면연락주시면 됩니다<br>
		많은 연락 부탁드립니다.
          </p>
          
        </div>
      </div>
      <!-- /.row -->

      <hr>
			
	      <!-- Project Two -->
      <div class="row">
        <div class="col-md-7">
            <img class="art" src="images/소리빛.jpg" alt=""style="margin-left:300px;">
          </a>
        </div>
        <div class="col-md-5">
          <h3>소리빛</h3>
          <p>안녕하세요 여러분~<br>
          동의과학대학교 보컬&통기타 동아리 소리빛입니다.<br>
          기타를 좋아하시는 분? 노래를 좋아하시는 분? 랩을 좋아하시는 분?<br>
		저희 소리빛(Sound Loght) 동아리에서 신입생을 모집합니다.<br>
		저희 동아리는 딱딱한 분위기가 아닌 즐거운 분위기로 기타도 배우면서 노래,랩도 같이 하고 있습니다.<br>
		입부 희망자는 아래 연락처로 연락 및 문자로 사전 연락 드립니다.
          </p>
          
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Project Three -->
      <div class="row">
        <div class="col-md-7">
            <img class="art" src="images/slide2.jpg" alt="" style="margin-left:300px;">
          </a>
        </div>
        <div class="col-md-5">
          <h3>DCC</h3>
          <p>
             안녕하세요 저희는 동의과학대학교 사진동아리<br>
         (Dreams Camera Campus)  DCC입니다!!!<br>
		저희동아리는 선 후배 간의 친목 도모와 추억 쌓기가 주목적이며 주 활동내용은 사진촬영과 여행입니다.<br>
		-활동참여 잘 하시는 분<br>
		-사진 찍거나 찍히는 거 좋아하시는 분<br>
		-놀러 다니는 거나 야외활동 좋아하시는 분<br>
		-먹는 거 좋아하시는 분<br>		
		낯가리시는 분들을 위해 2주마다 회식에서 동아리원들끼리 좀 더 친해질 수 있는 시간도 있을 예정입니다.<br> 
		꼭 카메라가 없어도! 휴대폰 카메라로도 충분히 이쁜 사진 많은 추억들 남길 수 있으니 부담 없이<br> 
		많이 지원해주세요.즐거운 학교생활 즐거운 동아리 생활을 위하여 DCC!
             
          </p>
          
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Project Four -->
      <div class="row">

        <div class="col-md-7">
            <img class="art" src="images/dj.jpg" alt=""style="margin-left:300px;">
          </a>
        </div>
        <div class="col-md-5">
          <h3>트램펄린</h3>
          <p>4</p>
          
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