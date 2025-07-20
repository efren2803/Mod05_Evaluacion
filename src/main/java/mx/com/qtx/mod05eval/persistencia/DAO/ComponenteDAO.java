package mx.com.qtx.mod05eval.persistencia.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import mx.com.qtx.mod05eval.persistencia.DatabaseConnector_MySQL;
import mx.com.qtx.mod05eval.persistencia.IComponenteDAO;
import mx.com.qtx.mod05eval.persistencia.DTO.ComponenteDTO;

public class ComponenteDAO implements IComponenteDAO {
	private Connection conexion;

	public ComponenteDAO() {
		try {
			this.conexion = DatabaseConnector_MySQL.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public int insertar(ComponenteDTO componente) throws SQLException {
		String sql = "INSERT INTO Componente (description, marca, modelo, costo, precioBase, tipo, memoriaTarjetaVideo, capacidadAlmacenamiento, sku) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try (PreparedStatement stmt = conexion.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
			stmt.setString(1, componente.getDescripcion());
			stmt.setString(2, componente.getMarca());
			stmt.setString(3, componente.getModelo());
			stmt.setBigDecimal(4, componente.getCosto());
			stmt.setBigDecimal(5, componente.getPrecioBase());
			stmt.setString(6, componente.getTipo());
			stmt.setString(7, componente.getMemoriaTarjetaVideo());
			stmt.setString(8, componente.getCapacidadAlmacenamiento());
			stmt.setString(9, componente.getSku());

			stmt.executeUpdate();
			try (ResultSet rs = stmt.getGeneratedKeys()) {
				if (rs.next())
					return rs.getInt(1);
			}
		}
		return -1;
	}

	@Override
	public ComponenteDTO buscarPorId(int idComponente) throws SQLException {
		String sql = "SELECT * FROM Componente WHERE idComponente = ?";
		ComponenteDTO componente = new ComponenteDTO();

		try (PreparedStatement ps = conexion.prepareStatement(sql)) {
			ps.setInt(1, idComponente);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				componente.setIdComponente(rs.getInt("idComponente"));
				componente.setDescripcion(rs.getString("descripcion"));
				componente.setMarca(rs.getString("marca"));
				componente.setModelo(rs.getString("modelo"));
				componente.setCosto(rs.getBigDecimal("costo"));
				componente.setPrecioBase(rs.getBigDecimal("precioBase"));
				componente.setTipo(rs.getString("tipo"));
				componente.setMemoriaTarjetaVideo(rs.getString("memoriaTarjetaVideo"));
				componente.setCapacidadAlmacenamiento(rs.getString("capacidadAlmacenamiento"));
				componente.setSku(rs.getString("sku"));
			}
		}
		return componente;
	}

