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

	public static ArrayList<TeacherQualificationDTO> resultSearch2(String key) {
		ArrayList<TeacherQualificationDTO> resultList = new ArrayList<TeacherQualificationDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT qualification.id,qualification.name,qualification.date,qualification.sid,student.name,qualification.result FROM Qualification inner join student on qualification.sid=student.id WHERE qualification.name LIKE ? ORDER BY date+0;";
			ps = con.prepareStatement(sql);
			ps.setString(1, "%" + key + "%");
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

	public static ArrayList<TeacherQualificationDTO> Search(String d, String g, String c) {
		ArrayList<TeacherQualificationDTO> resultList = new ArrayList<TeacherQualificationDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "select qualification.id ,qualification.name,qualification.date,student.id,student.name,student.department,student.school_year,student.set_in,qualification.result From qualification inner join student on qualification.sid=student.id where school_year = ? and set_in = ? and department = ? and qualification.result = ? ORDER BY date+0;;";
			ps = con.prepareStatement(sql);
			ps.setString(1, g);
			ps.setString(2, c);
			ps.setString(3, d);
			ps.setString(4, "合格c");
			rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("qualification.id");
				String name = rs.getString("qualification.name");
				String date = rs.getString("qualification.date");
				String sname = rs.getString("student.name");
				String depart = rs.getString("department");
				String school = rs.getString("school_year");
				String set = rs.getString("set_in");
				String result = rs.getString("qualification.result");
				resultList.add(new TeacherQualificationDTO(id, name, date, sname, depart,school,set,result));
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

	public static ArrayList<TeacherQualificationDTO> Searchs(String d, String g, String c) {
		ArrayList<TeacherQualificationDTO> resultList = new ArrayList<TeacherQualificationDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "select qualification.id ,qualification.name,qualification.date,student.id,student.name,student.department,student.school_year,student.set_in,qualification.result From qualification inner join student on qualification.sid=student.id where school_year = ? and set_in = ? and department = ? ORDER BY date+0;;";
			ps = con.prepareStatement(sql);
			ps.setString(1, g);
			ps.setString(2, c);
			ps.setString(3, d);
			rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("qualification.id");
				String name = rs.getString("qualification.name");
				String date = rs.getString("qualification.date");
				String sname = rs.getString("student.name");
				String depart = rs.getString("department");
				String school = rs.getString("school_year");
				String set = rs.getString("set_in");
				String result = rs.getString("qualification.result");
				resultList.add(new TeacherQualificationDTO(id, name, date, sname, depart,school,set,result));
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
