package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import model.bean.DANHGIA;
import model.bean.DATTG;
import model.bean.DIEMBV;
import model.bean.PHANHOI;
import model.bo.DiemBVBO;
import model.bo.DotDanhGiaBO;
import model.bo.PhanHoiBO;
import model.bo.TienDoBO;

/**
 * Servlet implementation class CapNhatDiemServlet_GV
 */
public class ShowCapNhatDiemServlet_GV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowCapNhatDiemServlet_GV() {
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
		
		HttpSession session = request.getSession();
		//String MaGVHD = (String)session.getAttribute("username");
		if(session.getAttribute("username")==null){
			response.sendRedirect("Homepage");
			return;
		}
		
		TienDoBO tienDoBO = new TienDoBO();
		DiemBVBO diemBVBO = new DiemBVBO();
		DotDanhGiaBO dotDanhGiaBO = new DotDanhGiaBO();
		
		//// Lay phan hoi.
		String maPH =request.getParameter("maPH");
		String maDK,maDot,kieuPH;		
		PhanHoiBO phBO = new PhanHoiBO();
		PHANHOI phanHoi = phBO.getPhanHoi(maPH);
		maDK = phanHoi.getMaDK();
		maDot = phanHoi.getMadot();
		kieuPH = phanHoi.getKieuPh();
		
		
		DIEMBV diembv = new DIEMBV();
		DANHGIA danhGia =  new DANHGIA();
		DATTG dot = new DATTG();
		
		
		
	// lay du lieu tu da ta
		if(!phanHoi.equals(null)){
			if(!"MD005".equals(maDot)){
				danhGia =tienDoBO.getTienDo(maDK,maDot);
				//dot = dotDanhGiaBO.getDot(maDot);
				//request.setAttribute("maDot", maDot);
				request.setAttribute("danhGia", danhGia);
				RequestDispatcher rd = request.getRequestDispatcher("/GVHD_CapNhatTienDo.jsp");
				rd.forward(request, response);
			}
			if("MD005".equals(maDot))
			{
				diembv = diemBVBO.getDiemBaoVe(maDK);
				request.setAttribute("diembv", diembv);
				RequestDispatcher rd = request.getRequestDispatcher("/GVHD_CapNhatDiemBV.jsp");
				rd.forward(request, response);
			}
		}
			//response.sendRedirect("XemChiTietPHServlet_GV");
	}
	/*private void mai() {
		// TODO Auto-generated method stub
		//String maPH =request.getParameter("maPH");
		String maDK,maDot,kieuPH;		
		PhanHoiBO phBO = new PhanHoiBO();
		PHANHOI phanHoi = phBO.getPhanHoi("PH001");
		System.out.println(maDK = phanHoi.getMaDK());
		//maDot = phanHoi.getMadot();
		System.out.println(kieuPH = phanHoi.getKieuPh());
	}*/

}
