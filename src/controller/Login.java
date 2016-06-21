package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import model.bean.THONGBAO;
import model.dao.CheckLogin;
import model.dao.ModelTaoTB;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		String username= request.getParameter("userName");
		String pass = request.getParameter("pass");
		HttpSession session = request.getSession();
		CheckLogin ckl = new CheckLogin();
		// kiem tra chuyen trang login
		if("SV".equals(ckl.author(username, pass))){// sinh vien
			session.setAttribute("username", username);
			RequestDispatcher rd = request.getRequestDispatcher("/TrangChuSinhVien.jsp");
			rd.forward(request, response);
		}else if("GV".equals(ckl.author(username, pass))){//Giao Vien
			
			//String sql = "select * from GIAOVIEN where TenGV = '"+username+"'";
			session.setAttribute("username", username);
			RequestDispatcher rd = request.getRequestDispatcher("/DSPhanHoiServlet");
			rd.forward(request, response);
		}
		else if("AD".equals(ckl.author(username, pass))){
			session.setAttribute("username", username);
			ModelTaoTB mTTB = new ModelTaoTB();
			ArrayList<THONGBAO> alTB = mTTB.getList();
			request.setAttribute("alTB", mTTB.getList());
			RequestDispatcher rd = request.getRequestDispatcher("/TrangchuAdmin.jsp");
			rd.forward(request, response);
		}else if("error".equals(ckl.author(username, pass))){
			out.print("<script type='text/javascript'>");
			out.print("alert('Sai tên đăng nhập hoặc mật khẩu !'); window.location='HomePage.jsp';");
			out.print("</script>");
		}
	}

}
