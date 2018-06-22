package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dto.PrivateQualificationDTO;

public class PrivateQualificationDAO {

	@SuppressWarnings("resource")
	public static PrivateQualificationDTO create(int id, String name, String qu) {
		PrivateQualificationDTO result = null;
		Connection co = null;
		PreparedStatement ps = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Qualification?useSSL=false", "got", "pass");
			String sql = "CREATE TABLE ? ( id INT(9) NOT NULL,name VARCHAR(64) NOT NULL,qualification_id VAqualification_id VARCHAR(100),date VARCHAR(64) NOT NULL, PRIMARY KEY(id) ) ; ";
			ps = co.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();

			String sql2 = "INSERT INTO ? VALUES(?,?,?,?)";
			ps = co.prepareStatement(sql2);
			ps.setInt(1, id);
			ps.setInt(2, id);
			ps.setString(3, name);
			ps.setString(4, qu);
			ps.setString(5, null);

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
