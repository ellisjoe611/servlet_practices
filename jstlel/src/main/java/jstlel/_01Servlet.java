package jstlel;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/01")
public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int ival = 10;
		long lval = 10;
		float fval = 1.4f;
		boolean bval = true;
		String sVal = "가\n나\n다\n";

		UserVO vo = new UserVO();
		vo.setNo(10L);
		vo.setName("조종혁");
		
		Map<String, Object> map = new HashMap<>();
		map.put("ival", ival);
		map.put("lval", lval);
		map.put("fval", fval);
		map.put("bval", bval);
		map.put("sVal", sVal);

		request.setAttribute("map", map);
		request.setAttribute("vo", vo);

		request.getRequestDispatcher("/WEB-INF/views/01.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
