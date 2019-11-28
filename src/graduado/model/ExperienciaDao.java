package graduado.model;

import graduado.entities.Experiencia;
import graduado.util.Conexion;

public class ExperienciaDao extends Conexion<Experiencia> implements GenericDao<Experiencia> {
	public ExperienciaDao() {
		super(Experiencia.class);
	}
}
