package graduado.model;

import graduado.entities.Evento;
import graduado.util.Conexion;

public class EventoDao extends Conexion<Evento> implements GenericDao<Evento> {
	
	public EventoDao() {
		super(Evento.class);
	}
}
