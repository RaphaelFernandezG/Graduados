package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Noticia database table.
 * 
 */
@Entity
@NamedQuery(name="Noticia.findAll", query="SELECT n FROM Noticia n")
public class Noticia implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String ciudad;

	private String descripcion;

	private String fecha;

	private String lugar;

	//bi-directional one-to-one association to Notide
	@OneToOne(mappedBy="noticia")
	private Notide notide;

	public Noticia() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getFecha() {
		return this.fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}

	public String getLugar() {
		return this.lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public Notide getNotide() {
		return this.notide;
	}

	public void setNotide(Notide notide) {
		this.notide = notide;
	}

}