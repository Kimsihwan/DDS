package chat;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ChatSubmitServlet")
public class ChatSubmitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("ChatSubmitServlet ¼­ºí¸´ µé¾î¿È");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
//		String fromID = request.getParameter("fromID");
//		String toID = request.getParameter("toID");
//		String chatContent = request.getParameter("chatContet");
		String fromID = URLDecoder.decode(request.getParameter("fromID"), "utf-8");
		String toID = URLDecoder.decode(request.getParameter("toID"), "utf-8");
		String chatContent = URLDecoder.decode(request.getParameter("chatContent"), "utf-8");
		
		if(fromID == null || fromID.equals("") || toID == null || toID.equals("") 
				|| chatContent == null || chatContent.equals("")) {
			response.getWriter().write("0");			
		} else if(fromID.equals(toID)) {
			response.getWriter().write("-1");
		}
		else {
			HttpSession session = request.getSession();
			if(!fromID.equals((String) session.getAttribute("userID"))) {
				response.getWriter().write("");
				return;			
			}			
			response.getWriter().write(new chatDAO().submit(fromID, toID, chatContent)+"");
		}
	}

}

