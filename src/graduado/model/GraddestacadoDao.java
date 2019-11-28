package graduado.model;

import graduado.entities.Graddestacado;
import graduado.util.Conexion;

public class GraddestacadoDao extends Conexion<Graddestacado> implements GenericDao<Graddestacado> {
	public GraddestacadoDao() {
		super(Graddestacado.class);
	}
}
