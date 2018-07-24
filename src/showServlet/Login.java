package showServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import commonDAO.LoginDAO;
import commonDTO.LoginDTO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest re, HttpServletResponse response) throws ServletException, IOException {
		re.setCharacterEncoding("UTF-8");
		String view = null;
		HttpSession s = re.getSession();
		LoginDTO result = null;

		try {
			int id = Integer.parseInt(re.getParameter("id"));
			String pass = re.getParameter("pass");
			if (id > 1000000) {
				result = LoginDAO.login(id, pass);
				if(result != null){
				view = "/WEB-INF/student/smenu.jsp";
				}else{
					view = "/WEB-INF/view/top.jsp";
				}
				// 生徒用
			} else if (100 < id && id < 1000000) {
				result = LoginDAO.logins(id, pass);
				if (result != null) {
					view = "/WEB-INF/teacher/tmenu.jsp";
					}else{
						view = "/WEB-INF/view/top.jsp";
					}
				// 教師用
			} else {
				result = LoginDAO.admin(id, pass);
				if (result != null) {
					view = "/WEB-INF/admin/amenu.jsp";
					}else{
						view = "/WEB-INF/view/top.jsp";
					}
				// 管理者用
			}
			int id1 = result.getId();
			String pass1 = result.getPass();
			s.setAttribute("id", id1);
			s.setAttribute("pass", pass1);

		} catch (NumberFormatException e) {
			view = "/WEB-INF/view/top.jsp";
			s.setAttribute("status", "No");
			e.getStackTrace();
			System.out.println(e);
		} catch (NullPointerException e) {
			view = "/WEB-INF/view/top.jsp";
			s.setAttribute("status", "nai");
			e.getStackTrace();
			System.out.println(e);
		} catch (Exception e) {
			view = "/WEB-INF/view/top.jsp";
			s.setAttribute("status", "Exception");
			e.getStackTrace();
			System.out.println(e);
		} finally {
			RequestDispatcher dispatcher = re.getRequestDispatcher(view);
			dispatcher.forward(re, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
