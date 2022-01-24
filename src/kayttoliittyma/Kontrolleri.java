package kayttoliittyma;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Kontrolleri
 */
@WebServlet("/Kontrolleri")
public class Kontrolleri extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Kontrolleri() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String action = request.getParameter("action");
			
			
			if(action != null && action.equals("Kirjaudu")) {
				System.out.println("SE KIRJAUTU");
				if(request.getParameter("kayttajatunnus").equals("jusju")   &&
					request.getParameter("salasana").equals("salasana")) {
					RequestDispatcher disp = request.getRequestDispatcher("viikko.jsp?kenenkalenteri=Jukka");
					disp.forward(request, response);
				}
					
			} else {
				System.out.println("TÄHÄN EI PITÄNY");
			}
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
