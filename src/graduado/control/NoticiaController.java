package graduado.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.entities.Noticia;
import graduado.entities.Notide;
import graduado.model.NoticiaDao;

/**
 * Servlet implementation class NoticiaController
 */
@WebServlet("/NoticiaController")
public class NoticiaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticiaController() {
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
		String id = request.getParameter("ideve");
		String descripcion = request.getParameter("descri");
		String fecha = request.getParameter("fechanoti");
		String ciudad = request.getParameter("ciudad");
		String lugar = request.getParameter("lugar");
		
		
		Noticia noti = new Noticia();
		noti.setCiudad(ciudad);
		noti.setDescripcion(descripcion);
		noti.setFecha(fecha);
		noti.setId(id);
		noti.setLugar(lugar);
		
		NoticiaDao notiDao = new NoticiaDao();
		notiDao.insert(noti);
		RequestDispatcher rd = request.getRequestDispatcher("noticias.jsp");
		rd.forward(request, response);
		
		
		
		
		
		
		
		
	}

}
