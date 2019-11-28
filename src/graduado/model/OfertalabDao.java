package graduado.model;

import graduado.entities.Ofertalab;
import graduado.util.Conexion;

public class OfertalabDao extends Conexion<Ofertalab> implements GenericDao<Ofertalab> {
	public OfertalabDao() {
		super(Ofertalab.class);
	}
}
