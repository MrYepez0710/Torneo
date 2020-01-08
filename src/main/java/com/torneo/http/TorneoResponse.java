package com.torneo.http;

public class TorneoResponse {

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
