package studentServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import studentDAO.StudentQualificationDAO;
import studentDTO.StudentQualificationDTO;

/**
 * Servlet implementation class UpdateResult
 */
@WebServlet("/UpdateResult")
public class UpdateResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateResult() {
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
		int id;
		String result;

		try {
			result = re.getParameter("kekka");

			id = Integer.parseInt(re.getParameter("uid"));
			StudentQualificationDAO.update(id, result);
			StudentQualificationDTO resu = StudentQualificationDAO.searchResult(id);
			re.setAttribute("kousin", resu);

			view = "/WEB-INF/student/updateResult.jsp";
		} catch (NumberFormatException e) {
			view = "/WEB-INF/student/smenu.jsp";
			s.setAttribute("status", "No");
			e.getStackTrace();
			System.out.println(e);
		} catch (NullPointerException e) {
			view = "/WEB-INF/student/smenu.jsp";
			s.setAttribute("status", "nai");
			e.getStackTrace();
			System.out.println(e);;
		} catch (Exception e) {
			view = "/WEB-INF/student/smenu.jsp";
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
