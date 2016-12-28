package cn.echo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.echo.model.User;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/SessionServlet.do")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SessionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//һ���û�һ��request����  �����û���request����������
		//�����û����������session����  
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		User user = new User();
		session.setAttribute("user", user);
		if(username!=null&&!"".equals(username)){
			response.sendRedirect("LoginSuccess.jsp");
		}else{
			response.sendRedirect("Login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.setAttribute("msg", "�������session");
		String username = request.getParameter("username");
		session.setAttribute("username", username);
		request.setAttribute("msg","�������request�����msg");
//		request.getRequestDispatcher("SessionSucess.jsp").forward(request, response);;
	    String url = response.encodeURL("SessionSucess.jsp;jsessionid="+session.getId());
		response.sendRedirect(url);
		//Ĭ��ʹ��ϵͳcookie����
		//cookie��������� --->��дURL��ַ�������;jesssionid= ��ȡ����sessionid
	}
}

