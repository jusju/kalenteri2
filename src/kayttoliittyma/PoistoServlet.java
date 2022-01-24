package kayttoliittyma;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ViikonpaivaDAO;
import kohdeluokat.Aikavaraus;

/**
 * Servlet implementation class PoistoServlet
 */
@WebServlet("/PoistoServlet")
public class PoistoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PoistoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("JUKKADELETE");
		ViikonpaivaDAO dao = new ViikonpaivaDAO();

		String id = request.getParameter("id");
		System.out.println(id);

		dao.poistaAikavaraus(id);

		
		RequestDispatcher disp = request.getRequestDispatcher("viikko.jsp?kenenkalenteri=Jukka");

		disp.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
