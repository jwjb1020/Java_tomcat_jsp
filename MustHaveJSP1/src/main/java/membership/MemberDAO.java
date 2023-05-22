package membership;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import common.JDBCConnect1;

public class MemberDAO extends JDBCConnect1 {
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);

	}

	public MemberDAO() {

	}

	ArrayList<MemberDTO> getAllMember() {

		Connection con = getConnection();
		if (con == null)
			return null;
		Statement st = null;
		ResultSet rs = null;
		ArrayList<MemberDTO> list = null;
		try {
			st = con.createStatement();
			rs = st.executeQuery("select *from member");
			list = new ArrayList<>();
			while (rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getString(4));
				list.add(dto);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();

				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;

	}

	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		String query = "select * from member where id=? and pass =?";

		Connection con = getConnection();
		if (con == null)
			return null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();

			if (rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getString(4));

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dto;

	}

	public int insertMemberDTO(MemberDTO member) {
		
		
		
		String query = "insert into member (id,pass,name) values (?,?,?)";

		Connection con = getConnection();
		if (con == null)
			return 0;
		PreparedStatement psmt = null;
		int ret = 0;
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, member.getId());
			psmt.setString(2, member.getPass());
			psmt.setString(3, member.getName());
			ret = psmt.executeUpdate();

			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				
				if (psmt != null)
					psmt.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return ret;

	}

	public int deleteMemberDTO(String id) {
		String query = "delete from member where id = ?";

		Connection con = getConnection();
		if (con == null)
			return 0;
		PreparedStatement psmt = null;
		int ret = 0;
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, id);
			ret = psmt.executeUpdate();
			

			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				
				if (psmt != null)
					psmt.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return ret;
		
	}

}