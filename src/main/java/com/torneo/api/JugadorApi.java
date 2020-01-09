package com.torneo.api;

import javax.validation.Valid;

import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.torneo.dto.Jugador;
import com.torneo.http.JugadorRequest;
import com.torneo.http.JugadorResponse;
import com.torneo.service.JugadorService;

@RestController
public class JugadorApi {
	
	@Autowired
	private JugadorService jugadorService;
	
	@Autowired
	private Mapper mapper;
	
	@RequestMapping(value="/registrarJugador", method=RequestMethod.POST)
	public JugadorResponse registrarJugador(@RequestBody @Valid JugadorRequest torneoRequest){
		System.out.println("JugadorApi::registrarJugador");
		Jugador player = jugadorService.registrarJugador(mapper.map(torneoRequest, Jugador.class)); 
		return mapper.map(player, JugadorResponse.class);
	}
	
	@RequestMapping(value="/ingresoJugador", method=RequestMethod.POST)
	public JugadorResponse ingresoJugador(@RequestBody @Valid JugadorRequest torneoRequest){
		System.out.println("JugadorApi::ingresoJugador");
		Jugador player = jugadorService.ingresoJugador(mapper.map(torneoRequest, Jugador.class)); 
		return mapper.map(player, JugadorResponse.class);
	}

}
