package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dto.StudentDTO;

public class StudentDAO {

	public static StudentDTO Insert(int id, String name, String namek, String gender, String email, String department,
			String course,
			String school_year, String set_in, String pass) {
		StudentDTO result = null;
		Connection co = null;
		PreparedStatement ps = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "INSERT INTO Student VALUES(?,?,?,?,?,?,?,?,?)";
			ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, namek);
			ps.setString(4, gender);
			ps.setString(5, email);
			ps.setString(6, department);
			ps.setString(7, course);
			ps.setString(8, school_year);
			ps.setString(9, set_in);
			ps.setString(10, pass);

			ps.executeUpdate();
			result = new StudentDTO(id, name, namek, gender, email, department, course, school_year, set_in, pass);
		} catch (SQLException e) {
			System.out.println("DBアクセスに失敗しました。");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("数字を指定してください。");
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
		}
		return result;
	}

	public static StudentDTO search(int key) {
		StudentDTO result = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT * FROM Student WHERE id = ?;";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, key);
			rs = pstmt.executeQuery();
			rs.next();
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String namek = rs.getString("namek");
			String gender = rs.getString("gender");
			String email = rs.getString("email");
			String department = rs.getString("department");
			String course = rs.getString("course");
			String school_year = rs.getString("school_year");
			String set = rs.getString("set_in");
			String pass = rs.getString("pass");
			result = new StudentDTO(id, name, namek, gender, email, department, course, school_year, set, pass);

		} catch (SQLException e) {
			System.out.println("DBアクセスに失敗しました。");
			System.out.println("存在しないユーザです。");
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
				if (pstmt != null) {
					pstmt.close();
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
		return result;
	}

	public static StudentDTO update(int id, String name, String namek, String gender, String email, String department,
			String course, String school_year, String set_in, String pass) {
		StudentDTO result = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql1 = "UPDATE Student SET name = ? ,namek = ? ,gender = ? , email = ?,department=? ,course=?,school_year=?,set_in=?,pass=? WHERE id = ?;";
			ps = con.prepareStatement(sql1);


			ps.setString(1, name);
			ps.setString(2, namek);
			ps.setString(3, gender);
			ps.setString(4, email);
			ps.setString(5,department );
			ps.setString(6, course);
			ps.setString(7, school_year);
			ps.setString(8, set_in);
			ps.setString(9, pass);
			ps.setInt(10,id);

			ps.executeUpdate();
			result = new StudentDTO(id,name, namek, gender, email, department, course, school_year, set_in, pass);

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
		return result;
	}

}
