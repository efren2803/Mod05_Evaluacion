package mx.com.qtx.mod05eval.seguridad.core;

import mx.com.qtx.mod05eval.seguridad.entidades.Autenticacion;

public interface IServicioAutenticacionJWT {
	IResultadoOperacion registrarAutenticación(Autenticacion aut);
}
