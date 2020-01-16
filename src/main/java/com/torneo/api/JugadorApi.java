package com.torneo.api;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.torneo.dto.Jugador;
import com.torneo.dto.TipoTorneo;
import com.torneo.http.JugadorRequest;
import com.torneo.http.JugadorResponse;
import com.torneo.http.TipoTorneoResponse;
import com.torneo.service.JugadorService;


@RestController
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST})
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
	
	@RequestMapping(value="/listarJugadores", method=RequestMethod.GET)
	public List<JugadorResponse> listarJugadores(){
		System.out.println("JugadorApi::ingresoJugador");
		List<Jugador> jugadores = jugadorService.listarJugadores(); 
		
		List<JugadorResponse>listadoJugadoresResponse = new ArrayList<>();
		for(Jugador player : jugadores) {
			listadoJugadoresResponse.add(mapper.map(player, JugadorResponse.class));
		}
		
		return listadoJugadoresResponse;
	}

}
