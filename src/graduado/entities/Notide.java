package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the notides database table.
 * 
 */
@Entity
@Table(name="notides")
@NamedQuery(name="Notide.findAll", query="SELECT n FROM Notide n")
public class Notide implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_notides")
	private String idNotides;

	private String titular;

	//bi-directional one-to-one association to Noticia
	@OneToOne
	@JoinColumn(name="id_notides")
	private Noticia noticia;

	public Notide() {
	}

	public String getIdNotides() {
		return this.idNotides;
	}

	public void setIdNotides(String idNotides) {
		this.idNotides = idNotides;
	}

	public String getTitular() {
		return this.titular;
	}

	public void setTitular(String titular) {
		this.titular = titular;
	}

	public Noticia getNoticia() {
		return this.noticia;
	}

	public void setNoticia(Noticia noticia) {
		this.noticia = noticia;
	}

}