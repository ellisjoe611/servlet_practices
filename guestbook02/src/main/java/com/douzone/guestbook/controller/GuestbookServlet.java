package com.douzone.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.GuestbookDAO;
import com.douzone.guestbook.vo.GuestbookVO;

public class GuestbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");	// POST & GET을 위한 UTF-8 포멧 설정

		String action = request.getParameter("a");
		if ("insert".equals(action)) {

			String name = request.getParameter("name");
			String pw = request.getParameter("pw");
			String contents = request.getParameter("contents");

			GuestbookVO vo = new GuestbookVO();
			vo.setName(name);
			vo.setPw(pw);
			vo.setContents(contents);

			if (new GuestbookDAO().insert(vo) == true) {
				response.sendRedirect(request.getContextPath() + "/gb");
			}
		} else if ("delete".equals(action)) {
			GuestbookVO vo = new GuestbookVO();
			vo.setNo(Long.valueOf(request.getParameter("no")));
			vo.setPw(request.getParameter("pw"));

			if (new GuestbookDAO().delete(vo) == true) {
				response.sendRedirect(request.getContextPath() + "/gb");
			}
		} else if ("deleteform".equals(action)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");

			// view_no, no 는 이미 request parameter로서 포함되어 있으므로 그냥 넘기기만 하면 된다!
			dispatcher.forward(request, response);
		} else {
			// list (default) 처리
			List<GuestbookVO> list = new GuestbookDAO().findall();
			request.setAttribute("list", list);
			
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
