package com.torneo.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Equipo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5301152808467610342L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
    private String nombre;
    private byte[]escudo;
    
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
	public byte[] getEscudo() {
		return escudo;
	}
	public void setEscudo(byte[] escudo) {
		this.escudo = escudo;
	}
}
