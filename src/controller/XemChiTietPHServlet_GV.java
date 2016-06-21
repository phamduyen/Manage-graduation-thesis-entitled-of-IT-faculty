package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.PHANHOI;
import model.bo.PhanHoiBO;
import model.dao.PhanHoiDAO;

/**
 * Servlet implementation class XemChiTietPHServlet_GV
 */
public class XemChiTietPHServlet_GV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XemChiTietPHServlet_GV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		String maPH = request.getParameter("maPH");
		
		HttpSession session = request.getSession();
		//String MaGVHD = (String)session.getAttribute("username");
		if(session.getAttribute("username")==null){
			response.sendRedirect("Homepage");
			return;
		}
		// chuyển trang xem chi tiết
		PhanHoiBO phBO = new PhanHoiBO();
		PHANHOI phanHoi =phBO.getPhanHoi(maPH);
		
		request.setAttribute("phanHoi", phanHoi);
		 RequestDispatcher rd = request.getRequestDispatcher("/GVHD_XemChiTietPhucKhao.jsp");
		 rd.forward(request, response);
	}

}
