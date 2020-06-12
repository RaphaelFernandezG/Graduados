package graduado.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.entities.Expdest;
import graduado.entities.Experiencia;
import graduado.model.ExpdestDao;
import graduado.model.ExperienciaDao;

/**
 * Servlet implementation class AdVideoController
 */
@WebServlet("/AdVideoController")
public class AdVideoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdVideoController() {
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
		Expdest ed = new Expdest();
		
		String iddest = request.getParameter("posexpdest");
		String linkdest = request.getParameter("expnombre");
		
		ExperienciaDao xDao = new ExperienciaDao();
		Experiencia x = xDao.find(linkdest);
		
		ed.setIdDest(iddest);
		ed.setExperiencia(x);
		
		ExpdestDao edDao = new ExpdestDao();
		edDao.update(ed);
		
		RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
		rd.forward(request, response);
		
	}

}
