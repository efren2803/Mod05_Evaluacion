package mx.com.qtx.mod05eval.seguridad.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import mx.com.qtx.mod05eval.seguridad.entidades.Autenticacion;
import mx.com.qtx.mod05eval.seguridad.entidades.TokenJWT;
import mx.com.qtx.mod05eval.seguridad.core.IResultadoOperacion;
import mx.com.qtx.mod05eval.seguridad.core.IServicioAutenticacionJWT;

@Path("autenticacion")
public class AutenticacionRest {
	
	@Autowired
	private IServicioAutenticacionJWT servAutenticacion;
	
	private static Logger bitacora = LoggerFactory.getLogger(AutenticacionRest.class);
	 
	public AutenticacionRest() {
		bitacora.info("***** Se ha instanciado el EndPoint de Autenticación");
	}
	
	public IServicioAutenticacionJWT getServAutenticacion() {
		return servAutenticacion;
	}
	
	public void setServAutenticacion(IServicioAutenticacionJWT servAutenticacion) {
		this.servAutenticacion = servAutenticacion;
	}
	
	/**
	 * Atender solicitud de Autenticacion: Post /autenticacion
	 * @param aut
	 * objeto que deserializa objeto JSon
	 * @return TokenJWT a usar en peticiones subsecuentes
	 */
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public TokenJWT registrarAutenticacion(Autenticacion aut) {
		bitacora.info("registrarAutenticacion(" + aut + ")");
		IResultadoOperacion resultado = this.servAutenticacion.registrarAutenticación(aut);
		if(resultado.todoOk())
			return (TokenJWT) resultado.getObjResultadoOk();
		
		throw ErrorRest.getError(resultado.getResumenErrores(), 
				                 ErrorRest.ERR_AUTENTICACION_FALLIDA, 
				                 Response.Status.UNAUTHORIZED);

	}
	
}
