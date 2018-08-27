package teacherServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Student_number
 */
@WebServlet("/Student_number")
public class Student_number extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Student_number() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s = request.getSession(true);
		s.removeAttribute("csv");
		s.removeAttribute("csv-1");
		s.removeAttribute("csv2");
		s.removeAttribute("csv-2");
		s.removeAttribute("csv3");
		s.removeAttribute("csv-3-1");
		s.removeAttribute("csv-3-2");
		s.removeAttribute("csv-3-3");
		s.removeAttribute("csv4");
		s.removeAttribute("csv-4-1");
		s.removeAttribute("csv-4-2");
		s.removeAttribute("csv-4-3");
		s.removeAttribute("csv5");
		s.removeAttribute("csv-5");
		String view = "/WEB-INF/teacher/student_number.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
