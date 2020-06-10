package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Notides database table.
 * 
 */
@Entity
@Table(name="Notides")
@NamedQuery(name="Notide.findAll", query="SELECT n FROM Notide n")
public class Notide implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_nd")
	private String idNd;

	private String titular;

	//bi-directional many-to-one association to Noticia
	@ManyToOne
	@JoinColumn(name="id_notides")
	private Noticia noticia;

	public Notide() {
	}

	public String getIdNd() {
		return this.idNd;
	}

	public void setIdNd(String idNd) {
		this.idNd = idNd;
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