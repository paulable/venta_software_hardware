package com.empresa.proyecto.bean;

public class Trabajador {

	private int cod_trab;
	private String cod_rol;
	private String nro_ruc;
	private String razon_soc;
	private String nom_trab;
	private String ape_trab;
	private String dni_trab;
	private String email_trab;
	private String telf_trab;
	private String dire_trab;
	private String username;
	private String paswoord;
	
	
	public String getNombreCompleto() {
		return nom_trab.concat(" ").concat(ape_trab);
	
	} 
	
	
	
	public int getCod_trab() {
		return cod_trab;
	}
	public void setCod_trab(int cod_trab) {
		this.cod_trab = cod_trab;
	}
	public String getCod_rol() {
		return cod_rol;
	}
	public void setCod_rol(String cod_rol) {
		this.cod_rol = cod_rol;
	}
	public String getNro_ruc() {
		return nro_ruc;
	}
	public void setNro_ruc(String nro_ruc) {
		this.nro_ruc = nro_ruc;
	}
	public String getRazon_soc() {
		return razon_soc;
	}
	public void setRazon_soc(String razon_soc) {
		this.razon_soc = razon_soc;
	}
	public String getNom_trab() {
		return nom_trab;
	}
	public void setNom_trab(String nom_trab) {
		this.nom_trab = nom_trab;
	}
	public String getApe_trab() {
		return ape_trab;
	}
	public void setApe_trab(String ape_trab) {
		this.ape_trab = ape_trab;
	}
	public String getDni_trab() {
		return dni_trab;
	}
	public void setDni_trab(String dni_trab) {
		this.dni_trab = dni_trab;
	}
	public String getEmail_trab() {
		return email_trab;
	}
	public void setEmail_trab(String email_trab) {
		this.email_trab = email_trab;
	}
	public String getTelf_trab() {
		return telf_trab;
	}
	public void setTelf_trab(String telf_trab) {
		this.telf_trab = telf_trab;
	}
	public String getDire_trab() {
		return dire_trab;
	}
	public void setDire_trab(String dire_trab) {
		this.dire_trab = dire_trab;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPaswoord() {
		return paswoord;
	}
	public void setPaswoord(String paswoord) {
		this.paswoord = paswoord;
	}
	
	//PUEDE SER UN CONCAT ENTRE EL NOMBRE Y APELLIDO 
	
	
	
	
	
	
	
	
	
	
}
