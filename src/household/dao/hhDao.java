package household.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.DBConnect;
import model.Household;

public class hhDao {
	
	private DBConnect db;
	public hhDao(){
		db = DBConnect.getInstance();
	}
	
	public void insert(Household HH) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;		
		ResultSet rs = null;
		
		try {			
			conn = db.getConnection();
			String sql = "insert into household values(?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, HH.getId()); 
			pstmt.setString(2, HH.getDate());
			pstmt.setString(3, HH.getCategory());
			pstmt.setString(4, HH.getContent());
			pstmt.setInt(5, HH.getPrice());
			pstmt.setInt(6, HH.getType());
					
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
	}// insert method End	
	

}
