package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ofertala database table.
 * 
 */
@Entity
@Table(name="ofertala")
@NamedQuery(name="Ofertala.findAll", query="SELECT o FROM Ofertala o")
public class Ofertala implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_ofertalab")
	private String idOfertalab;

	private String cargo;

	private String descripcion;

	private String empresa;

	private String salario;

	public Ofertala() {
	}

	public String getIdOfertalab() {
		return this.idOfertalab;
	}

	public void setIdOfertalab(String idOfertalab) {
		this.idOfertalab = idOfertalab;
	}

	public String getCargo() {
		return this.cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getEmpresa() {
		return this.empresa;
	}

	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}

	public String getSalario() {
		return this.salario;
	}

	public void setSalario(String salario) {
		this.salario = salario;
	}

}