package studentDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import studentDTO.StudentQualificationDTO;

public class StudentQualificationDAO {

	public static ArrayList<StudentQualificationDTO> searchid(int key) {
		ArrayList<StudentQualificationDTO> resultList = new ArrayList<StudentQualificationDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT * FROM Qualification WHERE sid = ? ORDER BY date+0;";
			ps = con.prepareStatement(sql);
			ps.setInt(1, key);
			rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String date = rs.getString("date");
				int sid = rs.getInt("sid");
				String result = rs.getString("result");
				resultList.add(new StudentQualificationDTO(id, name, date, sid, result));
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

	public static ArrayList<StudentQualificationDTO> result(int key) {
		ArrayList<StudentQualificationDTO> resultList = new ArrayList<StudentQualificationDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT * FROM Qualification WHERE sid = ? AND result = ? ORDER BY date+0;";
			ps = con.prepareStatement(sql);
			ps.setInt(1, key);
			ps.setString(2, "合格");
			rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String date = rs.getString("date");
				int sid = rs.getInt("sid");
				String result = rs.getString("result");
				resultList.add(new StudentQualificationDTO(id, name, date, sid, result));
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

	public static StudentQualificationDTO Insert(int id, String name, String date, int sid, String result) {
		StudentQualificationDTO results = null;
		Connection co = null;
		PreparedStatement ps = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "INSERT INTO Qualification(name,date,sid,result) VALUES(?,?,?,?)";
			ps = co.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, date);
			ps.setInt(3, sid);
			ps.setString(4, result);

			ps.executeUpdate();
			results = new StudentQualificationDTO(id, name, date, sid, result);
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
		return results;
	}

	public static ArrayList<StudentQualificationDTO> No(int key) {
		ArrayList<StudentQualificationDTO> resultList = new ArrayList<StudentQualificationDTO>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT * FROM Qualification WHERE sid = ? AND result = ? ORDER BY date+0;";
			ps = con.prepareStatement(sql);
			ps.setInt(1, key);
			ps.setString(2, "未受験");
			rs = ps.executeQuery();
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String date = rs.getString("date");
				int sid = rs.getInt("sid");
				String result = rs.getString("result");
				resultList.add(new StudentQualificationDTO(id, name, date, sid, result));
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

	public static StudentQualificationDTO update(int key, String result) {
		StudentQualificationDTO results = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");

			Class.forName("com.mysql.jdbc.Driver");
			String sql1 = "UPDATE Qualification SET result = ?  WHERE id = ?;";
			ps = con.prepareStatement(sql1);

			ps.setString(1, result);
			ps.setInt(2, key);

			ps.executeUpdate();

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
		return results;
	}

	public static StudentQualificationDTO searchResult(int key) {
		StudentQualificationDTO results = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "SELECT * FROM Qualification WHERE id = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, key);
			rs = ps.executeQuery();
			rs.next();
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String date = rs.getString("date");
			int sid = rs.getInt("sid");
			String result = rs.getString("result");
			results = new StudentQualificationDTO(id, name, date, sid, result);
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
		return results;
	}
}
