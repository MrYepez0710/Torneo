package com.torneo.api;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.torneo.dto.Equipo;
import com.torneo.http.EquipoRequest;
import com.torneo.http.EquipoResponse;
import com.torneo.service.EquipoService;

@RestController
public class EquipoAPi {

	@Autowired
	private EquipoService equipoService;
	
	@Autowired
	private Mapper mapper;
	
	@RequestMapping(value="/NuevoEquipo", method=RequestMethod.POST)
	public EquipoResponse registrarEquipoEnTorneo(@RequestBody @Valid EquipoRequest equipoRequest){
		System.out.println("EquipoAPi::registrarEquipoEnTorneo");
		Equipo equipo = mapper.map(equipoRequest, Equipo.class);
		Equipo equipoAlmacenado = equipoService.guardarEquipo(equipo);
		EquipoResponse equipoResponse = mapper.map(equipoAlmacenado, EquipoResponse.class); 
	    return equipoResponse;
	}
	
	@RequestMapping(value="/listaEquiposTorneo", method=RequestMethod.POST)
	public List<EquipoResponse> listarEquiposPorTorneo(@RequestBody int idTorneo){
		System.out.println("EquipoAPi::listarEquiposPorTorneo");
	    List<Equipo> listadoEquipos = equipoService.listarEquipoPorTorneo(idTorneo);
	    
	    List<EquipoResponse> listadoEquiposRespopnse = new ArrayList<>();
	    for(Equipo e : listadoEquipos) {
	    	listadoEquiposRespopnse.add(mapper.map(e, EquipoResponse.class));
	    }
	    return listadoEquiposRespopnse;
	}
	
	@RequestMapping(value="/listaEquipos", method=RequestMethod.GET)
	public List<EquipoResponse> listarEquipos(){
		System.out.println("EquipoAPi::listarEquiposPorTorneo");
	    List<Equipo> listadoEquipos = equipoService.listarEquipos();
	    
	    List<EquipoResponse> listadoEquiposRespopnse = new ArrayList<>();
	    for(Equipo e : listadoEquipos) {
	    	listadoEquiposRespopnse.add(mapper.map(e, EquipoResponse.class));
	    }
	    return listadoEquiposRespopnse;
	}
	
}
