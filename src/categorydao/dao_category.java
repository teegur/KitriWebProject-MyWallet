package categorydao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.categoryVO;
import model.hhVO;

public class dao_category {
	private DBConnect db;
	public dao_category(){
		db = DBConnect.getInstance();
	}
	
	public ArrayList<categoryVO> category(String id, String date) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;		
		ResultSet rs = null;
		ArrayList<categoryVO> result =new ArrayList<categoryVO>();
		try {			
			conn = db.getConnection();
			String sql = "select category, w_Date, sum(price) from household where w_Date like and id=? "
					+ "group by category, w_Date";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, date); 
			pstmt.setString(2, id); 
			
					
			pstmt.executeQuery(sql);
			while(rs.next()) {
				result.add(new categoryVO(rs.getString("category"), rs.getString("substr(w_date,1,7)"),rs.getInt("sum(price)")));
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
		}		return result;
	}
}
