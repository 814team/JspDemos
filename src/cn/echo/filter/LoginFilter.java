package cn.echo.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.echo.model.User;

public class LoginFilter implements Filter{

	/**
	 * ��ʼ��������  ���Ի�ȡFilter�����ļ�����
	 */
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter������");
	}

	/**
	 * ��ִ��servlet֮ǰִ��
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		chain.doFilter(request, response);//doFilter�Ѿ�������ϼ�������			
//		System.out.println("doFilter");
//		HttpServletResponse	response1 = (HttpServletResponse)response;
//		HttpServletRequest request1 = ((HttpServletRequest)request);
//		HttpSession session = request1.getSession();
//		String username1 = request1.getParameter("username");
//		
//		if(username1!=null&&!"".equals(username1)){//�ж��Ƿ��ǵ�½����ǲ��Ҹ����ݿ�ƥ����ת���¸�ҳ��
//			//�����ݿ�Ƚ�����Ƚ�ʧ��
//			  session.setAttribute("username", username1);
//			chain.doFilter(request, response);//doFilter�Ѿ�������ϼ�������			
//		}else{//���ǵ�½ҳ��
//			//һ���û�һ��request����  �����û���request����������
//			//�����û����������session����  
//			String username = (String) session.getAttribute("username");
//			User user = new User();
//			session.setAttribute("user", user);
//			if(username!=null&&!"".equals(username)){
//				chain.doFilter(request, response);
//			}else{
//				request.getRequestDispatcher("SessionLogin.jsp").forward(request, response1);;
//			}
//		}

	}



	/**
	 * servletִ��֮��ִ��
	 * @see javax.servlet.Filter#destroy()
	 */
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy");
	}

}
