package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import model.bean.THONGBAO;
import model.dao.ModelTaoTB;

/**
 * Servlet implementation class ControllerTaoTB
 */
public class ControllerTaoTB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerTaoTB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		ModelTaoTB mTTB = new ModelTaoTB();
		ArrayList<THONGBAO> alTB = mTTB.getList();
		request.setAttribute("alTB", mTTB.getList());
		
		String matb ="TB00"+mTTB.getID();
		String magv=null;
		//boolean kieutb;
		String tieuDe = request.getParameter("tieuDe");
		String noiDung = request.getParameter("noiDung");
		String file = request.getParameter("file");
		String doiTuong = request.getParameter("doiTuong");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	     //get current date time with Date()
	     Date date = new Date();
	     String ngaytb = String.valueOf(dateFormat.format(date)) ;
	     // System.out.println(dateFormat.format(date));
		if	(!"".equals(tieuDe)&&!"".equals(noiDung)&&!"".equals(doiTuong)){ 
		
			THONGBAO tb = new THONGBAO(matb, magv, tieuDe, noiDung, ngaytb, file, doiTuong);
			mTTB.TaoTB(tb);
			 alTB = mTTB.getList();
			request.setAttribute("alTB", mTTB.getList());
			RequestDispatcher rd = request.getRequestDispatcher("/TrangchuAdmin.jsp");
			rd.forward(request, response);
    	 }else{
    		out.print("<script type='text/javascript'>");
 			out.print(" window.location='Admin_ThongBao_Tao.jsp'");
 			out.print("</script>");
    	 }
	//if(request.getParameter("huy")!=null){
		//	response.sendRedirect("/TrangchuAdmin.jsp");
		//}
}
}