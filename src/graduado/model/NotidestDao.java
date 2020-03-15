package graduado.model;

import graduado.entities.Notidest;
import graduado.util.Conexion;

public class NotidestDao extends Conexion<Notidest> implements GenericDao<Notidest> {
	
	public NotidestDao() {
		super(Notidest.class);
	}
}
