package co.com.Hackaton.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="proyecto")
public class Proyecto {
	
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name = "nombre",length = 50)
	private String nombre;
	
	@Column(name = "tipo",length = 50)
	private String tipo;
	
	@Column(name = "meta")
	private int meta;
	
	@Column(name = "descripcion",length = 65535)
	private String descripcion;
	
	@Column(name="patrocinadores")
	private int patrocinadores;
	
	@Column(name = "youtube",length = 100)
	private String youtube;
	
	@Column(name = "facebook",length = 100)
	private String facebook;
	
	@Column(name = "twitter",length = 100)
	private String twitter;
	
	@Column(name = "instagram",length = 100)
	private String instagram;
	
	@Column(name = "otros",length = 100)
	private String otros;
	
	@Column(name="likes")
	private int likes;
	
	@Column(name = "contacto",length = 50)
	private String contacto;
}
