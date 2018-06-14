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
.regi_icon_box{
   text-align:center;
   font:3em Arial;
   font-size:20px;
}
td{
   width:600px;
}
table{
   margin-left:300px;
   border-spacing:10px;
}
.check{
   border:1px solid #EAEAEA;
   width:1200px;
   height:300px;
   margin-left:300px;
   margin-top:50px;
   background-color:#D9E5FF;
}
.title{
   font:2em Arial;
   text-align:center;
   
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="theme12.css">
<link rel="stylesheet" href="custom.css">
<link rel="stylesheet" href="font.css">
<link rel="shortcut icon" href="images/logo1.png" />
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>가입신청방법</title>
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
            
            <div class="Application">
               <img id="image" style="margin-left:500px;" src="images/Application.png" alt="1" >
            </div>
            <title>동아리 신청방법</title>

         <br>
           <div class="regi_icon_box">
         <table>
         <colgroup>
         
         <tr>
         <td>
               <img src="images/search.png">
               <p>①[동아리홍보]에서<br> 자신이 신청하고자 하는<br> 동아리 회장의 ID를 찾는다.</p>
         </td>
         <td>
               <img src="images/document.png">
               <p>②[동아리가입]-[동아리신청서]에서<br>첨부파일에 있는 <br>신청서를 작성한다.</p>
         </td>
         </tr>
         <tr>
         <td>
               <img src="images/send.png">
               <p>③동아리 회장에게 [실시간채팅]-[친구찾기]에서<br>동아리 회장의 ID를 검색 후<br> 작성한 신청서를 전송한다.</p>
         </td>   
         <td>
               <img src="images/mail.png">
               <p>④동아리 회장의 답변을 기다린다.</p>
         </td>   
         </tr>
         </colgroup>
         </table>
   <div class="check">

         <h1 class="title">CHECK UP</h1>
         <br>
         <p class="text">
         <ul style="list-style:none; text-align:left;">
            <div style="margin-left:120px;">
            <li><image src="images/message.png">&nbsp; 이름, 나이, 동아리명은 정확히 적어야 하며 빈칸이 있을경우 가입이 제한될 수 있습니다.</li>
            <li><image src="images/message.png">&nbsp; 기타 문의사항은 [실시간 채팅]에서 동아리 회장에게 문의할 수 있습니다.</li>
            <li><image src="images/message.png">&nbsp; 각 학과 동아리는 학과 학과장께 가입요청을 하여야 합니다.</li>
            <li><image src="images/message.png">&nbsp; 동아리 가입 취소는 신청을 한 후 3일이내에 [실시간 채팅]으로 하여야 합니다.</li>
            </div>
         </ul>
         <p>
   </div>
   <br>
   <hr>
   <div class="under_menu">
      <img src="images/logo_under.png"
         style="width: 250px;">
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