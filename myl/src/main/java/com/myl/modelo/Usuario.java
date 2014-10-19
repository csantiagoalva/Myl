package com.myl.modelo;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.annotation.XmlID;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.adapters.XmlJavaTypeAdapter;

import com.myl.util.IntegerAdapter;


@XmlRootElement
@Entity
@Table(name = "Usuario")
public class Usuario {

	private Integer idUsuario;
	private String login;
	private String password;
	private Integer deckPred;
	
	private String email;
	private Date fhRegistro;
	private Date fhLastSession;
	private Integer idPais;
	
	private Boolean tieneDeck;	
	private List<Deck> decks;
		
	
	@XmlID
	@XmlJavaTypeAdapter(IntegerAdapter.class)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "UsuarioId")
	public Integer getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(Integer idUsuario) {
		this.idUsuario = idUsuario;
	}
	
	@Column(name = "UsuarioNb")
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	
	@Column(name = "UsuarioPs")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name = "UsuarioDk")
	public Integer getDeckPred() {
		return deckPred;
	}
	public void setDeckPred(Integer deckPred) {
		this.deckPred = deckPred;
	}
	
	@XmlTransient
	@OneToMany(mappedBy = "usuario")
	public List<Deck> getDecks() {
		return decks;
	}
	public void setDecks(List<Deck> decks) {
		this.decks = decks;
	}
	
	@Transient
	public Boolean getTieneDeck() {
		return tieneDeck;
	}
	public void setTieneDeck(Boolean tieneDeck) {
		this.tieneDeck = tieneDeck;
	}
	
	@Column(name = "UsuarioEm")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "Fh_registro")
	public Date getFhRegistro() {
		return fhRegistro;
	}
	public void setFhRegistro(Date fhRegistro) {
		this.fhRegistro = fhRegistro;
	}
	
	@Column(name = "Fh_last")
	public Date getFhLastSession() {
		return fhLastSession;
	}
	public void setFhLastSession(Date fhLastSession) {
		this.fhLastSession = fhLastSession;
	}
	
	@Column(name = "id_pais")
	public Integer getIdPais() {
		return idPais;
	}
	public void setIdPais(Integer idPais) {
		this.idPais = idPais;
	}
	
}
