package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the graddestacado database table.
 * 
 */
@Entity
@Table(name="graddestacado")
@NamedQuery(name="Graddestacado.findAll", query="SELECT g FROM Graddestacado g")
public class Graddestacado implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String posgraddest;

	private String descripcion;

	private String titulo;

	//bi-directional many-to-one association to Graduado
	@ManyToOne
	@JoinColumn(name="numdocum")
	private Graduado graduado;

	public Graddestacado() {
	}

	public String getPosgraddest() {
		return this.posgraddest;
	}

	public void setPosgraddest(String posgraddest) {
		this.posgraddest = posgraddest;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getTitulo() {
		return this.titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public Graduado getGraduado() {
		return this.graduado;
	}

	public void setGraduado(Graduado graduado) {
		this.graduado = graduado;
	}

}