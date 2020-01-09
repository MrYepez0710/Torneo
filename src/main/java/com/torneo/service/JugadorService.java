package com.torneo.service;

import org.springframework.stereotype.Service;

import com.torneo.dao.JugadorDAO;
import com.torneo.dto.Jugador;

@Service
public class JugadorService {

	private JugadorDAO jugadorDao;
	
	public Jugador registrarJugador(Jugador dto) {
		System.out.println("JugadorService::registrarJugador");
		return jugadorDao.saveAndFlush(dto);
	}
	
	public Jugador ingresoJugador(Jugador dto) {
		System.out.println("JugadorService::ingresoJugador");
		Jugador player = jugadorDao.consultarJugador(dto.getUsuario());
		if(player.getContraseña().equals(dto.getContraseña()))
			return player;
		else
			return null;
	}
	
}
