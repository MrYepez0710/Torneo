package com.torneo.http;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class TorneoRequest {

	@NotNull(message="El campo id es requerido")
	private int id;
	
	@NotNull(message="El campo nombreTorneo es requerido")
	@Size(min=5, max=50, message="El nombre del torneo debe tener entre {min} y {max} caracteres")
    private String nombreTorneo;
	
	@NotNull(message="El campo tipoTorneo es requerido")
    private int tipoTorneo;
	
	@NotNull(message="El campo cantidadEquipos es requerido")
    private int cantidadEquipos;
	
	private int estado;
	
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

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}
    
}
