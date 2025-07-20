package mx.com.qtx.mod05eval.seguridad.web;

import jakarta.servlet.http.HttpServletRequest;

public interface IExtractorTokenJwtPeticionHttp {
	boolean peticionTieneTokenValido(HttpServletRequest request);
	String getNombreUsuario(HttpServletRequest request);
}
