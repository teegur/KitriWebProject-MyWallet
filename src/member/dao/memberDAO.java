package member.dao;

import java.util.ArrayList;

import model.memberVO;

public interface memberDAO {
	void insert(memberVO m);
	   
	memberVO select(String id);
	   
	void update(memberVO m);
	   
	void delete(String id);
	   
	void update_status(String s, String id);
	   
	ArrayList<memberVO> getAll();
	
	boolean select_attendance(String id, String date);
	
	void check_attendance(String id, String date);
	
	void update_pwd(String email, String pw);
	
}
