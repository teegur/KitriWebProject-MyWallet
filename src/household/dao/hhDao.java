package household.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public ArrayList<Household> select(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;		
		ResultSet rs = null;
		ArrayList<Household> result = new ArrayList<Household>(); // 결과를 저장할 어레이리스트
		
		try {			
			conn = db.getConnection();
			String sql = "select * from household where id=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id); 
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result.add(new Household(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)));
			}
			
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
		return result;
	}
	

}
