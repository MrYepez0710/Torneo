package com.torneo.http;

public class CalendarioRequest{

	private int id;
    private String nroFecha;
    private int equipoLocal;
    private int equipoVisitante;
    private int resultadoLocal;
    private int resultadoVisitante;
    private int idTorneo;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNroFecha() {
		return nroFecha;
	}
	public void setNroFecha(String nroFecha) {
		this.nroFecha = nroFecha;
	}
	public int getEquipoLocal() {
		return equipoLocal;
	}
	public void setEquipoLocal(int equipoLocal) {
		this.equipoLocal = equipoLocal;
	}
	public int getEquipoVisitante() {
		return equipoVisitante;
	}
	public void setEquipoVisitante(int equipoVisitante) {
		this.equipoVisitante = equipoVisitante;
	}
	public int getResultadoLocal() {
		return resultadoLocal;
	}
	public void setResultadoLocal(int resultadoLocal) {
		this.resultadoLocal = resultadoLocal;
	}
	public int getResultadoVisitante() {
		return resultadoVisitante;
	}
	public void setResultadoVisitante(int resultadoVisitante) {
		this.resultadoVisitante = resultadoVisitante;
	}
	public int getIdTorneo() {
		return idTorneo;
	}
	public void setIdTorneo(int idTorneo) {
		this.idTorneo = idTorneo;
	} 
}
