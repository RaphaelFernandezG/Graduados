package graduado.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.entities.Graduado;
import graduado.model.GraduadoDao;

/**
 * Servlet implementation class GraduadoController
 */
@WebServlet("/GraduadoController")
public class GraduadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GraduadoController() {
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
		String nombre = request.getParameter("nombre");
		String apellidos = request.getParameter("apellido");
		String fechagrad = request.getParameter("fechagra");
		String numdocum = request.getParameter("documento");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		String ciudad = request.getParameter("ciudad");
		String direccion = request.getParameter("direccion");
		
		
		
		
		
		
		
		
		
		
		
		
		String latitud = request.getParameter("latitude");
		System.out.println("la latitud es" + latitud);	
		String longitud = request.getParameter("lingitude");
		System.out.println("la longitud es " + longitud);	
		
		Graduado gra = new Graduado();
		gra.setApellidos(apellidos);
		gra.setCiudad(ciudad);
		gra.setDireccion(direccion);
		gra.setEmail(email);
		gra.setFechagrad(fechagrad);
		gra.setNombre(nombre);
		gra.setNumdocum(numdocum);
		gra.setTelefono(telefono);
		gra.setLatitud(latitud);
		gra.setLongitud(longitud);;
		
		GraduadoDao graDao = new GraduadoDao();
		graDao.insert(gra);
		RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
		rd.forward(request, response);
	}

}
