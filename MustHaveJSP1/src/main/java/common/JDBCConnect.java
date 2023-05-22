package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCConnect {
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;

	public JDBCConnect() {
		try {
			// sql 드라이버 로드
			Class.forName("com.mysql.cj.jdbc.Driver");
			// db에 연결
			// jdbc:Driver 종류://IP:포트번호/DB명
			String url = "jdbc:mysql://localhost:3306/musthave";
			String id = "musthave";
			String pwd = "tiger";
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("db연결 성공");

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (psmt != null)
				psmt.close();
			if (con != null)
				con.close();
			System.out.println("jdbc 자원해제");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
