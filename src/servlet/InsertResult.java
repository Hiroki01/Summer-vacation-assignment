package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.QuaDAO;
import dao.QualificationDAO;
import dto.LoginDTO;
import dto.QuaDTO;
import dto.QualificationDTO;

/**
 * Servlet implementation class InsertResult
 */
@WebServlet("/InsertResult")
public class InsertResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertResult() {
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
		LoginDTO results = null;

		try {
			System.out.println("確認作業中");
			results = (LoginDTO) s.getAttribute("uesr");

			System.out.println(results.getPass());
			String name = re.getParameter("juken");
			System.out.println(name);
			QuaDTO res = QuaDAO.search(name);
			System.out.println(res.getId());
			int id = res.getId();
			String year = re.getParameter("year");
			String month = re.getParameter("month");
			String day = re.getParameter("day");
			String date = year + "年" + month + "月" + day + "日";
			System.out.println(date);
			String result = "未受験";

			int sid = results.getId();

			QualificationDTO resa = QualificationDAO.Insert(id, name, date, sid, result);
			System.out.println(resa.getDate());
			System.out.println(resa.getId());
			System.out.println(resa.getName());
			System.out.println(resa.getResult());
			System.out.println(resa.getSid());
			re.setAttribute("in", resa);
			view = "/WEB-INF/view/insertResult.jsp";
		} catch (NumberFormatException e) {
			view = "/WEB-INF/view/insert.jsp";
			s.setAttribute("status", "No");
			e.getStackTrace();
		} catch (NullPointerException e) {
			view = "/WEB-INF/view/insert.jsp";
			s.setAttribute("status", "Null");
			e.getStackTrace();
		} catch (Exception e) {
			view = "/WEB-INF/view/insert.jsp";
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
