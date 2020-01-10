package com.torneo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.torneo.dao.TipoTorneoDAO;
import com.torneo.dto.TipoTorneo;

@Service
public class TipoTorneoService {
	
	@Autowired
	private TipoTorneoDAO tipoTorneoDao;
	
	public TipoTorneo crearTipoTorneo(TipoTorneo dto) {
		System.out.println("TipoTorneoService::crearTipoTorneo");
		return tipoTorneoDao.saveAndFlush(dto);
	}
	
	public List<TipoTorneo>listarTipoTorneo(){
		System.out.println("TipoTorneoService::listarTipoTorneo");
		return tipoTorneoDao.findAll();
	}

}
