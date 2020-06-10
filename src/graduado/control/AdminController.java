package graduado.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.entities.Evento;
import graduado.entities.Eventoprin;
import graduado.entities.Noticia;
import graduado.entities.Notide;
import graduado.model.EventoDao;
import graduado.model.EventoprinDao;
import graduado.model.NoticiaDao;
import graduado.model.NotidestDao;

/**
 * Servlet implementation class AdminController
 */
@WebServlet("/AdminController")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Eventoprin eprin = new Eventoprin();
		
		String descripcion = request.getParameter("descri_eveprin");
		String id_eveprin = request.getParameter("posevenprin");
		String id_eve = request.getParameter("evenombre");
		
		EventoDao eDao = new EventoDao();
		Evento e = eDao.find(id_eve);
		
		eprin.setDescripcion(descripcion);
		eprin.setId(id_eveprin);
		eprin.setEvento(e);
		
		EventoprinDao eprinDao = new EventoprinDao();
		eprinDao.update(eprin);
		
		RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
		rd.forward(request, response);
	}

}
