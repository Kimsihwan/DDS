<%@ page language="java" contentType="text/html; charset= UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<!DOCTYPE html>
<html>
<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
%>
<head>
<style type="text/css">
#image {
	height: 600px;
	width: 100%;
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

.under_menu {
	width: 1100px;
	margin: auto;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="theme12.css">
<link rel="stylesheet" href="custom.css">
<link rel="stylesheet" href="font.css">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<title>JSP Ajax 실시간 회원제 채팅 서비스</title>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
		function getUnread() {
			$.ajax({
				type: "POST",
				url: "./ChatUnreadServlet",
				data: {
					userID: encodeURIComponent('<%=userID%>
	'),
			},
			success : function(result) {
				if (result >= 1) {
					showUnread(result);
				} else {
					showUnread('');
				}
			}
		});
	}

	function getInfiniteUnread() {
		setInterval(function() {
			getUnread();
		}, 4000);
	}
	function showUnread(result) {
		$('#unread').html(result);
	}
</script>
</head>
<body>

	<nav class="navbar navbar-default" style="margin: 0px;">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp" style="padding: 0px;"><img
				id="logo" src="images/logo.png" alt="logo"
				style="height: 100%; width: auto; margin-top: 10px; margin-left: 30px;"></a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav" style="margin-left: 30px;">
				<li class="active"><a href="index.jsp">메인</a>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">동아리 개설<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">개설 방법</a></li>
						<li><a href="#">개설 신청서</a></li>
					</ul></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">동아리 홍보<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">예술 동아리</a></li>
						<li><a href="#">운동 동아리</a></li>
						<li><a href="#">친목 동아리</a></li>
						<li><a href="#">봉사 동아리</a></li>
						<li><a href="#">종교 동아리</a></li>
					</ul></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">동아리 가입<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#">가입 신청 방법</a></li>
						<li><a href="#">가입 신청서</a></li>
					</ul></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">실시간 채팅<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="find.jsp">친구찾기</a></li>
						<li><a href="box.jsp">채팅하기</a></li>
					</ul></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">Board<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="boardView.jsp">자유게시판</a></li>
						<li><a href="#">갤러리</a></li>
					</ul></li>

			</ul>
			<%
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false"><%=userID%>님<span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="update.jsp">회원정보수정</a></li>
						<li><a href="profileUpdate.jsp">프로필수정</a></li>
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<div class="container" style="width: 100%; padding: 0px;">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img id="image" src="images/slide.jpg" alt="side">
				</div>

				<div class="item">
					<img id="image" src="images/slide2.jpg" alt="side2">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="panel-group"
		style="display: flex; justify-content: space-around; align-items: stretch; height: 170px;">


		<div class="panel panel-primary"
			style="margin-top: 5px; flex-basis: 280px;">
			<div class="panel-heading" style="text-align: center;">Best 게시물</div>
			<div class="panel-body">
				<ul style="padding-left: 20px;">
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
				</ul>
			</div>
		</div>
		<div class="panel panel-primary" style="flex-basis: 280px;">
			<div class="panel-heading" style="text-align: center;">자유 게시판</div>
			<div class="panel-body">
				<ul style="padding-left: 20px;">
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
				</ul>
			</div>
		</div>
		<div class="panel panel-primary" style="flex-basis: 280px;">
			<div class="panel-heading" style="text-align: center;">갤러리</div>
			<div class="panel-body">
				<ul style="padding-left: 20px;">
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
				</ul>
			</div>
		</div>
		<div class="panel panel-primary" style="flex-basis: 280px;">
			<div class="panel-heading" style="text-align: center;">공지사항</div>
			<div class="panel-body">
				<ul style="padding-left: 20px;">
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
					<li><span class="boardTxt"><span class="boardDate"></span></li>
				</ul>
			</div>
		</div>
	</div>
	<hr>
	<div class="under_menu">
		<img src="images/logo2.png" style="width: 250px;">
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
	<%
		String messageContent = null;
		if (session.getAttribute("messageContent") != null) {
			messageContent = (String) session.getAttribute("messageContent");
		}
		String messageType = null;
		if (session.getAttribute("messageType") != null) {
			messageType = (String) session.getAttribute("messageType");
		}
		if (messageContent != null) {
	%>
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div
					class="modal-content <%if (messageType.equals("오류 메시지"))
					out.println("panel-warning");
				else
					out.println("panel-success");%>">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times</span> <span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							<%=messageType%>
						</h4>
					</div>
					<div class="modal-body">
						<%=messageContent%>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#messageModal').modal("show");
	</script>
	<%
		session.removeAttribute("messageContent");
			session.removeAttribute("messageType");
		}
	%>
	<%
		if (userID != null) {
	%>
	<script type="text/javascript">
		$(document).ready(function() {
			getUnread();
			getInfiniteUnread();
		});
	</script>
	<%
		}
	%>
</body>
</html>