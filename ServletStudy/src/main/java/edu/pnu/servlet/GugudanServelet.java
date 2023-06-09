package edu.pnu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/gugudan1")
public class GugudanServelet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		String type = req.getParameter("type");
		String snum = req.getParameter("num");
		int num = 2;
		int res = 0;
		if(snum != null) num = Integer.parseInt(snum);

		try (PrintWriter out = resp.getWriter();) {
			out.print("<input type = \"number\" id=\"numInput\"/> <button onclick=\"changeURL()\"> 출력 </button>");
			
			if (type == null || type.equals("list")) {
				
				System.out.println("1");
				out.printf("<h1>%d단입니다</h1>", num);
				out.println("<ul>");
				
				for (int i = 1; i <= 9; i++) {
					res = num * i;
					out.printf("<li> %d * %d = %d </li>", num, i, res);

				}
				out.println("</table>");
			} else {
				out.println("<table border = \"1\" style = \"width:200px; text-align:center;\">");
				out.println("<tr><td>" + num + "단입니다.</td></tr>");
				for (int i = 1; i <= 9; i++) {
					res = num * i;
					out.printf("<tr><td> %d * %d = %d </td></tr>\n", num, i, res);

				}
				out.println("</ul>");

			}
			out.println("<script>");
			out.println("function changeURL() {");
			out.println("  let num = document.getElementById('numInput').value;");
			out.println("  let currentURL = window.location.href;");
			out.println("  let newURL = currentURL.split('?')[0] + '?num=' + num;");
			out.println("  window.location.href = newURL;");
			out.println("}");
			out.println("</script>");

			out.println();
			out.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}
