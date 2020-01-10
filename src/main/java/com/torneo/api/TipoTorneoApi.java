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

import com.torneo.dto.TipoTorneo;
import com.torneo.http.TipoTorneoRequest;
import com.torneo.http.TipoTorneoResponse;
import com.torneo.service.TipoTorneoService;

@RestController
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST})
public class TipoTorneoApi {
	
	@Autowired
	private TipoTorneoService tipoTorneoService;

	@Autowired
	private Mapper mapper;
	
	@RequestMapping(value="/registrarTipoTorneo", method=RequestMethod.POST)
	public TipoTorneo registrarTipoTorneo(@RequestBody @Valid TipoTorneoRequest request) {
		System.out.println("TipoTorneoApi::registrarTipoTorneo");
		return tipoTorneoService.crearTipoTorneo(mapper.map(request, TipoTorneo.class));
	}
	
	@RequestMapping(value="/listarTipoTorneo", method=RequestMethod.GET)
	public List<TipoTorneoResponse> listarTipoTorneo(){
		System.out.println("TipoTorneoApi::listarTipoTorneo");
		List<TipoTorneo>listado = tipoTorneoService.listarTipoTorneo();
		
		List<TipoTorneoResponse>listadoTipoTorneoResponse = new ArrayList<>();
		for(TipoTorneo tp : listado) {
			listadoTipoTorneoResponse.add(mapper.map(tp, TipoTorneoResponse.class));
		}
		return listadoTipoTorneoResponse;
	}
}
