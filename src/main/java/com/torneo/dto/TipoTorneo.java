package com.torneo.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TipoTorneo implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -948154554604038805L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
    private String nombreTorneo;
    private String descripcion;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombreTorneo() {
		return nombreTorneo;
	}
	public void setNombreTorneo(String nombreTorneo) {
		this.nombreTorneo = nombreTorneo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

}
