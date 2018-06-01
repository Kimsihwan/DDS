package chat;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/ChatListServlet")
public class ChatListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("ChatListServlet ¼­ºí¸´ µé¾î¿È");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
//		String fromID = request.getParameter("fromID");
//		String toID = request.getParameter("toID");
//		String chatContent = request.getParameter("chatContet");
		String fromID = URLDecoder.decode(request.getParameter("fromID"), "utf-8");
		String toID = URLDecoder.decode(request.getParameter("toID"), "utf-8");
		String listType = URLDecoder.decode(request.getParameter("listType"), "utf-8");		
		
		if(fromID == null || fromID.equals("") || toID == null || toID.equals("") 
				|| listType == null || listType.equals("")) 
			response.getWriter().write("0");			
		 else if(listType.equals("ten")) response.getWriter().write(getTen(fromID, toID));
		 else {
			 try {
					HttpSession session = request.getSession();
					if(!fromID.equals((String) session.getAttribute("userID"))) {
						response.getWriter().write("");
						return;			
					}
				 response.getWriter().write(getID(fromID, toID, listType));
			 } catch (Exception e) {
				 response.getWriter().write("0");
			}
		 }
	}
	
	public String getTen(String fromID, String toID) {
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		chatDAO chatDAO = new chatDAO();
		ArrayList<chatDTO> chatList = chatDAO.getChatListByRecent(fromID, toID, 100);
		if(chatList.size() == 0) return "";
		for(int i = 0; i < chatList.size(); i++) {
			result.append("[{\"value\": \"" + chatList.get(i).getFromID() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getToID() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatContent() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatTime() + "\"}]");
			if(i != chatList.size() -1) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(chatList.size() -1).getChatID() + "\"}");
		chatDAO.readChat(fromID, toID);
		return result.toString();
	}
	
	public String getID(String fromID, String toID, String chatID) {
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		chatDAO chatDAO = new chatDAO();
		ArrayList<chatDTO> chatList = chatDAO.getChatListByID(fromID, toID, chatID);
		if(chatList.size() == 0) return "";
		for(int i = 0; i < chatList.size(); i++) {
			result.append("[{\"value\": \"" + chatList.get(i).getFromID() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getToID() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatContent() + "\"},");
			result.append("{\"value\": \"" + chatList.get(i).getChatTime() + "\"}]");
			if(i != chatList.size() -1) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(chatList.size() -1).getChatID() + "\"}");
		chatDAO.readChat(fromID, toID);
		return result.toString();
	}

}

