package cn.echo.mytag;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MyTag1 extends SimpleTagSupport{
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub
		super.doTag();
		JspContext jsp = getJspContext();
		JspWriter out = jsp.getOut();
		out.print("Hello World "+username+" "+this.getClass().getName());
	}
}
