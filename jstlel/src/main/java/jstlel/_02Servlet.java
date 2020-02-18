package jstlel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/02")
public class _02Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// request scope
		UserVO vo1 = new UserVO();
		vo1.setNo(10L);
		vo1.setName("조종혁1");

		request.setAttribute("vo", vo1);
		
		// session scope
		UserVO vo2 = new UserVO();
		vo2.setNo(10L);
		vo2.setName("조종혁2");
		
		request.getSession(true).setAttribute("vo", vo2);

		request.getRequestDispatcher("/WEB-INF/views/02.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
