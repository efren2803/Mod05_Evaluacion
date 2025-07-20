package mx.com.qtx.mod05eval.entidades;

import java.math.BigDecimal;

public abstract class ComponenteSimple extends Componente {

	public ComponenteSimple(String id, String descripcion, String marca, String modelo, BigDecimal costo,
			BigDecimal precioBase, String tipo) {
		super(id, descripcion, marca, modelo, costo, precioBase, tipo);
	}
}