package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the graduado database table.
 * 
 */
@Entity
@Table(name="graduado")
@NamedQuery(name="Graduado.findAll", query="SELECT g FROM Graduado g")
public class Graduado implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String numdocum;

	private String apellidos;

	private String ciudad;

	private String direccion;

	private String email;

	private String fechagrad;

	private String nombre;

	private String telefono;
	
	private String latitud;
	
	private String longitud;

	//bi-directional many-to-one association to Experiencia
	@OneToMany(mappedBy="graduado")
	private List<Experiencia> experiencias;

	//bi-directional one-to-one association to Graddestacado
	@OneToOne(mappedBy="graduado")
	private Graddestacado graddestacado;

	public Graduado() {
	}

	public String getNumdocum() {
		return this.numdocum;
	}

	public void setNumdocum(String numdocum) {
		this.numdocum = numdocum;
	}

	public String getLatitud() {
		return latitud;
	}

	public void setLatitud(String latitud) {
		this.latitud = latitud;
	}

	public String getLongitud() {
		return longitud;
	}

	public void setLongitud(String longitud) {
		this.longitud = longitud;
	}

	public String getApellidos() {
		return this.apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getDireccion() {
		return this.direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFechagrad() {
		return this.fechagrad;
	}

	public void setFechagrad(String fechagrad) {
		this.fechagrad = fechagrad;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public List<Experiencia> getExperiencias() {
		return this.experiencias;
	}

	public void setExperiencias(List<Experiencia> experiencias) {
		this.experiencias = experiencias;
	}

	public Experiencia addExperiencia(Experiencia experiencia) {
		getExperiencias().add(experiencia);
		experiencia.setGraduado(this);

		return experiencia;
	}

	public Experiencia removeExperiencia(Experiencia experiencia) {
		getExperiencias().remove(experiencia);
		experiencia.setGraduado(null);

		return experiencia;
	}

	public Graddestacado getGraddestacado() {
		return this.graddestacado;
	}

	public void setGraddestacado(Graddestacado graddestacado) {
		this.graddestacado = graddestacado;
	}

}