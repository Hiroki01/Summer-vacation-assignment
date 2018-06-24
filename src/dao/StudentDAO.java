package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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

}
