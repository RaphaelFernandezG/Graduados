package graduado.control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.entities.Evento;
import graduado.model.EventoDao;

/**
 * Servlet implementation class EventoController
 */
@WebServlet("/EventoController")
public class EventoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventoController() {
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
		String id_eve = request.getParameter("ideve");
		String nombre = request.getParameter("nombre");
		String ciudad = request.getParameter("ciudad");
		String lugar = request.getParameter("lugar");
		String fechaini = request.getParameter("fechaini");
		String fechafin = request.getParameter("fechafin");
		
		
		Evento eve = new Evento();
		eve.setCiudad(ciudad);
		eve.setFechafin(fechafin);
		eve.setFechaini(fechaini);
		eve.setIdEve(id_eve);
		eve.setLugar(lugar);
		eve.setNombre(nombre);
		
		
		EventoDao eveDao = new EventoDao();
		eveDao.insert(eve);
		RequestDispatcher rd = request.getRequestDispatcher("eventos.jsp");
		rd.forward(request, response);
		
		
		
		
		
	}

}
