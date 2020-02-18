package com.douzone.emaillist.dao.test;

import java.util.List;

import com.douzone.emaillist.dao.EmaillistDAO;
import com.douzone.emaillist.vo.EmaillistVO;

public class EmaillistDAOTest {

	public static void main(String[] args) {
//		insetTest();
		findAllTest();
	}

	private static void findAllTest() {
		List<EmaillistVO> list = new EmaillistDAO().findAll();
		for (EmaillistVO vo : list) {
			System.out.println(vo);
		}
		System.out.println();
	}

	private static void insetTest() {
		EmaillistVO vo = new EmaillistVO();
		vo.setFirstName("마");
		vo.setLastName("이콜");
		vo.setEmail("michol@gmail.com");

		System.out.println(new EmaillistDAO().insert(vo) == true ? "회원 추가 성공!" : "회원 추가 실패...");
		findAllTest();
	}

}