	@Override
	public ComponenteDTO buscarPorSku(String Sku) throws SQLException {
		String sql = "SELECT * FROM Componente WHERE sku = ?";
		ComponenteDTO componente = new ComponenteDTO();

		try (PreparedStatement ps = conexion.prepareStatement(sql)) {
			ps.setString(1, Sku);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				componente.setIdComponente(rs.getInt("idComponente"));
				componente.setDescripcion(rs.getString("description"));
				componente.setMarca(rs.getString("marca"));
				componente.setModelo(rs.getString("modelo"));
				componente.setCosto(rs.getBigDecimal("costo"));
				componente.setPrecioBase(rs.getBigDecimal("precioBase"));
				componente.setTipo(rs.getString("tipo"));
				componente.setMemoriaTarjetaVideo(rs.getString("memoriaTarjetaVideo"));
				componente.setCapacidadAlmacenamiento(rs.getString("capacidadAlmacenamiento"));
				componente.setSku(rs.getString("sku"));
			}
		}
		return componente;
	}

	@Override
	public void actualizar(ComponenteDTO componente) throws SQLException {
		String sql = "UPDATE Componente SET descripcion=?, marca=?, modelo=?, costo=?, precioBase=?, tipo=?, "
				+ "memoriaTarjetaVideo=?, capacidadAlmacenamiento=?, sku=? WHERE idComponente=?";

		try (PreparedStatement ps = conexion.prepareStatement(sql)) {
			ps.setString(1, componente.getDescripcion());
			ps.setString(2, componente.getMarca());
			ps.setString(3, componente.getModelo());
			ps.setBigDecimal(4, componente.getCosto());
			ps.setBigDecimal(5, componente.getPrecioBase());
			ps.setString(6, componente.getTipo());

			if ("Tarjeta Video".equals(componente.getTipo())) {
				ps.setString(7, componente.getMemoriaTarjetaVideo());
				ps.setNull(8, Types.VARCHAR);
			} else if ("Disco Duro".equals(componente.getTipo())) {
				ps.setNull(7, Types.VARCHAR);
				ps.setString(8, componente.getCapacidadAlmacenamiento());
			} else {
				ps.setNull(7, Types.VARCHAR);
				ps.setNull(8, Types.VARCHAR);
			}
			ps.setString(9, componente.getSku());

			ps.setInt(10, componente.getIdComponente());
			ps.executeUpdate();
		}
	}

	@Override
	public void eliminar(int idComponente) throws SQLException {
		String sql = "DELETE FROM Componente WHERE idComponente = ?";
		try (PreparedStatement ps = conexion.prepareStatement(sql)) {
			ps.setInt(1, idComponente);
			ps.executeUpdate();
		}
	}

	@Override
	public List<ComponenteDTO> listarComponentes() throws SQLException {
		List<ComponenteDTO> listaComponentes = new ArrayList<ComponenteDTO>();

		String sql = "SELECT * FROM Componente";
		try (PreparedStatement ps = conexion.prepareStatement(sql)) {

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ComponenteDTO componente = new ComponenteDTO();
				
				componente.setIdComponente(rs.getInt("idComponente"));
				componente.setDescripcion(rs.getString("description"));
				componente.setMarca(rs.getString("marca"));
				componente.setModelo(rs.getString("modelo"));
				componente.setCosto(rs.getBigDecimal("costo"));
				componente.setPrecioBase(rs.getBigDecimal("precioBase"));
				componente.setTipo(rs.getString("tipo"));
				componente.setMemoriaTarjetaVideo(rs.getString("memoriaTarjetaVideo"));
				componente.setCapacidadAlmacenamiento(rs.getString("capacidadAlmacenamiento"));
				componente.setSku(rs.getString("sku"));

				listaComponentes.add(componente);
			}
		}
		return listaComponentes;
	}

	@Override
	public List<ComponenteDTO> listarComponentesXTipo(String tipoCompomente) throws SQLException {
		List<ComponenteDTO> listaComponentes = new ArrayList<ComponenteDTO>();
		
		String sql = "SELECT * FROM Componente";
		try (PreparedStatement ps = conexion.prepareStatement(sql)) {
			ps.setString(1, tipoCompomente);
			ResultSet rs = ps.executeQuery();

			while (!rs.next()) {
				ComponenteDTO componente = new ComponenteDTO();
				
				componente.setIdComponente(rs.getInt("idComponente"));
				componente.setDescripcion(rs.getString("description"));
				componente.setMarca(rs.getString("marca"));
				componente.setModelo(rs.getString("modelo"));
				componente.setCosto(rs.getBigDecimal("costo"));
				componente.setPrecioBase(rs.getBigDecimal("precioBase"));
				componente.setTipo(rs.getString("tipo"));
				componente.setMemoriaTarjetaVideo(rs.getString("memoriaTarjetaVideo"));
				componente.setCapacidadAlmacenamiento(rs.getString("capacidadAlmacenamiento"));
				componente.setSku(rs.getString("sku"));

				listaComponentes.add(componente);

			}
		}
		return listaComponentes;
	}
}
