<%@ page language="java" contentType="text/html; charset= UTF-8" pageEncoding="UTF-8"%>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.BoardDTO" %>
<%@ page import="user.UserDTO" %>
<%@ page import="user.UserDAO" %>
<%@ page import="java.util.ArrayList" %>
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
		UserDTO user = new UserDAO().getUser(userID);
	%>
<head>
<style type="text/css">
.btn-file {
	position: relative;
	overflow: hidden;	
}
.btn-file input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	min-height: 100%;
	min-width: 100%;
	font-size: 100px;
	text-align: right;
	filter: alpha(opacity=0);
	opacity: 0;
	outline: none;
	background: white;
	cursor: inherit;
	display: block;
}
.file {
	visibility: hidden;
	position: absolute;
}

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
		function passwordCheckFunction() {
			var userPassword1 = $('#userPassword1').val();
			var userPassword2 = $('#userPassword2').val();
			if(userPassword1 != userPassword2) {
				$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
			} else{
				$('#passwordCheckMessage').html('');
			}
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
				
				<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">실시간 채팅<span class="caret"></span>
					</a>
				<ul class="dropdown-menu">
					<li><a href="find.jsp">친구찾기</a></li>
					<li><a href="box.jsp">채팅하기</a></li>
				</ul>				
				</li>
				
				<li class="dropdown active">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">Board<span class="caret"></span>
					</a>
				<ul class="dropdown-menu">
					<li class="active"><a href="boardView.jsp">자유게시판</a></li>
					<li><a href="#">갤러리</a></li>
				</ul>				
				</li>
				
			</ul>
			<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="buton" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span>
				</a>					
				<ul class="dropdown-menu">
					<li><a href="update.jsp">회원정보수정</a></li>
					<li class="active"><a href="profileUpdate.jsp">프로필수정</a></li>
					<li><a href="logoutAction.jsp">로그아웃</a></li>
				</ul>			
			</li>
		</ul>
		</div>
	</nav>	
	<div class="container">
		<form method="post" action="./BoardWriteServlet" enctype="multipart/form-data">
			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>게시물 작성 양식</h4></th>						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>아이디</h5></td>
						<td><h5><%= user.getUserID() %></h5>
						<input type="hidden" name="userID" value="<%= user.getUserID() %>"></td>												
					</tr>
					<tr>
						<td style="width: 110px;"><h5>글 제목</h5></td>
						<td><input class="form-control" type="text" maxlength="50" name="boardTitle" placeholder="글 제목을 입력하세요."></td>												
					</tr>
					<tr>
						<td style="width: 110px;"><h5>글 내용</h5></td>
						<td><textarea class="form-control" rows="10" name="boardContent" maxlength="2048" placeholder="글 내용을 입력하세요."></textarea></td>												
					</tr>
					<tr>
						<td style="width: 110px;"><h5>파일 업로드</h5></td>
						<td colspan="2">
						    <input type="file" name="boardFile" class="file">
						    <div class="input-group col-xs-12">
						    	<span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
						    	<input type="text" class="form-control input-lg" disabled placeholder="파일을 업로드 하세요.">
						    	<span class="input-group-btn">
						    		<button class="browse btn bnt-primary input-lg" type="button"><i class="glyphicon glyphicon-search"></i>파일 찾기</button>
						    	</span>
						    </div>
						</td>
					</tr>
					<tr>
						<td style="text-align: left;" colspan="3"><h5 style="color: red;"></h5><input class="btn btn-primary pull-right" type="submit" value="등록"></td>
					</tr>					
				</tbody>
			</table>
		</form>
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
	<script>
		$('#messageModal').modal("show");
	</script>
	<%
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		}
	%>
	<%
		if(userID != null) {
	%>
		<script type="text/javascript">
			$(document).ready(function () {
				getUnread();
				getInfiniteUnread();
			});
		</script>
	<%		
		}
	 %>
	 <script type="text/javascript">
	 	$(document).on('click', '.browse', function() {
	 		var file = $(this).parent().parent().parent().find('.file');
	 		file.trigger('click');
	 	});
	 	$(document).on('change', '.file', function() {
	 		$(this).parent().find('.form-control').val($(this).val().replace(/C:\\fakepath\\/i, ''));
	 	});
	 </script>
</body>
</html>