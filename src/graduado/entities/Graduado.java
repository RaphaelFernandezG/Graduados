package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the graduado database table.
 * 
 */
@Entity
@NamedQuery(name="Graduado.findAll", query="SELECT g FROM Graduado g")
public class Graduado implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String numdocum;

	private String apellidos;

	private String ciudad;

	private String email;

	private String fechagrad;

	private String nombre;

	private String pais;

	private String telefono;

	//bi-directional many-to-one association to Experiencia
	@OneToMany(mappedBy="graduado")
	private List<Experiencia> experiencias;

	//bi-directional many-to-one association to Graddestacado
	@OneToMany(mappedBy="graduado")
	private List<Graddestacado> graddestacados;

	public Graduado() {
	}

	public String getNumdocum() {
		return this.numdocum;
	}

	public void setNumdocum(String numdocum) {
		this.numdocum = numdocum;
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

	public String getPais() {
		return this.pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
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

	public List<Graddestacado> getGraddestacados() {
		return this.graddestacados;
	}

	public void setGraddestacados(List<Graddestacado> graddestacados) {
		this.graddestacados = graddestacados;
	}

	public Graddestacado addGraddestacado(Graddestacado graddestacado) {
		getGraddestacados().add(graddestacado);
		graddestacado.setGraduado(this);

		return graddestacado;
	}

	public Graddestacado removeGraddestacado(Graddestacado graddestacado) {
		getGraddestacados().remove(graddestacado);
		graddestacado.setGraduado(null);

		return graddestacado;
	}

}