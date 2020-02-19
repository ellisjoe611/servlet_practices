package com.douzone.guestbook.dao.test;

import java.util.List;

import com.douzone.guestbook.dao.GuestbookDAO;
import com.douzone.guestbook.vo.GuestbookVO;

public class GuestbookDAOTest {

	public static void main(String[] args) {
//		countTest();
//		selectTest();
		insertTest("aa", "나 왔음", "aaaa");
		insertTest("bb", "나 왔음", "bbbb");
		insertTest("cc", "나 왔음", "cccc");
		insertTest("dd", "나 왔음", "dddd");
		deleteTest(1, "aaaa");
		insertTest("ee", "나 왔음", "eeee");
	}

	private static void deleteTest(int no, String pw) {
		GuestbookVO vo = new GuestbookVO();
		vo.setNo(Integer.toUnsignedLong(no));
		vo.setPw(pw);

		System.out.println(new GuestbookDAO().delete(vo) == true ? no + " 번째의 comment 삭제 성공!" : "comment 삭제 실패...");
		selectTest();
	}

	private static void insertTest(String name, String contents, String pw) {
		GuestbookVO vo = new GuestbookVO();
		vo.setName(name);
		vo.setContents(contents);
		vo.setPw(pw);

		System.out.println(new GuestbookDAO().insert(vo) == true ? name + " 님의 comment 추가 성공!" : "comment 추가 실패...");
		selectTest();
	}

	private static void selectTest() {
		List<GuestbookVO> list = new GuestbookDAO().findall();
		for (GuestbookVO vo : list) {
			System.out.println(vo);
		}

	}

}
