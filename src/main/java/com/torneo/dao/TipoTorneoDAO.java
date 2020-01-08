package com.torneo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.torneo.dto.TipoTorneo;

public interface TipoTorneoDAO  extends JpaRepository<TipoTorneo, Long>{

}
