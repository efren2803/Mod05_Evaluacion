package mx.com.qtx.mod05eval.persistencia;

import java.sql.SQLException;
import java.util.List;

import mx.com.qtx.mod05eval.persistencia.DTO.*;

public interface IComponenteDAO {
	List<ComponenteDTO> listarComponentes() throws SQLException;
	List<ComponenteDTO> listarComponentesXTipo(String tipoComponente) throws SQLException;
	int insertar(ComponenteDTO componente) throws SQLException;
	ComponenteDTO buscarPorSku(String Sku) throws SQLException;
    ComponenteDTO buscarPorId(int idComponente) throws SQLException;
    void actualizar(ComponenteDTO componente) throws SQLException;
    void eliminar(int idComponente) throws SQLException;
}
