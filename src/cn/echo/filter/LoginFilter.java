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
	 * 初始化过滤器  可以获取Filter配置文件功能
	 */
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter过滤器");
	}

	/**
	 * 在执行servlet之前执行
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("doFilter");
		HttpServletResponse	response1 = (HttpServletResponse)response;
		HttpServletRequest request1 = ((HttpServletRequest)request);
		HttpSession session = request1.getSession();
		String username1 = request1.getParameter("username");
		
		if(username1!=null&&!"".equals(username1)){//判断是否是登陆如果是并且跟数据库匹配跳转到下个页面
			//跟数据库比较如果比较失败
			session.setAttribute("username", username1);
			chain.doFilter(request, response);//doFilter已经处理完毕继续向下			
		}else{//不是登陆页面
			//一个用户一个request对象  两个用户的request对象毫不相关
			//两个用户会产生两个session对象  
			String username = (String) session.getAttribute("username");
			User user = new User();
			session.setAttribute("user", user);
			if(username!=null&&!"".equals(username)){
				chain.doFilter(request, response);
			}else{
				request.getRequestDispatcher("SessionLogin.jsp").forward(request, response1);;
			}
		}

	}



	/**
	 * servlet执行之后执行
	 * @see javax.servlet.Filter#destroy()
	 */
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy");
	}

}
