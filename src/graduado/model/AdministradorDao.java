package graduado.model;

import graduado.entities.Administrador;
import graduado.util.Conexion;

public class AdministradorDao 
	extends Conexion<Administrador> 
	implements GenericDao<Administrador> {

	public AdministradorDao() {
		super(Administrador.class);
	}
}
