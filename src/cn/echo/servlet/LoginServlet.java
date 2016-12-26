package cn.echo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie[] cookies  = request.getCookies();
		StringBuilder sb = new StringBuilder();
		for(Cookie c:cookies){
			sb.append("cookieName:"+c.getName());
			sb.append("\ncookieValue:"+c.getValue());
		}
		request.setAttribute("cookie",sb.toString());
		request.getRequestDispatcher("LoginSuccess.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Boolean isLoginSuccess = false;//
		System.out.println(username);
		System.out.println(password);
		if(username!=null&&password!=null&&!"".equals(username)&&!"".equals(password)){
			Cookie cookie = new Cookie("username",username);
			Cookie cookie2 = new Cookie("password",password);
			cookie.setMaxAge(60);
			cookie2.setMaxAge(60);
			response.addCookie(cookie);
			response.addCookie(cookie2);
			isLoginSuccess=true;
			response.sendRedirect("LoginSuccess.jsp");
		}else{
			Cookie[] cookies  = request.getCookies();
			for(Cookie c:cookies){
				if("username".equals(c.getName())){
					String currentUserName=c.getValue();
					if(currentUserName!=null&&!"".equals(currentUserName.trim())){
					  isLoginSuccess=true;
						response.sendRedirect("LoginSuccess.jsp");
					}
					
				}
			}
		}
		if(!isLoginSuccess){
			response.sendRedirect("Login.jsp");
		}
	}

}
