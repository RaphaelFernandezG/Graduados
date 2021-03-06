package graduado.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.entities.Experiencia;
import graduado.entities.Graduado;
import graduado.model.ExperienciaDao;
import graduado.model.GraduadoDao;

/**
 * Servlet implementation class ExperienciaController
 */
@WebServlet("/ExperienciaController")
public class ExperienciaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExperienciaController() {
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
		String id = request.getParameter("idexp");
		String link = request.getParameter("video");
		String descri = request.getParameter("descri");
		String numdocum = request.getParameter("gralist");
		
		Experiencia exp = new Experiencia();
		GraduadoDao gDao = new GraduadoDao();
		Graduado g = gDao.find(numdocum);
		
		
		exp.setIdExp(id);
		exp.setLink(link);
		exp.setDescripcion(descri);
		exp.setGraduado(g);
		
		ExperienciaDao eDao = new ExperienciaDao();
		eDao.insert(exp);
		RequestDispatcher rd = request.getRequestDispatcher("experiencias.jsp");
		rd.forward(request, response);
		
		
	}

}
