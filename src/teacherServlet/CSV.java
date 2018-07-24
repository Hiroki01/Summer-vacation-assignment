package teacherServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import teacherDAO.TeacherQualificationDAO;
import teacherDTO.TeacherQualificationDTO;

/**
 * Servlet implementation class CSV
 */
@WebServlet("/CSV")
public class CSV extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CSV() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// クッキーを設定
		PrintWriter writer = null;
		HttpSession s = request.getSession();
		try {
			Cookie cookie = new Cookie("XXX", "1");
			response.addCookie(cookie);

			response.setContentType("text/csv;charset=UTF8");
			String fileName = new String("	sikaku.csv".getBytes("ISO-8859-1"), "UTF-8");

			response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
			writer = response.getWriter();
			if (null != s.getAttribute("csv")) {
				String name = (String) s.getAttribute("csv-1");
				ArrayList<TeacherQualificationDTO> result = TeacherQualificationDAO.resultSearch(name);
				for (TeacherQualificationDTO anko : result) {
					writer.write(anko.getName() + "," + anko.getSname() + "," + anko.getDate() + "," +  anko.getResult() + ",\n");
				}
				s.invalidate();
			} else if (null != s.getAttribute("csv2")) {
				String name = (String) s.getAttribute("csv-2");
				ArrayList<TeacherQualificationDTO> result = TeacherQualificationDAO.resultSearch2(name);
				for (TeacherQualificationDTO anko : result) {
					writer.write(anko.getName() + "," + anko.getSname() + "," + anko.getDate()+ "," +  anko.getResult() + ",\n");
				}
				s.invalidate();
			} else if (null != s.getAttribute("csv3")) {
				String d = (String) s.getAttribute("csv-3-1");
				String g = (String) s.getAttribute("csv-3-2");
				String c = (String) s.getAttribute("csv-3-3");
				ArrayList<TeacherQualificationDTO> result = TeacherQualificationDAO.Search(d,g,c);
				for (TeacherQualificationDTO anko : result) {
					writer.write(anko.getName() + "," + anko.getSname() + "," + anko.getDate()+ "," +  anko.getResult() + ",\n");
				}
				s.invalidate();
			} else if (null != s.getAttribute("csv4")) {
				String d = (String) s.getAttribute("csv-4-1");
				String g = (String) s.getAttribute("csv-4-2");
				String c = (String) s.getAttribute("csv-4-3");
				ArrayList<TeacherQualificationDTO> result = TeacherQualificationDAO.Searchs(d,g,c);
				for (TeacherQualificationDTO anko : result) {
					writer.write(anko.getName() + "," + anko.getSname() + "," + anko.getDate()+ "," +  anko.getResult() + ",\n");
				}
				s.invalidate();
			} else if (null != s.getAttribute("csv5")) {
				int id = (int) s.getAttribute("csv-5");
				ArrayList<TeacherQualificationDTO> result = TeacherQualificationDAO.search(id);
				for (TeacherQualificationDTO anko : result) {
					writer.write(anko.getName() + "," + anko.getSname() + "," + anko.getDate()+ "," +  anko.getResult() + ",\n");
				}
				s.invalidate();
			} else {
				System.out.println("なんてこった");
				System.out.println(System.getProperty("file.encoding"));
			}
		} catch (IOException ioe) {
			ioe.printStackTrace();
		} finally {
			writer.close();
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
