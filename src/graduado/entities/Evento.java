package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Evento database table.
 * 
 */
@Entity
@NamedQuery(name="Evento.findAll", query="SELECT e FROM Evento e")
public class Evento implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_eve")
	private String idEve;

	private String ciudad;

	private String fechafin;

	private String fechaini;

	private String lugar;

	private String nombre;

	//bi-directional many-to-one association to Eventoprin
	@OneToMany(mappedBy="evento")
	private List<Eventoprin> eventoprins;

	public Evento() {
	}

	public String getIdEve() {
		return this.idEve;
	}

	public void setIdEve(String idEve) {
		this.idEve = idEve;
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

	public List<Eventoprin> getEventoprins() {
		return this.eventoprins;
	}

	public void setEventoprins(List<Eventoprin> eventoprins) {
		this.eventoprins = eventoprins;
	}

	public Eventoprin addEventoprin(Eventoprin eventoprin) {
		getEventoprins().add(eventoprin);
		eventoprin.setEvento(this);

		return eventoprin;
	}

	public Eventoprin removeEventoprin(Eventoprin eventoprin) {
		getEventoprins().remove(eventoprin);
		eventoprin.setEvento(null);

		return eventoprin;
	}

}