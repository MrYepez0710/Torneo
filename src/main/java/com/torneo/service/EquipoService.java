package com.torneo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.torneo.dao.EquipoDAO;
import com.torneo.dto.Equipo;
import com.torneo.dto.Torneo;

@Service
public class EquipoService {

	@Autowired
	private EquipoDAO equipoDao;
	
	public Equipo guardarEquipo(Equipo equipoDTO){
		System.out.println("EquipoService::guardarEquipo");
        return equipoDao.saveAndFlush(equipoDTO);
    }
	
	public List<Equipo> listarEquipoPorTorneo(int id){
		System.out.println("EquipoService::listarEquipoPorTorneo");
        return equipoDao.listarEquiposPorTorneo(id);
    }
	
	public List<Equipo> listarEquipos(){
		System.out.println("EquipoService::listarEquipoPorTorneo");
        return equipoDao.findAll();
    }
	
}
