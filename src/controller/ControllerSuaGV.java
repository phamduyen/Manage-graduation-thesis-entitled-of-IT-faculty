package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.CHUYENNGANH;
import model.bean.GIAOVIEN;
import model.dao.ModelDSGV;

/**
 * Servlet implementation class ControllerSuaGV
 */
public class ControllerSuaGV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerSuaGV() {
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
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		ModelDSGV mGV = new ModelDSGV();
		String ma = request.getParameter("id");
		String ten = request.getParameter("tenGv");
		String email = request.getParameter("email");
		String ngaysinh = request.getParameter("ngaysinh");
		String cn = request.getParameter("cn");
		String sdt = request.getParameter("sdt");
		String dc = request.getParameter("dc");
			GIAOVIEN gv = new GIAOVIEN(ma, ten, ngaysinh, cn, email, sdt, dc);
			mGV.updateGV(gv);
			out.print("<script type='text/javascript'>");
			out.print("alert('Thay đổi thành công!'); window.location='danhsachgv'");
			out.print("</script>");
		
		 
	}

}
