package graduado.model;

import graduado.entities.Ofertala;
import graduado.util.Conexion;

public class OfertalabDao extends Conexion<Ofertala> implements GenericDao<Ofertala> {
	
	public OfertalabDao() {
		super(Ofertala.class);
	}
}
