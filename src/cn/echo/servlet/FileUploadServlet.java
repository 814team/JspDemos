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
		//1:创建工厂类---用来创建请求解析器
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//2:创建请求解析器----通过工厂来创建请求解析器
		ServletFileUpload fileUpload = new ServletFileUpload(factory);
		//3:设置上传文件参数 byte----Kbyte---M---G--T-
		fileUpload.setFileSizeMax(1024*1024*3);//最大单个文件
		fileUpload.setSizeMax(1024*1024*3*10);//最大总容量
		//////////////////////
		//////////////////
		List<FileItem> items;
		try {

			//4:通过请求解析器解析请求报文获取所有文件
			items = fileUpload.parseRequest(request);

			//5:遍历文件集合
			File filegroup = new File(getServletContext().getRealPath("/WEB-INF/upload"));
			if(!filegroup.exists()){
				filegroup.mkdir();
			}
			for(FileItem f:items){
				if(f.isFormField()){//判断是否普通文本框  input type="text"
                    String fileName= f.getFieldName();//判断name=后面的
                    String value = f.getString("utf-8");//获取value=后面的
                    System.out.println("filename"+fileName+"fileValue:"+value);
            
				}else{//input type="file"
					String uuid = UUID.randomUUID().toString();
					File tempfile = new File(filegroup+"/"+uuid+".png"); 
					f.write(tempfile);
				}
				f.delete();//清理临时文件不占用空间
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
