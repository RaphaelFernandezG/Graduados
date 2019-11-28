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
	@Column(name="id_dest")
	private String idDest;

	@Column(name="link_dest")
	private String linkDest;

	public Expdest() {
	}

	public String getIdDest() {
		return this.idDest;
	}

	public void setIdDest(String idDest) {
		this.idDest = idDest;
	}

	public String getLinkDest() {
		return this.linkDest;
	}

	public void setLinkDest(String linkDest) {
		this.linkDest = linkDest;
	}

}