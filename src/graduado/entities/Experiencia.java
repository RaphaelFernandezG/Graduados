package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Experiencia database table.
 * 
 */
@Entity
@NamedQuery(name="Experiencia.findAll", query="SELECT e FROM Experiencia e")
public class Experiencia implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String link;

	private String descripcion;

	//bi-directional many-to-one association to Expdest
	@OneToMany(mappedBy="experiencia")
	private List<Expdest> expdests;

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

	public List<Expdest> getExpdests() {
		return this.expdests;
	}

	public void setExpdests(List<Expdest> expdests) {
		this.expdests = expdests;
	}

	public Expdest addExpdest(Expdest expdest) {
		getExpdests().add(expdest);
		expdest.setExperiencia(this);

		return expdest;
	}

	public Expdest removeExpdest(Expdest expdest) {
		getExpdests().remove(expdest);
		expdest.setExperiencia(null);

		return expdest;
	}

	public Graduado getGraduado() {
		return this.graduado;
	}

	public void setGraduado(Graduado graduado) {
		this.graduado = graduado;
	}

}