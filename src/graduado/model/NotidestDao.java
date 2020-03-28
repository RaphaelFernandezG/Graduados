package graduado.model;

import graduado.entities.Notide;
import graduado.util.Conexion;

public class NotidestDao extends Conexion<Notide> implements GenericDao<Notide> {
	
	public NotidestDao() {
		super(Notide.class);
	}
}
