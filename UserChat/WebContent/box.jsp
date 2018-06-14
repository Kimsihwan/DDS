<%@ page language="java" contentType="text/html; charset= UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<%
		String userID= null;
		if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
		}
		if(userID == null){
			session.setAttribute("messageType", "오류 메시지");
			session.setAttribute("messageContent", "현재 로그인이 되어 있지 않습니다.");
			response.sendRedirect("index.jsp");
			return;
		}
	%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="theme12.css">
	<link rel="stylesheet" href="custom.css">
	<link rel="stylesheet" href="font.css">
	<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<style type="text/css">
	
.under li   {
   display:inline;
   list-style:none;
   border-left : 1px solid gray;
   margin-left:8px;
   color : gray;
}
.under li:first-child   {
   border-left:none;   
}
.under_menu img, .under   {
   display : inline;
   
}
.under_menu {
	width: 1100px;
	margin: auto;
}
	</style>
	<title>JSP Ajax 실시간 회원제 채팅 서비스</title>		
	<script src="js/bootstrap.js"></script> 
	<script type="text/javascript">
		function getUnread() {
			$.ajax({
				type: "POST",
				url: "./ChatUnreadServlet",
				data: {
					userID: encodeURIComponent('<%= userID %>'),
				},
				success: function(result) {
					if(result >= 1){
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
		function chatBoxFunction() {
			var userID = '<%= userID %>'
			$.ajax({
				type: "POST",
				url: "./ChatBoxServlet",
				data: {
					userID: encodeURIComponent(userID),
				},
				success: function(data) {
					if(data == "") return;
					$('#boxTable').html('');
					var parsed = JSON.parse(data);
					var result = parsed.result;
					for(var i = 0; i < result.length; i++){
						if(result[i][0].value == userID) {
							result[i][0].value = result[i][1].value;
						} else {
							result[i][1].value = result[i][0].value;
						}
						addBox(result[i][0].value, result[i][1].value, result[i][2].value, result[i][3].value, result[i][4].value, result[i][5].value);
					}
				}
			});
		}
		function addBox(lastID, toID, chatContent, chatTime, unread, profile) {
			$('#boxTable').append('<tr onclick="location.href=\'chat.jsp?toID=' + encodeURIComponent(toID) + '\'">' +
					'<td style="width: 150px;">' +
					'<img class="media-object img-circle" style="max-width:50px; max-height:50px; margin : 0 auto;" src="'+ profile +'">' +﻿
					'<h5>' + lastID + '</h5></td>' +
					'<td>' +
					'<h5>' + chatContent +
					'<span class="label label-info">' + unread + '</span></h5>' +
					'<div class="pull-right">' + chatTime + '</div>' +
					'</td>' +
					'</tr>');			
		}
		function getInfiniteBox() {
			setInterval(function() {
				chatBoxFunction();
			}, 3000);
		}
	</script> 
</head>
<body>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"style="padding: 0px;"><img id = "logo" src="images/logo.png" alt="logo" style="height: 100%;  width: auto; margin-top: 10px; margin-left: 30px;"></a>		
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav" style="margin-left: 30px;">
				<li><a href="index.jsp">메인</a>
				
				<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">동아리 개설<span class="caret"></span>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">개설 방법</a></li>
					<li><a href="#">개설 신청서</a></li>
				</ul>				
				</li>
				
				<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">동아리 홍보<span class="caret"></span>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">예술 동아리</a></li>
					<li><a href="#">운동 동아리</a></li>
					<li><a href="#">친목 동아리</a></li>
					<li><a href="#">봉사 동아리</a></li>
					<li><a href="#">종교 동아리</a></li>
				</ul>				
				</li>
				
				<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">동아리 가입<span class="caret"></span>
				</a>
				<ul class="dropdown-menu">
					<li><a href="#">가입 신청 방법</a></li>
					<li><a href="#">가입 신청서</a></li>
				</ul>				
				</li>					
				
				<li class="dropdown active">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">실시간 채팅<span class="caret"></span>
					</a>
				<ul class="dropdown-menu">
					<li><a href="find.jsp">친구찾기</a></li>
					<li class="active"><a href="box.jsp">채팅하기</a></li>
				</ul>				
				</li>
				
				<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">Board<span class="caret"></span>
					</a>
				<ul class="dropdown-menu">
					<li><a href="boardView.jsp">자유게시판</a></li>
					<li><a href="#">갤러리</a></li>
				</ul>				
				</li>
				
			</ul>
		<%
			if(userID == null){
				
		%>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span>
					</a>
				<ul class="dropdown-menu">
					<li><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입</a></li>
				</ul>				
			</li>
		</ul>
		<%
			} else{
		%>
				<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span>
				</a>					
				<ul class="dropdown-menu">
					<li><a href="update.jsp">회원정보수정</a></li>
					<li><a href="profileUpdate.jsp">프로필수정</a></li>
					<li><a href="logoutAction.jsp">로그아웃</a></li>
				</ul>			
			</li>
		</ul>
		<%
			}
		%>
		</div>
	</nav>
	<div class="container">
		<table class="table" style="margin: 0 auto;">
			<thead>
				<tr>
					<th><h4>주고받은 메시지 목록</h4></th>
				</tr>
			</thead>
			<div style="overflow-y: auto; width: 100%; max-height: 450px;">
				<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd; margin: 0 auto;">
					<tbody id="boxTable">
					</tbody>
				</table>
			</div>
		</table>
	</div>
		<hr>
	       <div class="under_menu">
		<img src="images/logo2.png" style="width:250px;">
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
		if (messageContent != null){
	%>
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content <% if(messageType.equals("오류 메시지")) out.println("panel-warning"); else out.println("panel-success"); %>">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							<%= messageType %>
						</h4>
					</div>
					<div class="modal-body">
						<%= messageContent %>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		}
	%>
	<script>
		$('#messageModal').modal("show");
	</script>
	<%
		if(userID != null) {
	%>
		<script type="text/javascript">
			$(document).ready(function () {
				getUnread();
				getInfiniteUnread();
				chatBoxFunction();
				getInfiniteBox();
			});
		</script>
	<%		
		}
	 %>
</body>
</html>