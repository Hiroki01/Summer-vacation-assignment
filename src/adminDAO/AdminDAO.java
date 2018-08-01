package adminDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import adminDTO.AdminDTO;

public class AdminDAO {

	public static AdminDTO Insert(int id, String name, String email, String pass) {
		AdminDTO result = null;
		Connection co = null;
		PreparedStatement ps = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "INSERT INTO admin VALUES(?,?,?,?)";
			ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, pass);

			ps.executeUpdate();
			result = new AdminDTO(id, name, email, pass);
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

	public static void delete(int key) {
		Connection co = null;
		PreparedStatement ps = null;
		String sql;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			if(key > 1000000) {
				sql = "DELETE FROM Student WHERE id = ?;";
			}else if(key > 100 && key < 1000000) {
				sql = "DELETE FROM Teacher WHERE id = ?;";
			}else {
				sql = "DELETE FROM Admin WHERE id = ?;";
			}
			ps = co.prepareStatement(sql);
			ps.setInt(1, key);
			ps.executeUpdate();
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
	}

	public static void update(int id, int id2) {
		Connection co = null;
		PreparedStatement ps = null;
		String sql = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");

			if(id > 1000000) {
				sql = "UPDATE Student SET id = ? WHERE id = ?";
			}else if(id > 100 && id < 1000000) {
				sql = "UPDATE Teacher SET id = ? WHERE id = ?";
			}else {
				sql = "UPDATE Admin SET id = ? WHERE id = ?";
			}

			ps = co.prepareStatement(sql);
			ps.setInt(1, id2);
			ps.setInt(2, id);
			ps.executeUpdate();
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
	}
}
