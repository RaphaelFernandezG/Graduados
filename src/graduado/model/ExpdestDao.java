package graduado.model;

import graduado.entities.Expdest;
import graduado.util.Conexion;

public class ExpdestDao 
	extends Conexion<Expdest> 
	implements GenericDao<Expdest> {
	
	public ExpdestDao() {
		super(Expdest.class);
	}
}
