package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.QualificationDAO;
import dto.LoginDTO;
import dto.QualificationDTO;

/**
 * Servlet implementation class Search_qualifications
 */
@WebServlet("/Search_qualifications")
public class Search_qualifications extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search_qualifications() {
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
		LoginDTO results;

		try {
			results = (LoginDTO) s.getAttribute("uesr");
			int id = results.getId();
			ArrayList<QualificationDTO> result = QualificationDAO.result(id);
			re.setAttribute("goukaku", result);

			view = "/WEB-INF/view/searchResult.jsp";
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
