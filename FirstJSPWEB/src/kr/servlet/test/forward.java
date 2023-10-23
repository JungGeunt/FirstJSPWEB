package kr.servlet.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/forward")
public class forward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public forward() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println(id);
		
		//request에 1회성으로 사용하기 위해 값을 강제 저장할 수 있음.
		//setAttribute("변수명" , 값);
		request.setAttribute("name", "홍길동"); //1. 강제 저장(setAttribute())
		
		//URL정보를 리퀘스트에 넣었기떄문에 sendRedireck를 사용 할 수없음.
		//response로 데이터를 전달
		
		//포워드 처리.
		RequestDispatcher dp = request.getRequestDispatcher("actiontag/forward_ex04.jsp");
		dp.forward(request, response); // 자바에서 forward 하는 방법(**)
		
	}

}
