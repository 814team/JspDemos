package cn.echo.servlet;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/FileUploadServlet")
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FileUploadServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		basic(request);
		System.out.println(request.getHeader("content-Type"));
		//1:����������---�����������������
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//2:�������������----ͨ���������������������
		ServletFileUpload fileUpload = new ServletFileUpload(factory);
		//3:�����ϴ��ļ����� byte----Kbyte---M---G--T-
		fileUpload.setFileSizeMax(1024*1024*3);//��󵥸��ļ�
		fileUpload.setSizeMax(1024*1024*3*10);//���������
		//////////////////////
		//////////////////
		List<FileItem> items;
		try {

			//4:ͨ��������������������Ļ�ȡ�����ļ�
			items = fileUpload.parseRequest(request);

			//5:�����ļ�����
			File filegroup = new File(getServletContext().getRealPath("/WEB-INF/upload"));
			if(!filegroup.exists()){
				filegroup.mkdir();
			}
			for(FileItem f:items){
				if(f.isFormField()){//�ж��Ƿ���ͨ�ı���  input type="text"
                    String fileName= f.getFieldName();//�ж�name=�����
                    String value = f.getString("utf-8");//��ȡvalue=�����
                    System.out.println("filename"+fileName+"fileValue:"+value);
            
				}else{//input type="file"
					String uuid = UUID.randomUUID().toString();
					File tempfile = new File(filegroup+"/"+uuid+".png"); 
					f.write(tempfile);
				}
				f.delete();//������ʱ�ļ���ռ�ÿռ�
			}

		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.getWriter().print("upload success");


	}

	private void basic(HttpServletRequest request) throws IOException,
	FileNotFoundException {
		InputStream inputstream  = 	request.getInputStream();
		System.out.println(inputstream);
		int len = 0 ;
		System.out.println(len);
		byte[] b = new byte[11];
		File f = new File(getServletContext().getRealPath("/WEB-INF/upload"));
		System.out.println(f.getAbsolutePath());
		if(!f.exists()){
			f.mkdir();
		}
		String path = f.getAbsolutePath()+"/a.png";
		FileOutputStream fos = new FileOutputStream(path);
		while((len=inputstream.read(b))!=-1){
			inputstream.read(b);
			fos.write(b, 0, b.length);
		}
		fos.flush();
		fos.close();
	}

}
