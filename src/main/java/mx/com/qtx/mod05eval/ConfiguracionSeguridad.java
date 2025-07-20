package mx.com.qtx.mod05eval;

import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.jdbc.JdbcDaoImpl;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import com.zaxxer.hikari.HikariDataSource;

import mx.com.qtx.mod05eval.seguridad.web.FiltroTokensJwt_SS;
import mx.com.qtx.mod05eval.ConfiguracionSeguridad;

@Configuration
@EnableWebSecurity
public class ConfiguracionSeguridad {

	private static Logger bitacora = LoggerFactory.getLogger(ConfiguracionSeguridad.class);
	
	@Bean
    AuthenticationManager publicarAuthenticationManagerDesdeConfiguracion(
        AuthenticationConfiguration authenticationConfiguration) throws Exception {
    	bitacora.trace("publicarAuthenticationManagerDesdeConfiguracion()");
    	AuthenticationManager authenticationManager = authenticationConfiguration.getAuthenticationManager();
    	bitacora.debug("authenticationManager instanciado:" + authenticationManager.getClass().getName());
        return authenticationManager;
    }
	
	@Bean
    UserDetailsService getGestorBdUsuariosPersonalizada(DataSource dataSource) {
                bitacora.trace("getGestorBdUsuariosPersonalizada()");
                HikariDataSource hds = (HikariDataSource) dataSource;
                bitacora.debug("Se ha instanciado data source mysql que apunta a BD:" + hds.getJdbcUrl());
                
            //Se usa una BD Personalizada. Ya debe contener los datos de usuarios y roles
                final String QUERY_DATOS_USUARIO_X_NOMBRE = "SELECT usr_nombre, usr_paswd, usr_habilitado "
                                + "FROM usuario WHERE usr_nombre = ?";

                //Los roles deben estar escritos en los registros de la base de datos con el prefijo "ROLE_"
                //Por ejemplo, ROLE_AGENTE o ROLE_LOGISTICA
                final String QUERY_ROLES_X_USUARIO ="SELECT usr_nombre, aut_nombre "
                                + "FROM usuario, autoridad "
                                + "WHERE usr_nombre = ? "
                                + "AND usr_nombre = aut_nombre_usr";
                
                JdbcDaoImpl gestorBdUsuariosPersonalizada = new JdbcDaoImpl();
                gestorBdUsuariosPersonalizada.setDataSource(dataSource);
                gestorBdUsuariosPersonalizada.setUsersByUsernameQuery(QUERY_DATOS_USUARIO_X_NOMBRE);
                gestorBdUsuariosPersonalizada.setAuthoritiesByUsernameQuery(QUERY_ROLES_X_USUARIO);
                
                return gestorBdUsuariosPersonalizada;
    }
	
	@Bean
	@Order(1)	
	SecurityFilterChain getSecurityFilterChainApiWeb(HttpSecurity http, FiltroTokensJwt_SS filtroJWT) 
			            		throws Exception 
	{
		http
		.cors(cors -> cors.configurationSource(corsConfigurationSource()))
		.securityMatchers(config -> config.requestMatchers("/api/**","/api/autenticacion"))
		.authorizeHttpRequests((authorize) ->  authorize
		     .requestMatchers("/api/autenticacion").permitAll()
		     .requestMatchers("/api/**").hasRole("AGENTE")
		)
		.csrf(config -> config.disable())
		.formLogin(config -> config.disable())
		.logout(config -> config.disable())
	  	.addFilterBefore(filtroJWT, UsernamePasswordAuthenticationFilter.class)
	  	.sessionManagement(config -> config.sessionCreationPolicy(SessionCreationPolicy.STATELESS));
		
		return http.build();
	}
	
	CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowedOrigins(List.of("http://localhost:4200"));
        configuration.setAllowedMethods(List.of("GET", "POST", "PUT", "DELETE", "OPTIONS"));
        configuration.setAllowedHeaders(List.of("*"));
        configuration.setAllowCredentials(true);
        
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", configuration);
        return source;
    }
}
