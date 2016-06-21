package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.THONGBAO;
import model.bo.ThongBaoBO;

/**
 * Servlet implementation class GV_showDanhSachThongBaoServlet
 */
public class GV_showDanhSachThongBaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GV_showDanhSachThongBaoServlet() {
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
		//kiểm tra đăng nhập
		HttpSession session = request.getSession();
		String maGV = (String) session.getAttribute("username");
		if(session.getAttribute("username")==null){
			response.sendRedirect("HomePage.jsp");
			return;
		}
		
		PrintWriter out = response.getWriter();
		ThongBaoBO tbBO = new ThongBaoBO();	
		ArrayList<THONGBAO> tbList = new ArrayList<>();
		tbList = tbBO.getTBListGV(maGV);
		request.setAttribute("tbList", tbList);
		RequestDispatcher rd = request.getRequestDispatcher("/GVHD_DanhSachTb.jsp");
		rd.forward(request, response);
	
	}

}
