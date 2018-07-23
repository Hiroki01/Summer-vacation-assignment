package teacherDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import teacherDTO.TeacherQualificationDTO;

public class TeacherQualificationDAO {

	public static ArrayList<TeacherQualificationDTO> resultSearch(String key) {
		ArrayList<TeacherQualificationDTO> resultList = new ArrayList<TeacherQualificationDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT qualification.id,qualification.name,qualification.date,qualification.sid,student.name,qualification.result FROM Qualification inner join student on qualification.sid=student.id WHERE qualification.name LIKE ? AND qualification.result = ? ORDER BY date+0;";
			ps = con.prepareStatement(sql);
			ps.setString(1, "%" + key + "%");
			ps.setString(2, "合格");
			rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("qualification.id");
				String name = rs.getString("qualification.name");
				String date = rs.getString("qualification.date");
				String sname = rs.getString("student.name");
				String result = rs.getString("qualification.result");
				resultList.add(new TeacherQualificationDTO(id, name, date, sname, result));
			}
		} catch (SQLException e) {
			System.out.println("DBアクセスに失敗しました。");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("数字を指定してください。");
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
		}
		return resultList;
	}

}