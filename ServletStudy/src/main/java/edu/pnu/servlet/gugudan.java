package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gugudan")
public class gugudan extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("gugudan");
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter out =resp.getWriter();
		out.println("<h1>2단입니다.<h1>");
		int n = 2;
		int res = 0;
		for (int i = 1; i <=9; i++) {
			res = n*i;
			out.printf("<li> %d * %d = %d </li>", n,i,res);
			
		}
		
		
	}

}
