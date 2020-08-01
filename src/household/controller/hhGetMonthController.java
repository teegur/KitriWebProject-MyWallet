package household.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import household.dao.hhDao;
import model.hhVO;

/**
 * Servlet implementation class hhGetMonthController
 */
@WebServlet("/hhGetMonthController")
public class hhGetMonthController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public hhGetMonthController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		ArrayList<hhVO> h = new ArrayList<hhVO>();		
		HttpSession session = request.getSession();		
		hhDao dao = new hhDao();
		
		h = dao.select((String) session.getAttribute("id")); // 자신의 아이디에 대한 가계부만 확인
				
		ArrayList<hhVO> m = new ArrayList<hhVO>();
		if(h.size() != 0) {
			m.add(h.get(0));
		}
		
		int i = 0;
		for(hhVO one : h) {
			if(one.getDate().substring(0, 7) == m.get(i).getDate().substring(0, 7)) {
				m.get(i).setPrice(m.get(i).getPrice() + one.getPrice());
			}
			else {
				m.add(one);
				i++;
			}
		}
		
		request.setAttribute("m", m);		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/household/HouseholdMonthView.jsp");
		
		if (dispatcher != null) {
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
