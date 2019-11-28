package graduado.model;

import graduado.entities.Eventoprin;
import graduado.util.Conexion;

public class EventoprinDao extends Conexion<Eventoprin> implements GenericDao<Eventoprin> {
	
	public EventoprinDao() {
		super(Eventoprin.class);
	}}