package fileupload;

import java.util.List;
import java.util.Vector;

import common.JDBCConnect;

public class MyfileDAO extends JDBCConnect {
	public int inserFile(MyfileDTO dto) {

		int applyResult = 0;
		try {
			String sql = "insert into myfile (name,title,cate,ofile,sfile) values(?,?,?,?,?)";
			psmt = con.prepareStatement(sql);

			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getCate());
			psmt.setString(4, dto.getOfile());
			psmt.setString(5, dto.getSfile());
			applyResult = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return applyResult;
	}

	public List<MyfileDTO> myFileList() {
		List<MyfileDTO> fileList = new Vector<MyfileDTO>();

		String sql = "select * from myfile order by idx desc";
		try {
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				MyfileDTO dto = new MyfileDTO();
				dto.setIdx(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setCate(rs.getString(4));
				dto.setOfile(rs.getString(5));
				dto.setSfile(rs.getString(6));
				dto.setPostdate(rs.getString(7));
				fileList.add(dto);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fileList;

	}

	public static void main(String[] args) {
		MyfileDAO dao = new MyfileDAO();
		MyfileDTO dto = new MyfileDTO("a", "b", "c", "d", "e");
		// dao.inserFile(dto);
		List<MyfileDTO> arr = dao.myFileList();
		for (int i = 0; i < arr.size(); i++) {
			System.out.println(arr.get(i).toString());
		}

	}

}
