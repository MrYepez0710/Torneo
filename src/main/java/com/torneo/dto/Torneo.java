package com.torneo.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Torneo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6168949545897082674L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
    private String nombreTorneo;
    private int tipoTorneo;
    private int cantidadEquipos;
	
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
	
    public int getTipoTorneo() {
		return tipoTorneo;
	}
	
    public void setTipoTorneo(int tipoTorneo) {
		this.tipoTorneo = tipoTorneo;
	}
	
    public int getCantidadEquipos() {
		return cantidadEquipos;
	}
	
    public void setCantidadEquipos(int cantidadEquipos) {
		this.cantidadEquipos = cantidadEquipos;
	}
	
}
