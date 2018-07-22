package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.StudentDAO;
import dto.StudentDTO;

/**
 * Servlet implementation class ProfileResult
 */
@WebServlet("/ProfileResult")
public class ProfileResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileResult() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest re, HttpServletResponse response) throws ServletException, IOException {
		re.setCharacterEncoding("UTF-8");
		String view = null;
		StudentDTO result = null;
		HttpSession s = re.getSession();

		try {
			int id = (int) s.getAttribute("id");
			String name = re.getParameter("name");
			String namek = re.getParameter("namek");
			String gender = re.getParameter("gender");
			String email = re.getParameter("email");
			String department = re.getParameter("department");
			String course = re.getParameter("course");
			String school_year = re.getParameter("school_year");
			String set_in = re.getParameter("set_in");
			String pass1 = re.getParameter("pass1");
			String pass2 = re.getParameter("pass2");
			String pass3 = re.getParameter("pass3");
			if (pass2 == null || pass2.length() == 0) {
				result = StudentDAO.update(id,name, namek, gender, email, department, course, school_year,
						set_in, pass1);
			} else if (pass2 == pass3 || pass2.equals(pass3)) {
				result = StudentDAO.update(id,name, namek, gender, email, department, course, school_year,
						set_in, pass2);
			}
			re.setAttribute("pro", result);
			view = "/WEB-INF/view/profile.jsp";
		} catch (NumberFormatException e) {
			view = "/WEB-INF/view/smenu.jsp";
			s.setAttribute("status", "No");
			e.getStackTrace();
		} catch (NullPointerException e) {
			view = "/WEB-INF/view/smenu.jsp";
			s.setAttribute("status", "Null");
			e.getStackTrace();
		} catch (Exception e) {
			view = "/WEB-INF/view/smenu.jsp";
			s.setAttribute("status", "Exception");
			e.getStackTrace();
		} finally {
			RequestDispatcher dispatcher = re.getRequestDispatcher(view);
			dispatcher.forward(re, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
