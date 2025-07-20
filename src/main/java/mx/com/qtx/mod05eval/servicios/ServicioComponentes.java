package mx.com.qtx.mod05eval.servicios;

import java.util.List;

import org.springframework.stereotype.Service;

import mx.com.qtx.mod05eval.defServicios.IServicioComponentes;
import mx.com.qtx.mod05eval.entidades.Componente;

@Service
public class ServicioComponentes implements IServicioComponentes {

	Componente comp = new Componente();
	
	public ServicioComponentes() {
		super();
	}

	@Override
	public List<Componente> getListarComponentes() {
		return comp.listarComponentes();
	}

	@Override
	public List<Componente> getListarComponentesXTipo(String tipoComponente) {
		return comp.listarComponentesXTipo(tipoComponente);
	}

}
