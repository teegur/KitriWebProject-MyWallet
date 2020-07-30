package reply.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Reply;
import reply.dao.Dao;

/**
 * Servlet implementation class ListController
 */
@WebServlet("/ListController")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		Dao dao = new Dao();
		int boardseq = 1;
		ArrayList<Reply> temp = dao.selectAll(boardseq);
		ArrayList<Reply> list = new ArrayList<Reply>();
		int pagenum = 1;
		
		if(request.getParameter("pagenum") != null ) {
			pagenum = Integer.parseInt(request.getParameter("pagenum"));
		}
		
		int page = Integer.parseInt((String)request.getParameter("colcnt")) * (pagenum - 1);
		int last = page + 10; 
		if(page + 10 > temp.size()) {
			last = temp.size();
		}
		
		for(int i = page; i < last; i++ ) {
			list.add(temp.get(i));
		}		
		
		
		request.setAttribute("list", list);
		int size = ( ( temp.size() - 1 ) / 10 )+ 1;
		request.setAttribute("size", size);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
