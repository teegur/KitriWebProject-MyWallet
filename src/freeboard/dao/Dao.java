package freeboard.dao;

import java.util.ArrayList;
import java.util.List;

import model.BoardVO;



public interface Dao {
	void insert(BoardVO b);
	BoardVO select(int num);
	List selectAll();
	void update(BoardVO b);
	void delete(int num);	
	void countupdate(BoardVO b); 
	void recupdate(int num);
	
	
}
