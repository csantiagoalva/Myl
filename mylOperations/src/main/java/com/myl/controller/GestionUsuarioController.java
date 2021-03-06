package com.myl.controller;

import java.util.List;

import javax.inject.Named;

import org.apache.struts2.interceptor.validation.SkipValidation;

import com.myl.modelo.Usuario;
import com.myl.negocio.GenericBs;
import com.myl.negocio.UsuarioNegocio;
import com.myl.util.IssueMail;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Named
public class GestionUsuarioController extends ActionSupport implements
		ModelDriven<Usuario> {

	private static final long serialVersionUID = 1L;

	private Integer idSel;

	private Usuario model = null;
	private Usuario usuario;
	private UsuarioNegocio usuarioNegocio;

	private GenericBs genericBs;
	private List<Usuario> usuarios;
	private IssueMail mailSender;

	public String index(){
		
		usuarios=genericBs.findAll(Usuario.class);
		
		return "index";
	}
	
	
	@SkipValidation
	public String editNew() {

		return "editNew";
	}

	public void validateCreate() {

	}
	
	public String create() {
		
		return SUCCESS;
	}

	public String edit() {

		return "edit";
	}

	public void validateUpdate() {

	}
	
	public String update() {
		
		return SUCCESS;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public Integer getIdSel() {
		return idSel;
	}

	public void setIdSel(Integer idSel) {
		this.idSel = idSel;
		if (idSel != null) {
			model = usuarioNegocio.findById(idSel);
		}
	}

	@Override
	public Usuario getModel() {
		if (model == null) {
			model = new Usuario();
		}
		return model;
	}

	public void setModel(Usuario model) {
		this.model = model;
	}


	public IssueMail getMailSender() {
		return mailSender;
	}

	public void setMailSender(IssueMail mailSender) {
		this.mailSender = mailSender;
	}


	public UsuarioNegocio getUsuarioNegocio() {
		return usuarioNegocio;
	}


	public void setUsuarioNegocio(UsuarioNegocio usuarioNegocio) {
		this.usuarioNegocio = usuarioNegocio;
	}


	public List<Usuario> getUsuarios() {
		return usuarios;
	}


	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}


	public GenericBs getGenericBs() {
		return genericBs;
	}


	public void setGenericBs(GenericBs genericBs) {
		this.genericBs = genericBs;
	}

}
