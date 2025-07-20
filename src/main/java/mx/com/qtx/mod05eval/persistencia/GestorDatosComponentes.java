package mx.com.qtx.mod05eval.persistencia;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.List;

import mx.com.qtx.mod05eval.persistencia.DAO.ComponenteDAO;
import mx.com.qtx.mod05eval.persistencia.DTO.ComponenteDTO;

public class GestorDatosComponentes {

	private IComponenteDAO gestorComponenteDAO = new ComponenteDAO();

	public GestorDatosComponentes() {
		super();
	}

	public ComponenteDTO agregarComponenteSimpleADB(String id, String descripcion, String marca, String modelo,
			BigDecimal costo, BigDecimal precioBase, String tipo) {
		int resultIns = 0;

		ComponenteDTO compDTO = new ComponenteDTO();
		compDTO.setDescripcion(descripcion);
		compDTO.setMarca(marca);
		compDTO.setModelo(modelo);
		compDTO.setCosto(costo);
		compDTO.setPrecioBase(precioBase);
		compDTO.setTipo(tipo);
		compDTO.setSku(id);

		try {
			resultIns = gestorComponenteDAO.insertar(compDTO);
			System.out.println("Componente insertado con el id: " + resultIns);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return compDTO;
	}
	
	public ComponenteDTO obtenerComponenteXid(int id) {
		ComponenteDTO compI = null;
		try {
			compI = gestorComponenteDAO.buscarPorId(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return compI;
	}

	public List<ComponenteDTO> listarComponentes() {

		List<ComponenteDTO> listaComponentes = null;

		try {
			listaComponentes = gestorComponenteDAO.listarComponentes();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listaComponentes;
	}

	public List<ComponenteDTO> listarComponentesXTipo(String tipo) {

		List<ComponenteDTO> listaComponentes = null;

		try {
			listaComponentes = gestorComponenteDAO.listarComponentesXTipo(tipo);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listaComponentes;
	}
}
