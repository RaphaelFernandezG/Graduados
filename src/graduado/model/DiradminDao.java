package graduado.model;

import graduado.entities.Directoradmin;
import graduado.util.Conexion;

public class DiradminDao 
	extends Conexion<Directoradmin> 
	implements GenericDao<Directoradmin> {

	public DiradminDao() {
		super(Directoradmin.class);
	}
}