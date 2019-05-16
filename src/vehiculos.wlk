object trafic {
	var property interior = comodo
	var property motor = pulenta
	
	method peso() {
		return 4000 + interior.peso() + motor.peso()
	}
}

object comodo {
	method peso() { return 700 }
	method capacidad() { return 5 }
}

object popular {
	method peso() { return 1000 }
	method capacidad() { return 12 }
}

object pulenta {
	method peso() { return 800 }
	method velocidadMaxima() { return 130 }
}

object bataton {
	method peso() { return 500 }
	method velocidadMaxima() { return 80 }
}

object extranio {
	var property amiguito = null
	method peso() { return amiguito.peso() * 2 }
	method velocidadMaxima() { return 100 }
}

object pepe { 
	method peso() { return 75 } 
}

object juan {
	method peso() { return 80 } 
}


class Corsa {
	var property color
	method capacidad() { return 4 }
	method velocidadMaxima() = 150
	method peso() { return 1300 }
}

class Kwid {
	var tanque = false
	method ponerTanque() { tanque = true }
	method sacarTanque() { tanque = false }
	method capacidad() { if (tanque) { return 3 } else { return 4 } }
	method velocidadMaxima() { if (tanque) { return 120 } else { return 110 } }
	method peso() { if (tanque) { return 1350 } else { return 1200 } }
	method color() { return "azul" }
}

class AutoEspecial {
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
}

