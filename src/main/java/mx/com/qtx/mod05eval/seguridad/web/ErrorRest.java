package mx.com.qtx.mod05eval.seguridad.web;

import jakarta.ws.rs.WebApplicationException;
import jakarta.ws.rs.core.Response;
import jakarta.ws.rs.core.Response.ResponseBuilder;

public class ErrorRest {
	public static final int ERR_RECURSO_INEXISTENTE = 9000;
	public static final int ERR_AUTENTICACION_FALLIDA = 9001;
	
	
	private String descripcion;
	private int codigoError;
	
	public ErrorRest(String descripcion, int codigoError) {
		super();
		this.descripcion = descripcion;
		this.codigoError = codigoError;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public int getCodigoError() {
		return codigoError;
	}
	public void setCodigoError(int codigoError) {
		this.codigoError = codigoError;
	}
	@Override
	public String toString() {
		return "ErrorRest [descripcion=" + descripcion + ", codigoError=" + codigoError + "]";
	}	
	public static WebApplicationException getError(String causa, int codError, Response.Status status) {
		ResponseBuilder responseBuilder = Response.status(status)
		                                          .entity(new ErrorRest(causa, codError));
		WebApplicationException wax = new WebApplicationException(responseBuilder.build());	
		return wax;
	}
}
