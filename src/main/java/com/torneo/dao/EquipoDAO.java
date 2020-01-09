package com.torneo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.torneo.dto.Equipo;

public interface EquipoDAO extends JpaRepository<Equipo, Long>{

	@Query(value="SELECT * FROM equipos WHERE id_torneo = :id", nativeQuery = true)
	public List<Equipo>listarEquiposPorTorneo(int id);
	
}
