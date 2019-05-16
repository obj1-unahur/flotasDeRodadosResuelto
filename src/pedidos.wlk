class Pedido {
	var property distancia = 0
	var property tiempoMaximo = 0
	var property pasajerosATransportar = 0
	var property coloresIncompatibles = []
	
	method velocidadRequerida() { return distancia / tiempoMaximo }
	
	method loPuedeSatisfacer(vehiculo) {
		return vehiculo.velocidadMaxima() >= self.velocidadRequerida() + 10 
			and vehiculo.capacidad() >= pasajerosATransportar
			and not coloresIncompatibles.contains(vehiculo.color()) 
	}	
	
	method acelerar() { tiempoMaximo -= 1 }
	method relajar() { tiempoMaximo += 1 }
}
