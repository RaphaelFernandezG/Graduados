package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the evento database table.
 * 
 */
@Entity
@Table(name="evento")
@NamedQuery(name="Evento.findAll", query="SELECT e FROM Evento e")
public class Evento implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String ciudad;

	private String fechafin;

	private String fechaini;

	private String lugar;

	private String nombre;

	//bi-directional one-to-one association to Eventoprin
	@OneToOne(mappedBy="evento")
	private Eventoprin eventoprin;

	public Evento() {
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

	public String getFechafin() {
		return this.fechafin;
	}

	public void setFechafin(String fechafin) {
		this.fechafin = fechafin;
	}

	public String getFechaini() {
		return this.fechaini;
	}

	public void setFechaini(String fechaini) {
		this.fechaini = fechaini;
	}

	public String getLugar() {
		return this.lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Eventoprin getEventoprin() {
		return this.eventoprin;
	}

	public void setEventoprin(Eventoprin eventoprin) {
		this.eventoprin = eventoprin;
	}

}