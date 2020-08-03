package freeboard.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.ws.wsdl.writer.document.Service;

import freeboard.service.ServiceImpl;
import freeboard.service.nService;
import model.LikeVO;

/**
 * Servlet implementation class RecController
 */
@WebServlet("/RecController")
public class RecController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		
		nService service=new ServiceImpl();
		int num=Integer.parseInt(request.getParameter("sequence"));
		String id=(String)session.getAttribute("id");
		
		LikeVO like=new LikeVO(id, num, "false");
		
		service.like(id, num); //like 테이블에 id,num저장
		service.recupdate(num);
		request.setAttribute("num", like.getSequence());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("freeboard.controller/ReadController?sequence=num");
		if(dispatcher != null) {
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
