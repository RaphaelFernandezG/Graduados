package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the expdest database table.
 * 
 */
@Entity
@Table(name="expdest")
@NamedQuery(name="Expdest.findAll", query="SELECT e FROM Expdest e")
public class Expdest implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_expdest")
	private String idExpdest;

	@Column(name="link_expdest")
	private String linkExpdest;

	//bi-directional one-to-one association to Experiencia
	@OneToOne
	@JoinColumn(name="id_expdest")
	private Experiencia experiencia;

	public Expdest() {
	}

	public String getIdExpdest() {
		return this.idExpdest;
	}

	public void setIdExpdest(String idExpdest) {
		this.idExpdest = idExpdest;
	}

	public String getLinkExpdest() {
		return this.linkExpdest;
	}

	public void setLinkExpdest(String linkExpdest) {
		this.linkExpdest = linkExpdest;
	}

	public Experiencia getExperiencia() {
		return this.experiencia;
	}

	public void setExperiencia(Experiencia experiencia) {
		this.experiencia = experiencia;
	}

}