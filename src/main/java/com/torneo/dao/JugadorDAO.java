package com.torneo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.torneo.dto.Jugador;

public interface JugadorDAO  extends JpaRepository<Jugador, Long>{

	@Query(value="SELECT * FROM jugador WHERE usuario=:usuario", nativeQuery=true)
	public Jugador consultarJugador(String usuario);
}
