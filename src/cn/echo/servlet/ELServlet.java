package cn.echo.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.echo.model.Info;
import cn.echo.model.User;

/**
 * Servlet implementation class ELServlet
 */
@WebServlet("/ELServlet")
public class ELServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor. 
	 */
	public ELServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setAttribute("msg", "�������������"+this.getClass().getName());
		request.setAttribute("msg1", "�������������"+this.getClass().getName());
		ServletContext context = getServletContext();
		context.setAttribute("msg", "����application����"+this.getClass().getName());
		User user = new User();
		Info i = new Info();
		i.setMsg("�������msg");
		user.setInfo(i);
		user.setName("����");
		user.setSex("man");
		request.getServletContext().getContextPath();
		request.setAttribute("user", user);
		request.getRequestDispatcher("eldemo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
