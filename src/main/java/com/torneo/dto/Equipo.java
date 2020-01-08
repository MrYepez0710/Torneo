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
    private String nombreEquipo;
    private String jugador;
    private byte[]escudo;
    private int idTorneo;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombreEquipo() {
		return nombreEquipo;
	}
	public void setNombreEquipo(String nombreEquipo) {
		this.nombreEquipo = nombreEquipo;
	}
	public String getJugador() {
		return jugador;
	}
	public void setJugador(String jugador) {
		this.jugador = jugador;
	}
	public byte[] getEscudo() {
		return escudo;
	}
	public void setEscudo(byte[] escudo) {
		this.escudo = escudo;
	}
	public int getIdTorneo() {
		return idTorneo;
	}
	public void setIdTorneo(int idTorneo) {
		this.idTorneo = idTorneo;
	}
	
}
