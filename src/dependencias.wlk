import vehiculos.*

class Dependencia {
	var flota = []
	var property cantEmpleados
	
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
}
