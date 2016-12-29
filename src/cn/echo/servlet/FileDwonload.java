package cn.echo.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FileDwonload
 */
@WebServlet("/FileDownload")
public class FileDwonload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileDwonload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//1:构建硬盘到文件的输入流
		String realPath = getServletContext().getRealPath("WEB-INF/upload/a.zip");
		File file = new File(realPath);
		FileInputStream is = new FileInputStream(file);
		//2:获取文件各种信息(1)contentType(2)文件名 (3)文件长度
		String contenttype = getServletContext().getMimeType(file.getAbsolutePath());
		String filename = file.getName();
		System.out.println(filename);
		//创建Content-Disposition信息
		String disposition = "attachment; filename="+ filename ;
		long size = file.length();
		//3:通过获取到的文件各种信息--设置相应报文头信息---三个上面获取到的几个
		response.setHeader("Content-Disposition", disposition);//下载的名字
		response.setContentType(contenttype);//默认在响应头里面
		response.setContentLength((int) size);
		//4:通过第一步获取的硬盘到内存输入流遍历文件 ，然后通过输出流将文件发送出去
		OutputStream out = response.getOutputStream();
		byte[] b= new byte[1024];
		int len=0;
		while((len=is.read(b))!=-1){
			out.write(b,0,len);
		}
		is.close();
		out.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
