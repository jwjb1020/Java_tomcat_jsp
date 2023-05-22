package membership;

import java.util.ArrayList;

public class MemberDAOTest {
	public static void showAllmember(ArrayList<MemberDTO> list) {
		for (MemberDTO m : list) {
			System.out.println(m);
		}
	}

	private static MemberDAO memberDAO = new MemberDAO();

	public static void main(String[] args) {
		MemberDTO memberDTO = memberDAO.getMemberDTO("test1", "1111");
		System.out.println(memberDTO);

		ArrayList<MemberDTO> list = memberDAO.getAllMember();
//		for (MemberDTO m : list) {
//			System.out.println(m);
//		}

//		MemberDTO mdto = new MemberDTO();
//		mdto.setId("jo");
//		mdto.setPass("3333");
//		mdto.setName("babo");
//		memberDAO.insertMemberDTO(mdto);
		showAllmember(list);
		memberDAO.deleteMemberDTO("jo");
		

	}

}
