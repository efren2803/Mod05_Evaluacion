package mx.com.qtx.mod05eval;

import org.glassfish.jersey.server.ResourceConfig;
import org.springframework.context.annotation.Configuration;

import mx.com.qtx.mod05eval.seguridad.web.AutenticacionRest;
import mx.com.qtx.mod05eval.web.api.jaxrs.ComponentesRest;
import mx.com.qtx.mod05eval.web.api.jaxrs.CorsFilter;

@Configuration
public class ConfiguracionJersey extends ResourceConfig {
	public ConfiguracionJersey() {
		this.register(ComponentesRest.class);
		this.register(AutenticacionRest.class);
		this.register(CorsFilter.class);
	}
}
