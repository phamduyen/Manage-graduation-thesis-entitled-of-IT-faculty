package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.PHANHOI;
import model.bo.PhanHoiBO;


/**
 * Servlet implementation class DSPhanHoiServlet
 */
public class DSPhanHoiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DSPhanHoiServlet() {
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
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String MaGVHD = (String)session.getAttribute("username");
		if(session.getAttribute("username")==null){
			response.sendRedirect("HomePage.jsp");
			return;
		}
		
		
		ArrayList<PHANHOI> phanHoiList = new ArrayList<PHANHOI>();
		PhanHoiBO phDao = new PhanHoiBO();
		try {
			phanHoiList = phDao.getPhanHoiList_GV(MaGVHD);
			request.setAttribute("phanHoiList", phanHoiList);
			RequestDispatcher rd = request.getRequestDispatcher("/TrangChuGVHD.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("lôi hệ thống");
			e.printStackTrace();
		}
		
	}

}
