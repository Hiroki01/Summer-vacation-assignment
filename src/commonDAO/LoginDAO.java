package commonDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import commonDTO.LoginDTO;

public class LoginDAO {

	public static LoginDTO login(int id, String pass) {
		LoginDTO result = null;
		Connection co = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT * FROM Student WHERE id = ? AND pass = ?;";
			ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			rs.next();
			int id1 = rs.getInt("id");
			String pw = rs.getString("pass");
			result = new LoginDTO(id1, pw);

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
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if (co != null) {
					co.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
		}
		return result;
	}

	public static LoginDTO logins(int id, String pass) {
		LoginDTO result = null;
		Connection co = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT * FROM Teacher WHERE id = ? AND pass = ?;";
			ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			rs.next();
			int id1 = rs.getInt("id");
			String pw = rs.getString("pass");
			result = new LoginDTO(id1, pw);

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
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if (co != null) {
					co.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
		}
		return result;
	}

	public static LoginDTO admin(int id, String pass) {
		LoginDTO result = null;
		Connection co = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT * FROM Admin WHERE id = ? AND pass = ?;";
			ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			rs.next();
			int id1 = rs.getInt("id");
			String pw = rs.getString("pass");
			result = new LoginDTO(id1, pw);

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
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
			try {
				if (co != null) {
					co.close();
				}
			} catch (SQLException e) {
				System.out.println("DB切断時にエラーが発生しました。");
				e.printStackTrace();
			}
		}
		return result;
	}
}
