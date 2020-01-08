package com.torneo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.torneo.dao.EquipoDAO;
import com.torneo.dto.Equipos;
import com.torneo.dto.Torneo;

@Service
public class EquipoService {

	@Autowired
	private EquipoDAO equipoDao;
	
	public Equipos guardarEquipo(Equipos equipoDTO){
		System.out.println("EquipoService::guardarEquipo");
        return equipoDao.saveAndFlush(equipoDTO);
    }
	
	public List<Equipos> listarEquipoPorTorneo(int id){
		System.out.println("EquipoService::listarEquipoPorTorneo");
        return equipoDao.listarEquiposPorTorneo(id);
    }
	
	public List<Equipos> listarEquipos(){
		System.out.println("EquipoService::listarEquipos");
        return equipoDao.findAll();
    }
	
}
