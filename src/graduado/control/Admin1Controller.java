package graduado.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.model.NoticiaDao;
import graduado.model.NotidestDao;
import graduado.entities.Noticia;
import graduado.entities.Notide;

/**
 * Servlet implementation class Admin1Controller
 */
@WebServlet("/Admin1Controller")
public class Admin1Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin1Controller() {
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
		Notide ndes = new Notide();

		String id_nd = request.getParameter("posnotides");
		String id_noti = request.getParameter("notinombre");
		String titular = request.getParameter("titular");

		NoticiaDao nDao = new NoticiaDao();
		Noticia n = nDao.find(id_noti);

		ndes.setIdNd(id_nd);
		ndes.setTitular(titular);
		ndes.setNoticia(n);

		NotidestDao notidesDao = new NotidestDao();
		notidesDao.update(ndes);
		RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
		rd.forward(request, response);
	}

}
