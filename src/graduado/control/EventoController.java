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
		Evento e = new Evento();
		String id_eve = request.getParameter("ideve");
		String nombre = request.getParameter("nombre");
		String ciudad = request.getParameter("ciudad");
		String lugar = request.getParameter("lugar");
		
		SimpleDateFormat parseDate = new SimpleDateFormat("dd/mm/yyyy");
		
		String fechaini = request.getParameter("fechaini");
		String fechafin = request.getParameter("fechafin");
		
		Date ini;
		Date fin;
		
		EventoDao eDao = new EventoDao();
		
		try {
			ini = (Date)parseDate.parse(fechaini);
			fin = (Date)parseDate.parse(fechafin);
			e.setId(id_eve);
			e.setNombre(nombre);
			e.setCiudad(ciudad);
			e.setLugar(lugar);
			e.setFechafin(fechafin);
			e.setFechaini(fechaini);
			eDao.insert(e);
			RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
			rd.forward(request, response);
		} catch (Exception e2) {
			// TODO: handle exception
		}
	}

}
