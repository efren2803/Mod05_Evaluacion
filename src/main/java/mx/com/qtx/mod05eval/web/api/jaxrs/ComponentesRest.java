package mx.com.qtx.mod05eval.web.api.jaxrs;

import static mx.com.qtx.mod05eval.web.api.jaxrs.ErrorRest.getError;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import mx.com.qtx.mod05eval.defServicios.IServicioComponentes;
import mx.com.qtx.mod05eval.entidades.Componente;

@Path("componentes")
public class ComponentesRest {

	@Autowired
	private IServicioComponentes servicioComponentes;
	private static Logger bitacora = LoggerFactory.getLogger(ComponentesRest.class);
	
	public ComponentesRest() {
		super();
	}

	@Path("listar")
	@GET
	@Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
	public List<Componente> getComponentes() {
		
		bitacora.info("getComponentes()");
		List<Componente> componentes = this.servicioComponentes.getListarComponentes();
		if(componentes == null) {
			throw getError("Falló el sistema subyacente", 
					        ErrorRest.ERR_FALLA_SERVICIO, 
					        Response.Status.BAD_REQUEST);
		}
		return componentes;
		
	}
}
