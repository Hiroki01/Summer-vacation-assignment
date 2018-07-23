package teacherServlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teacherDAO.TeacherQualificationDAO;
import teacherDTO.TeacherQualificationDTO;

/**
 * Servlet implementation class Accepted
 */
@WebServlet("/Accepted")
public class Accepted extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accepted() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest re, HttpServletResponse response) throws ServletException, IOException {
		re.setCharacterEncoding("UTF-8");
		String view = null;
		String d;
		String g;
		String c;
		HttpSession s = re.getSession();

		try {
			d = re.getParameter("department");
			g = re.getParameter("school_year");
			c = re.getParameter("set_in");
			ArrayList<TeacherQualificationDTO> result = TeacherQualificationDAO.Search(d,g,c);
			re.setAttribute("sikaku3", result);

			view = "/WEB-INF/teacher/accepted_result.jsp";
		} catch (NumberFormatException e) {
			view = "/WEB-INF/teacher/accepted_class.jsp";
			s.setAttribute("status", "No");
			e.getStackTrace();
			System.out.println(e);
		} catch (NullPointerException e) {
			view = "/WEB-INF/teacher/accepted_class.jsp";
			s.setAttribute("status", "nai");
			e.getStackTrace();
			System.out.println(e);;
		} catch (Exception e) {
			view = "/WEB-INF/teacher/accepted_class.jsp";
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
