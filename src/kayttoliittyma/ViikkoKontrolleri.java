package kayttoliittyma;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ViikonpaivaDAO;
import kohdeluokat.Aikavaraus;

/**
 * Servlet implementation class ViikkoKontrolleri
 */
@WebServlet("/ViikkoKontrolleri")
public class ViikkoKontrolleri extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		String kenenkalenteri = request.getParameter("kenenkalenteri");
		RequestDispatcher disp = request.getRequestDispatcher("kalenterit.jsp");		
		if(kenenkalenteri != null) {
			request.setAttribute("kenenkalenteri", kenenkalenteri);
			disp.forward(request, response);
		} else {
			disp.forward(request, response);
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
