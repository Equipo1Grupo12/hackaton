package co.com.Hackaton.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

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
	
	@Column(name = "descripcion",length = 50) //65535
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getMeta() {
		return meta;
	}

	public void setMeta(int meta) {
		this.meta = meta;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getPatrocinadores() {
		return patrocinadores;
	}

	public void setPatrocinadores(int patrocinadores) {
		this.patrocinadores = patrocinadores;
	}

	public String getYoutube() {
		return youtube;
	}

	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getTwitter() {
		return twitter;
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}

	public String getInstagram() {
		return instagram;
	}

	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}

	public String getOtros() {
		return otros;
	}

	public void setOtros(String otros) {
		this.otros = otros;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public String getContacto() {
		return contacto;
	}

	public void setContacto(String contacto) {
		this.contacto = contacto;
	}
	
	
}
