package graduado.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.entities.Graddestacado;
import graduado.entities.Graduado;
import graduado.model.GraddestacadoDao;
import graduado.model.GraduadoDao;

/**
 * Servlet implementation class AdGraduadoController
 */
@WebServlet("/AdGraduadoController")
public class AdGraduadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdGraduadoController() {
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
		Graddestacado gd = new Graddestacado();
		
		String posgraddest = request.getParameter("posgraddest");
		String numdocum = request.getParameter("gradnombre");
		String titulo = request.getParameter("title");
		String descripcion = request.getParameter("descr");
		
		GraduadoDao gDao = new GraduadoDao();
		Graduado g = gDao.find(numdocum);
		
		gd.setPosgraddest(posgraddest);
		gd.setTitulo(titulo);
		gd.setDescripcion(descripcion);
		gd.setGraduado(g);
		
		
		
		GraddestacadoDao gdDao = new GraddestacadoDao();
		gdDao.update(gd);
		
		RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
		rd.forward(request, response);
		
		
		
		
		
		
	}

}
