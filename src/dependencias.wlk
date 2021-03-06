import vehiculos.*

class Dependencia {
	var flota = []  // vehiculos
	var property cantEmpleados
	var pedidos = []   // pedidos
	
	method agregarAFlota(rodado) { flota.add(rodado) }
	method quitarDeFlota(rodado) { flota.remove(rodado) }
	method pesoTotalFlota() { return flota.sum({rod => rod.peso()}) }
	
	// este es el que esta bien
	method estaBienEquipada() {
		return flota.size() >= 3 and flota.all({rod => rod.velocidadMaxima() >= 100 })
	}

	method estaBienEquipadaNoTanMal() {
		return flota.count({rod => rod.velocidadMaxima() >= 100 }) >= 3
	}
	
	method capacidadTotalEnColor(col) {
		var flotaNueva = flota.filter({rod => rod.color() == col})
		return flotaNueva.sum({rod => rod.capacidad()})
	}
	
	method colorDelRodadoMasRapido() {
		return flota.max({rod => rod.velocidadMaxima()}).color()
	}
	
	method capacidadFaltante() {
		return cantEmpleados - self.capacidadTotal()
	}
	
	method capacidadTotal() { return flota.sum({rod => rod.capacidad()}) }
	
	method esGrande() { return cantEmpleados >= 40 and flota.size() >= 5 }
	
	/*
	 * Manejo de pedidos
	 */
	 
	method agregarPedido(pedido) { pedidos.add(pedido) }
	method quitarPedido(pedido) { pedidos.remove(pedido) }
	
	method totalPasajerosEnPedidos() {
		return pedidos.sum({ pedido => pedido.pasajerosATransportar() })
	}
	
	method pedidosInsatisfechos() {
		return pedidos.filter({
			pedido => not self.puedeSatisfacerPedido(pedido) 
		})
	}
	
	method puedeSatisfacerPedido(pedido) {
		return flota.any({veh => pedido.loPuedeSatisfacer(veh)})
	}
	
	method esColorRechazado(color) {
		return pedidos.all({
			pedido => pedido.coloresIncompatibles().contains(color)
		})
	}
	
	method relajarTodosLosPedidos() {
		pedidos.forEach({pedido => pedido.relajar()})
	}
}








