package other.yanzhengma;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logcheck
 */
public class Logcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Logcheck() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("userid");
		String userpwd = request.getParameter("userpwd");
		String usercheckcode = request.getParameter("checkcode");
		String info = "";
		HttpSession session = request.getSession();
		String servercheckcode = (String) session.getAttribute("checkCode");
		if (!servercheckcode.equalsIgnoreCase(usercheckcode)) {
			info = "验证码错误";
		} else if ("123".equals(userid) && "123".equals(userpwd)) {
			info = "登录成功";
		} else {
			info = "用户名或密码错误";
		}
		request.setAttribute("info", info);
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
