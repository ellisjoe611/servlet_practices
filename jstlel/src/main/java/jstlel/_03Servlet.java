package jstlel;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/03")
public class _03Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<UserVO> list = new ArrayList<>();
		
		// request scope
		UserVO vo1 = new UserVO();
		vo1.setNo(10L);
		vo1.setName("조종혁1");
		list.add(vo1);
		
		// session scope
		UserVO vo2 = new UserVO();
		vo2.setNo(10L);
		vo2.setName("조종혁2");
		list.add(vo2);
		
		UserVO vo3 = new UserVO();
		vo3.setNo(10L);
		vo3.setName("조종혁3");
		list.add(vo3);		
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/views/03.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}