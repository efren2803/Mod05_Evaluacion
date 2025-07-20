package mx.com.qtx.mod05eval.defServicios;

import java.util.List;

import mx.com.qtx.mod05eval.entidades.Componente;

public interface IServicioComponentes {
	List<Componente> getListarComponentes();
	List<Componente> getListarComponentesXTipo(String tipoComponente);
}
