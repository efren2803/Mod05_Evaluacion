package mx.com.qtx.mod05eval.entidades;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import mx.com.qtx.mod05eval.persistencia.GestorDatosComponentes;
import mx.com.qtx.mod05eval.persistencia.DTO.ComponenteDTO;

public class Componente {
	protected String id;
	protected String descripcion;
	protected String marca;
	protected String modelo;
	protected BigDecimal costo;
	protected BigDecimal precioBase;
	protected String tipo;

	private static GestorDatosComponentes gdComponentes = new GestorDatosComponentes();
	
	public Componente() {
		super();
	}

	public Componente(String id, String descripcion, String marca, String modelo, BigDecimal costo,
			BigDecimal precioBase, String tipo) {
		super();
		this.id = id;
		this.descripcion = descripcion;
		this.marca = marca;
		this.modelo = modelo;
		this.costo = costo;
		this.precioBase = precioBase;
		this.tipo = tipo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public BigDecimal getCosto() {
		return costo;
	}

	public void setCosto(BigDecimal costo) {
		this.costo = costo;
	}

	public BigDecimal getPrecioBase() {
		return precioBase;
	}

	public void setPrecioBase(BigDecimal precioBase) {
		this.precioBase = precioBase;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public void mostrarCaracteristicas() {
		System.out.println("ID: " + id);
		System.out.println("Descripción: " + descripcion);
		System.out.println("Marca: " + marca);
		System.out.println("Modelo: " + modelo);
		System.out.println("Costo: $" + costo);
		System.out.println("Precio Base: $" + precioBase);
		System.out.println("Utilidad: " + this.calcularUtilidad());
	}

	public BigDecimal calcularUtilidad() {
		return precioBase.subtract(costo);
	}

	public static Componente crearComponenteSimple(String id, String descripcion, String marca, String modelo,
			BigDecimal costo, BigDecimal precioBase, String tipo) {

		ComponenteDTO resultComponenteDTO;
		Componente resultComp = null;

		try {
			resultComponenteDTO = gdComponentes.agregarComponenteSimpleADB(id, descripcion, marca, modelo, costo,
					precioBase, tipo);
			
			resultComp = new Componente(String.valueOf(resultComponenteDTO.getIdComponente()),
					resultComponenteDTO.getDescripcion(),
					resultComponenteDTO.getMarca(),
					resultComponenteDTO.getModelo(),
					resultComponenteDTO.getCosto(),
					resultComponenteDTO.getPrecioBase(),
					resultComponenteDTO.getTipo());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return resultComp;
	}
	
	public static Componente convertirAComponenteSimple(ComponenteDTO compDTO) {
		Componente resultComp = null;

		try {
			resultComp = new Componente(String.valueOf(compDTO.getIdComponente()),
					compDTO.getDescripcion(),
					compDTO.getMarca(),
					compDTO.getModelo(),
					compDTO.getCosto(),
					compDTO.getPrecioBase(),
					compDTO.getTipo());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return resultComp;
	}
	
	public List<Componente> listarComponentes(){
		List<ComponenteDTO> resultListaCompDTO = null;
		List<Componente> resultListaComp = new ArrayList<Componente>();
		Componente compI = null;
		try {
			resultListaCompDTO = gdComponentes.listarComponentes();
			
			for (ComponenteDTO compDTO : resultListaCompDTO) {
				compI = convertirAComponenteSimple(compDTO);
				resultListaComp.add(compI);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return resultListaComp;
	}
	
	public List<Componente> listarComponentesXTipo(String tipo){
		List<ComponenteDTO> resultListaCompDTO = null;
		List<Componente> resultListaComp = new ArrayList<Componente>();
		Componente compI = null;
		try {
			resultListaCompDTO = gdComponentes.listarComponentesXTipo(tipo);
			
			for (ComponenteDTO compDTO : resultListaCompDTO) {
				compI = convertirAComponenteSimple(compDTO);
				resultListaComp.add(compI);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return resultListaComp;
	}
}
