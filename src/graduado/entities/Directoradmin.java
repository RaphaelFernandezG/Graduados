package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the directoradmin database table.
 * 
 */
@Entity
@Table(name="directoradmin")
@NamedQuery(name="Directoradmin.findAll", query="SELECT d FROM Directoradmin d")
public class Directoradmin implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_codigo")
	private String idCodigo;

	private String apellidos;

	private String correo;

	private String nombres;

	public Directoradmin() {
	}

	public String getIdCodigo() {
		return this.idCodigo;
	}

	public void setIdCodigo(String idCodigo) {
		this.idCodigo = idCodigo;
	}

	public String getApellidos() {
		return this.apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getCorreo() {
		return this.correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getNombres() {
		return this.nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

}