package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Administrador database table.
 * 
 */
@Entity
@TableGenerator(name="administrador")
@NamedQuery(name="Administrador.findAll", query="SELECT a FROM Administrador a")
public class Administrador implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="id_admin")
	private String idAdmin;

	private String password;

	private String user;

	public Administrador() {
	}

	public String getIdAdmin() {
		return this.idAdmin;
	}

	public void setIdAdmin(String idAdmin) {
		this.idAdmin = idAdmin;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUser() {
		return this.user;
	}

	public void setUser(String user) {
		this.user = user;
	}

}