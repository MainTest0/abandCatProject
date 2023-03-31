package testServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import catDTO.CatInfoDTO;
import repository.CatInfoDAO;

@WebServlet("/CatServlet")
public class CatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CatInfoDAO dao;
	public CatServlet() {
		dao = new CatInfoDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		 if ("select".equals(action)) {
			ArrayList<CatInfoDTO> resultList = dao.select();
			request.setAttribute("list", resultList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("cat/selectTest.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String correctionName = request.getParameter("correctionName");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String favorite = request.getParameter("favorite");
		String hate = request.getParameter("hate");
		String action = request.getParameter("action"); 
		int responseCount = 0; 
		
		if(action.equals("update")) {
			responseCount  = dao.update(correctionName, name, gender, age, favorite, hate);
			
		} else if(action.equals("insert")) {
			responseCount = dao.insert(name, gender, age, favorite, hate);
			
		} else if (action.equals("delete")) {
			responseCount = dao.delete(name);
		}
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		out.print("적용된 갯수 확인 : " + responseCount);
	}
}