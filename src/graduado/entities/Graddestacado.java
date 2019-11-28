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
	private String numdocum;

	private String descripcion;

	private String titulo;

	//bi-directional one-to-one association to Graduado
	@OneToOne
	@JoinColumn(name="numdocum")
	private Graduado graduado;

	public Graddestacado() {
	}

	public String getNumdocum() {
		return this.numdocum;
	}

	public void setNumdocum(String numdocum) {
		this.numdocum = numdocum;
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