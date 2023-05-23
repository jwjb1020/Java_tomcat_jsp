package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;

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
	// 두 번째 생성자
    public JDBCConnect(String driver, String url, String id, String pwd) {
        try {
            // JDBC 드라이버 로드
            Class.forName(driver);  

            // DB에 연결
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("DB 연결 성공(인수 생성자 1)");
        }
        catch (Exception e) {            
            e.printStackTrace();
        }
    }
 // 세 번째 생성자
    public JDBCConnect(ServletContext app) {
        try {
            // JDBC 드라이버 로드
            String driver = app.getInitParameter("MySQLDriver"); 
            Class.forName(driver); 

            // DB에 연결
            String url = app.getInitParameter("MySQLURL"); 
            String id = app.getInitParameter("MySQLId");
            String pwd = app.getInitParameter("MySQLPwd");
            con = DriverManager.getConnection(url, id, pwd);

            System.out.println("DB 연결 성공(인수 생성자 2)"); 
        }
        catch (Exception e) {
            e.printStackTrace();
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
