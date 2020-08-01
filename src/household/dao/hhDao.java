package household.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.hhVO;

public class hhDao {
	
	private DBConnect db;
	public hhDao(){
		db = DBConnect.getInstance();
	}
	
	public void insert(hhVO HH) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;		
		ResultSet rs = null;
		
		try {			
			conn = db.getConnection();
			String sql = "insert into household values(hhkey.nextval, ?, ?, ?, ?, ?, ?)";
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
	
	public ArrayList<hhVO> select(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;		
		ResultSet rs = null;
		ArrayList<hhVO> result = new ArrayList<hhVO>(); // 결과를 저장할 어레이리스트
		
		try {			
			conn = db.getConnection();
			String sql = "select * from household where id=? order by w_date desc";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id); 
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result.add(new hhVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7)));
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
