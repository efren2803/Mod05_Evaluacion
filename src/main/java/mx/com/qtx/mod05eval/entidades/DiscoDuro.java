package mx.com.qtx.mod05eval.entidades;

import java.math.BigDecimal;

public class DiscoDuro extends ComponenteSimple {
	private String capacidadAlm;

	protected DiscoDuro(String id, String descripcion, String marca, String modelo, BigDecimal costo,
			BigDecimal precioBase, String capacidadAlm, String tipo) {
		super(id, descripcion, marca, modelo, costo, precioBase, tipo);
		this.capacidadAlm = capacidadAlm;
	}

	public String getCapacidadAlm() {
		return capacidadAlm;
	}

	public void setCapacidadAlm(String capacidadAlm) {
		this.capacidadAlm = capacidadAlm;
	}

	@Override
	public void mostrarCaracteristicas() {
		super.mostrarCaracteristicas();
        System.out.println("Capacidad almacenamiento: " + this.capacidadAlm);	
	}
}
