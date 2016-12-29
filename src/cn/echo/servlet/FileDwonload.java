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
		//1:����Ӳ�̵��ļ���������
		String realPath = getServletContext().getRealPath("WEB-INF/upload/a.zip");
		File file = new File(realPath);
		FileInputStream is = new FileInputStream(file);
		//2:��ȡ�ļ�������Ϣ(1)contentType(2)�ļ��� (3)�ļ�����
		String contenttype = getServletContext().getMimeType(file.getAbsolutePath());
		String filename = file.getName();
		System.out.println(filename);
		//����Content-Disposition��Ϣ
		String disposition = "attachment; filename="+ filename ;
		long size = file.length();
		//3:ͨ����ȡ�����ļ�������Ϣ--������Ӧ����ͷ��Ϣ---���������ȡ���ļ���
		response.setHeader("Content-Disposition", disposition);//���ص�����
		response.setContentType(contenttype);//Ĭ������Ӧͷ����
		response.setContentLength((int) size);
		//4:ͨ����һ����ȡ��Ӳ�̵��ڴ������������ļ� ��Ȼ��ͨ����������ļ����ͳ�ȥ
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
