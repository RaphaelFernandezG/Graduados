package graduado.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import graduado.entities.Ofertalab;
import graduado.model.OfertalabDao;

/**
 * Servlet implementation class OfertaLabController
 */
@WebServlet("/OfertaLabController")
public class OfertaLabController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OfertaLabController() {
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
		String id = request.getParameter("idofertalab");
		String cargo = request.getParameter("cargo");
		String empresa = request.getParameter("empresa");
		String salario = request.getParameter("salario");
		String descripcion = request.getParameter("descri");
		
		
		Ofertalab olab = new Ofertalab();
		
		olab.setCargo(cargo);
		olab.setDescripcion(descripcion);
		olab.setEmpresa(empresa);
		olab.setId(id);
		olab.setSalario(salario);
		
		OfertalabDao olabDao = new OfertalabDao();
		olabDao.insert(olab);
		RequestDispatcher rd = request.getRequestDispatcher("ofertaslabs.jsp");
		rd.forward(request, response);
		
	
		
		
		
	}

}
