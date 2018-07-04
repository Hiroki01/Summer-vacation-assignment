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
 * Servlet implementation class Profile
 */
@WebServlet("/Profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
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
		StudentDTO result;

		try {
			id = (int) s.getAttribute("id");
			result = StudentDAO.search(id);
			System.out.println(result.getId());
			System.out.println(result.getGender());
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
