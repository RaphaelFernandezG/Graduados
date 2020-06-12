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
import graduado.model.NotidestDao;

/**
 * Servlet implementation class AdNoticiaController
 */
@WebServlet("/AdNoticiaController")
public class AdNoticiaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdNoticiaController() {
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
		Notide nd = new Notide();
		
		
		String id_notides = request.getParameter("posnotides");
		String id_noti = request.getParameter("notinombre");
		String titular = request.getParameter("titular");
		
		NoticiaDao nDao = new NoticiaDao();
		Noticia n = nDao.find(id_noti);
		
		nd.setIdNd(id_notides);
		nd.setIdNotides(id_noti);
		nd.setTitular(titular);
		nd.setNoticia(n);
		
		NotidestDao ndDao = new NotidestDao();
		ndDao.update(nd);
		
		RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
		rd.forward(request, response);
		
	}

}
