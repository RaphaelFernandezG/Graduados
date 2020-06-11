package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ofertalab database table.
 * 
 */
@Entity
@NamedQuery(name="Ofertalab.findAll", query="SELECT o FROM Ofertalab o")
public class Ofertalab implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String cargo;

	private String descripcion;

	private String empresa;

	private String salario;

	public Ofertalab() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
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