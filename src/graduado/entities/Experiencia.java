package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the experiencia database table.
 * 
 */
@Entity
@Table(name="experiencia")
@NamedQuery(name="Experiencia.findAll", query="SELECT e FROM Experiencia e")
public class Experiencia implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String link;

	private String descripcion;

	//bi-directional many-to-one association to Graduado
	@ManyToOne
	@JoinColumn(name="numdocum")
	private Graduado graduado;

	public Experiencia() {
	}

	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Graduado getGraduado() {
		return this.graduado;
	}

	public void setGraduado(Graduado graduado) {
		this.graduado = graduado;
	}

}