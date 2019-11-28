package graduado.model;

import graduado.entities.Notide;
import graduado.util.Conexion;

public class NotideDao extends Conexion<Notide> implements GenericDao<Notide> {
	public NotideDao() {
		super(Notide.class);
	}
}
