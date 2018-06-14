<%@page import="board.BoardDTO"%>
<%@page import="likey.LikeyDAO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="user.UserDAO"%>

<%@ page import="board.BoardDAO"%>

<%@ page import="likey.LikeyDTO"%>

<%@ page import="java.io.PrintWriter"%>
<%!

public static String getClientIP(HttpServletRequest request) {

    String ip = request.getHeader("X-FORWARDED-FOR"); 

    if (ip == null || ip.length() == 0) {

        ip = request.getHeader("Proxy-Client-IP");

    }

    if (ip == null || ip.length() == 0) {

        ip = request.getHeader("WL-Proxy-Client-IP");

    }

    if (ip == null || ip.length() == 0) {

        ip = request.getRemoteAddr() ;

    }

    return ip;

}

%>

<%

	String userID = null;

	if(session.getAttribute("userID") != null) {

		userID = (String) session.getAttribute("userID");

	}

	if(userID == null) {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('로그인을 해주세요.');");

		script.println("location.href = 'login.jsp'");

		script.println("</script>");

		script.close();

		return;

	}

	request.setCharacterEncoding("UTF-8");

	String boardID = null;

	if(request.getParameter("boardID") != null) {

		boardID = (String) request.getParameter("boardID");

	}

	BoardDAO boardDAO = new BoardDAO();
	LikeyDAO likeyDAO = new LikeyDAO();

	int result = likeyDAO.like(userID, boardID, getClientIP(request));

	if (result == 1) {

		result = boardDAO.like(boardID);

		if (result == 1) {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('추천이 완료되었습니다.');");

			script.println("location.href='index.jsp'");

			script.println("</script>");

			script.close();

			return;

		} else {

			PrintWriter script = response.getWriter();

			script.println("<script>");

			script.println("alert('데이터베이스 오류가 발생했습니다.');");

			script.println("history.back();");

			script.println("</script>");

			script.close();

			return;

		}

	} else {

		PrintWriter script = response.getWriter();

		script.println("<script>");

		script.println("alert('이미 추천을 누른 글입니다.');");

		script.println("history.back();");

		script.println("</script>");

		script.close();

		return;

	}

%>