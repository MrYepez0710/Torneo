package com.torneo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.torneo.dto.Jugador;

public interface JugadorDAO  extends JpaRepository<Jugador, Long>{

}
