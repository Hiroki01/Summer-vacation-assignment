package studentServlet;

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
 * Servlet implementation class AddResult
 */
@WebServlet("/AddResult")
public class AddResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest re, HttpServletResponse response) throws ServletException, IOException {
		re.setCharacterEncoding("UTF-8");
		String view = null;
		HttpSession s = re.getSession();

		try {
			int id = Integer.parseInt(re.getParameter("id"));
			String name = re.getParameter("name");
			String namek = re.getParameter("namek");
			String gender = re.getParameter("gender");
			String email = re.getParameter("email");
			String department = re.getParameter("department");
			String course = re.getParameter("course");
			String school_year = re.getParameter("school_year");
			String set_in = re.getParameter("set_in");
			String pass = re.getParameter("pass");

			StudentDTO result = StudentDAO.Insert(id, name, namek, gender, email, department, course, school_year,
					set_in,
					pass);
			re.setAttribute("add", result);
			view = "/WEB-INF/student/addResult.jsp";
		} catch (NumberFormatException e) {
			view = "/WEB-INF/student/add.jsp";
			s.setAttribute("status", "No");
			e.getStackTrace();
			System.out.println(e);
		} catch (NullPointerException e) {
			view = "/WEB-INF/student/add.jsp";
			s.setAttribute("status", "nai");
			e.getStackTrace();
			System.out.println(e);;
		} catch (Exception e) {
			view = "/WEB-INF/student/add.jsp";
			s.setAttribute("status", "Exception");
			e.getStackTrace();
			System.out.println(e);
		} finally {
			RequestDispatcher dispatcher = re.getRequestDispatcher(view);
			dispatcher.forward(re, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
