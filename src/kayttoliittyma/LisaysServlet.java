package kayttoliittyma;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ViikonpaivaDAO;

/**
 * Servlet implementation class LisaysServlet
 */
@WebServlet("/LisaysServlet")
public class LisaysServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LisaysServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("JUKKAHELLO");
		ViikonpaivaDAO dao = new ViikonpaivaDAO();
		String aloitusaika = request.getParameter("aloitusaika");
		
		String lopetusaika = request.getParameter("lopetusaika");
		
		String sijainti = request.getParameter("sijainti");

		String kayttaja = request.getParameter("kayttaja");
		
		System.out.println(aloitusaika);
		System.out.println(lopetusaika);
		System.out.println(sijainti);
		System.out.println(kayttaja);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
