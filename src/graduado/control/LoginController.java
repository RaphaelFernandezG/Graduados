package graduado.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.entities.Administrador;
import graduado.model.AdministradorDao;
import net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Assigner.Dispatcher;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		Administrador admin = new Administrador();
		AdministradorDao adminDao = new AdministradorDao();

		String text = request.getParameter("text");
		String pass = request.getParameter("password");
		String id = "0";

		admin.setUser(text);
		admin.setPassword(pass);
		admin.setIdAdmin(id);

		Administrador x = adminDao.find(admin.getIdAdmin());

		if (admin.getPassword().equals(x.getPassword()) && admin.getUser().equals(x.getUser())) {
			request.setAttribute("info", "Inicio de sesión correcto");
			request.getRequestDispatcher("admin.jsp").forward(request, response);
		} else {
			request.setAttribute("info", "Inicio de sesión incorrecto");
			request.getRequestDispatcher("loginfail.jsp").forward(request, response);
		}

	}

}
