package chat;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ChatUnreadServlet")
public class ChatUnreadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ChatUnreadServlet ¼­ºí¸´ µé¾î¿È");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String userID = URLDecoder.decode(request.getParameter("userID"), "utf-8");
		if(userID == null || userID.equals("")) {
			response.getWriter().write("0");
		} else {
			response.getWriter().write(new chatDAO().getAllunreadChat(userID) + "");
		}
	}

}