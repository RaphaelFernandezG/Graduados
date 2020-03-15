package graduado.model;

import graduado.entities.Graduado;
import graduado.util.Conexion;

public class GraduadoDao extends Conexion<Graduado> implements GenericDao<Graduado> {
	
	public GraduadoDao() {
		super(Graduado.class);
	}
}
