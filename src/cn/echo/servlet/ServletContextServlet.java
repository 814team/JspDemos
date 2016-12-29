package cn.echo.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletContextServlet
 */
@WebServlet("/ServletContextServlet")
public class ServletContextServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletContextServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type = request.getParameter("type");
		ServletContext context = getServletContext();
		response.setCharacterEncoding("utf-8");
		switch(type){
		case "add":
			context.setAttribute("name", "����");
			response.getWriter().write("���������");
			break;
		case "repleace":
			context.setAttribute("name", "����1");
			response.getWriter().write("�޸�������");
			break;
		case "remove":
			context.removeAttribute("name");
			response.getWriter().write("�Ƴ�������");
			break;
		default:
           response.getWriter().write("����type������");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
