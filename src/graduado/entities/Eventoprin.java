package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the eventoprin database table.
 * 
 */
@Entity
@Table(name="eventoprin")
@NamedQuery(name="Eventoprin.findAll", query="SELECT e FROM Eventoprin e")
public class Eventoprin implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String descripcion;

	//bi-directional many-to-one association to Evento
	@ManyToOne
	@JoinColumn(name="id_eveprin")
	private Evento evento;

	public Eventoprin() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Evento getEvento() {
		return this.evento;
	}

	public void setEvento(Evento evento) {
		this.evento = evento;
	}

}