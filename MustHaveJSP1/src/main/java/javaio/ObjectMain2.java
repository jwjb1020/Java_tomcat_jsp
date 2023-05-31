package javaio;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;

import membership.MemberDTO;

public class ObjectMain2 {

	public void serialize(List<MemberDTO> list, String fileName) throws IOException {
		try (FileOutputStream fos = new FileOutputStream(fileName);
				ObjectOutputStream oos = new ObjectOutputStream(fos);) {

			oos.writeObject(obj);
		}
	}

	public MemberDTO deserialize(String fileName) throws IOException, ClassNotFoundException {
		MemberDTO m = null;
		try (FileInputStream fis = new FileInputStream(fileName); ObjectInputStream ois = new ObjectInputStream(fis);) {

			m = (MemberDTO) ois.readObject();
		}
		return m;
	}
	public List<MemberDTO> deserialize1(String fileName) throws IOException, ClassNotFoundException {
		Object m = null;
		List<MemberDTO> list = new ArrayList<>();
		try (FileInputStream fis = new FileInputStream(fileName); ObjectInputStream ois = new ObjectInputStream(fis);) {

//			while((m = (MemberDTO) ois.readObject()) != null) {
//				list.add((MemberDTO)m);
//			};
			for (int i = 0; i < 3; i++) {
				m = ois.readObject();
				list.add((MemberDTO)m);
				
			}
		}
		return list;
	}

	public static void main(String[] args) throws Exception {

		ObjectMain2 om = new ObjectMain2();
		
		List<MemberDTO> list = new ArrayList<>();
		list.add(new MemberDTO("100", "홍길동", "1000", "2023.05.31"));
		list.add(new MemberDTO("10", "홍길", "100", "2023.05.31"));
		list.add(new MemberDTO("100", "홍길동", "1000", "2023.05.31"));
		list.add(new MemberDTO("100", "홍길동", "1000", "2023.05.31"));
		om.serialize(new MemberDTO(list, "testObjects.dat");

		om.deserialize1("testObjects.dat");
		System.out.println(m);
	}
}
