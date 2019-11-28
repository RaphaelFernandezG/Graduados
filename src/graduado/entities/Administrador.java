package graduado.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the administrador database table.
 * 
 */
@Entity
@Table(name="administrador")
@NamedQuery(name="Administrador.findAll", query="SELECT a FROM Administrador a")
public class Administrador implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String user;

	private String password;

	public Administrador() {
	}

	public String getUser() {
		return this.user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}