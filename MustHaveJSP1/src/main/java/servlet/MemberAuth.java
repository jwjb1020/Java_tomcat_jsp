package servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import membership.MemberDAO;
import membership.MemberDTO;
@WebServlet(urlPatterns = "/13Servlet/MemberAuth.mvc",
initParams = {@WebInitParam(name = "admin_id",value = "junnnn")})
public class MemberAuth extends HttpServlet {
	MemberDAO dao;
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		ServletContext application = this.getServletContext();
		String driver = application.getInitParameter("MySQLDriver");
		String connectUrl = application.getInitParameter("MySQLURL");
		String oId = application.getInitParameter("MySQLId");
		String oPass = application.getInitParameter("MySQLPwd");
		
		dao = new MemberDAO(driver,connectUrl,oId,oPass);
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String admin_id = this.getInitParameter("admin_id");
		
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		
		MemberDTO memberDTO = dao.getMemberDTO(id, pass);
		
		String memberName = memberDTO.getName();
		if(memberName != null) {
			req.setAttribute("authMessage", memberName + "닝겐 왔냐?");
		}
		else {
			if(admin_id.equals(id))
				req.setAttribute("authMessage", admin_id + "오마에와 대장");
			else
				req.setAttribute("authMessage", "너는 우리의 동료가 아니다");
		}
		//req.getRequestDispatcher("/13Servlet/MemberAuth.jsp").forward(req, resp);
		req.getRequestDispatcher("/WEB-INF/view/MemberAuthView.jsp").forward(req, resp);
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		dao.close();
	}

}
