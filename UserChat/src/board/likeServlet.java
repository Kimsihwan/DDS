package board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import likey.LikeyDAO;

@WebServlet("/likeServlet")
public class likeServlet extends HttpServlet {
	
	public static String getCilentIP(HttpServletRequest request) {
    	String ip = request.getHeader("X-FORWARDED-FOR");
    	if(ip == null || ip.length() == 0) {
    		ip = request.getHeader("Proxy-Client-IP");
    	}
    	if(ip == null || ip.length() == 0) {
    		ip = request.getHeader("WL-Proxy-Client-IP");
    	}
    	if(ip == null || ip.length() == 0) {
    		ip = request.getRemoteAddr();
    	}
    	return ip;
	}
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("UserRegisterServlet 서블릿 들어옴");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String userID = request.getParameter("userID");
		String boardID = request.getParameter("boardID");
		if(userID == null || userID.equals("") || boardID == null || boardID.equals("")) {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "모든 내용을 입력하세요.");
			response.sendRedirect("join.jsp");
			return;
		}
		
		int result = new LikeyDAO().like(userID, boardID, getCilentIP(request));
		if(result == 1) {
			result = new BoardDAO().like(boardID);
			if(result == 1) {
				request.getSession().setAttribute("messageType", "성공 메시지");
				request.getSession().setAttribute("messageContent", "추천완료");
				response.sendRedirect("index.jsp");
				return;	
			} else {
				request.getSession().setAttribute("messageType", "오류 메시지");
				request.getSession().setAttribute("messageContent", "DB오류");
				response.sendRedirect("join.jsp");
				return;		
			}
			
		} else {
			request.getSession().setAttribute("messageType", "오류 메시지");
			request.getSession().setAttribute("messageContent", "이미 추천했음");
			response.sendRedirect("join.jsp");
			return;			
		}
	}
}
