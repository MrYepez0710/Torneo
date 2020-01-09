package com.torneo.dto;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Participante implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 381616327938197482L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
    private int equipo;
    private int jugador;
    private int idTorneo;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEquipo() {
		return equipo;
	}
	public void setEquipo(int equipo) {
		this.equipo = equipo;
	}
	public int getJugador() {
		return jugador;
	}
	public void setJugador(int jugador) {
		this.jugador = jugador;
	}
	public int getIdTorneo() {
		return idTorneo;
	}
	public void setIdTorneo(int idTorneo) {
		this.idTorneo = idTorneo;
	}
}
