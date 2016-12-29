package cn.echo.listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class AppListener
 *
 */

public class AppListener 
implements ServletContextListener,
ServletContextAttributeListener{//���������Ķ���Ĵ���������

    /**
     * Default constructor. 
     */
    public AppListener() {
        // TODO Auto-generated constructor stub
    }

    /**
     * ��ʼ�������Ķ���Ҳ����������Ŀʱ��ִ��
     * ServletContextListener ������:---�����˳���������͹ر� �����������ͻ�ִ��init
     */
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		System.out.println("*----------------------------------------------------*");
		System.out.println("welcome come to use JspDemos...\n copy rights 2016-12-29");
		System.out.println("*----------------------------------------------------*");
		
	}
	/**
	 * �ر���Ŀִ��
	 */
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		System.out.println("thanks! bye bye");
	}

	@Override
	public void attributeAdded(ServletContextAttributeEvent scab) {
		// TODO Auto-generated method stub
		System.out.println("�������������������");
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent scab) {
		// TODO Auto-generated method stub
		System.out.println("�����������Ƴ�������");
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent scab) {
		// TODO Auto-generated method stub
		System.out.println("�����������޸�������");
	}

 
	
}
