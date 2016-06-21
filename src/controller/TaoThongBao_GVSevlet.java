package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import model.bo.ThongBaoBO;

public class TaoThongBao_GVSevlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	
		System.out.println("vo dat roi");
		String tieuDe = "";
		String noiDung = "";
		String fileName = "";
		ThongBaoBO tbBO = new ThongBaoBO();	
		HttpSession session = request.getSession();
		String maGVHD = (String)session.getAttribute("username");
		if(session.getAttribute("username")==null){
			response.sendRedirect("HomePage.jsp");
			return;
		}
		
		if("load".equals(request.getParameter("type"))){
				System.out.println(request.getServletContext().getRealPath("") + File.separator + "file-upload");
				request.getRequestDispatcher("/GV_TaoThongBao.jsp").forward(request, response);
			} else {
				if(ServletFileUpload.isMultipartContent(request)){
					FileItemFactory fileItemFactory = new DiskFileItemFactory();
					ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
					
					try {
						List<FileItem> fileItems = upload.parseRequest(request);
						for (FileItem fileItem : fileItems) {
							if(fileItem.isFormField()){
								String fieldName = fileItem.getFieldName();
								String fieldValue = fileItem.getString();
								switch (fieldName) {
								case "tieuDe":
									tieuDe = fieldValue;
									break;
								case "noiDung":
									noiDung = fieldValue;
									break;
								}
							} else {
								if(!"".equals(fileItem.getName())){
									fileName = fileItem.getName();
									fileName = "Duyen-" + System.nanoTime() + "." + FilenameUtils.getExtension(fileName);
									String pathname = request.getServletContext().getRealPath("") + File.separator + "file-upload" + File.separator + fileName;
									System.out.println(pathname);
									File file = new File(pathname);
									fileItem.write(file);
								}
							}
						}
					} catch (Exception e) {
						e.printStackTrace();
						System.out.println("không upoload dược file");
					}
				}
			}
	if	(!"".equals(tieuDe)&&!"".equals(noiDung)&& tieuDe.length()<50)
	{
		
			
			if(tbBO.TaoThongBaoBO(maGVHD,tieuDe,noiDung,fileName)== true)
			{
				response.sendRedirect("GVHD_DanhSachTb");
			}
		
	}
	else{
		RequestDispatcher rd = request.getRequestDispatcher("/GV_TaoThongBao.jsp");
		rd.forward(request, response);
	}
}
}
			
			


	

	
