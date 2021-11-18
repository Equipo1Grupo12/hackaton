package co.com.Hackaton.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="persona")
public class Persona {
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name = "nombre",length = 50)
	private String nombre;
	
	@Column(name = "email",length = 50)
	private String email;
	
	@Column(name = "telefono")
	private int telefono;
	
	@Column(name = "edad")
	private int edad;
	
	@Column(name = "password", length = 50)
	private String password;
	
	@Column(name = "usuario", length = 50)
	private String usuario;
}
