package graduado.model;

import graduado.entities.Noticia;
import graduado.util.Conexion;

public class NoticiaDao extends Conexion<Noticia> implements GenericDao<Noticia> {
	public NoticiaDao() {
		super(Noticia.class);
	}
}
