package teacherServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// クッキーを設定
				Cookie cookie = new Cookie("XXX", "1");
				response.addCookie(cookie);

				response.setContentType("text/csv;charset=UTF8");
				String fileName = new String("サンプル.csv".getBytes("Shift_JIS"), "ISO-8859-1");

				response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
				PrintWriter writer = response.getWriter();
				writer.write("abc,def,123\r\n");
				writer.write("あいう,感じ,0.123\r\n");
				writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
